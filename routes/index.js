var sql = require('msnodesql');
var async = require('async');
var fs = require('fs');
var conn_str = process.env.ConnectionString || "Driver={SQL Server Native Client 11.0};Server=.\\SQLEXPRESS;Database=MamabirdDB;Trusted_Connection={Yes}";


exports.index = function(req, res){
  res.render('index');
};

exports.roster = function(req, res){
  var year;
  var teams;
  var players;
  var coaches;

  async.series([
    function (callback) {
      sql.query(conn_str, "exec Get_Teams", function (err, results) {
        if (err) {
          return callback(err);
        }
        if (results.length == 0) {
          return callback(new Error('No Teams found in DB'));
        }
        //try and get the year out of the url
        year = req.param('year');
        if (!year) {
          //otherwise just take the newest year
          year = results[0].Year;
        }
        teams = results;
        callback();
      });
    },
    function (callback) {
      async.parallel([
        //load players
        function (callback) {
          sql.query(conn_str, 'exec Get_Players ' + year, function (err, results) {
            if (err) {
              return callback(err);
            }
            players = results; 
            callback();
          });
        },
        //load coaches
        function (callback) {
          sql.query(conn_str, 'exec Get_Coaches ' + year, function (err, results) {
            if (err) {
              return callback(err);
            }
            coaches = results; 
            callback();
          });
        }
      ], callback);
    }
  ], function(err) {
    var image = null;
    if (err) {
      res.render('db error');
    }
    else if (fs.existsSync(process.cwd() + '\\public\\images\\teams\\' + year + '.png')) {
      image = '/images/teams/' + year + '.png';
    }
    else if (fs.existsSync(process.cwd() + '\\public\\images\\teams\\' + year + '.jpg')) {
      image = '/images/teams/' + year + '.jpg';
    }
    res.render('roster', {year: year, teams: teams, players: players, coaches: coaches, image: image});
  });
}

exports.schedule = function(req, res){
  var year;
  var teams;
  var tournaments;

  async.series([
    function (callback) {
      sql.query(conn_str, "exec Get_Teams", function (err, results) {
        if (err) {
          return callback(err);
        }
        if (results.length == 0) {
          return callback(new Error('No Teams found in DB'));
        }
        //try and get the year out of the url
        year = req.param('year');
        if (!year) {
          //otherwise just take the newest year
          year = results[0].Year;
        }
        teams = results;
        callback();
      });
    },
    function (callback) {
      sql.query(conn_str, 'exec Get_Tournaments ' + year, function (err, results) {
        if (err) {
          return callback(err);
        }
        if (results.length == 0) {
          return callback();
        }
        //if we have results create an array (tournaments) of arrays (games)
        //to achieve the effect of something similiar to a groupby 
        tournaments = new Array();
        tournaments.push(new Array());
        tournaments[0].push(results[0]);
        var cur = results[0].TournamentName;
        var c = 0;
        for (var i = 1; i < results.length; i++) {
          if (results[i].TournamentName === cur) {
            tournaments[c].push(results[i]);
          }
          else {
            tournaments.push(new Array());
            c++;
            cur = results[i].TournamentName;
            tournaments[c].push(results[i]);
          }
        }
        callback();
      });
    },
  ], function(err) {
    if (err) {
      res.render('db error');
    }
    res.render('schedule', {year: year, teams: teams, tournaments: tournaments});
  });
}

exports.merch= function(req, res){
  res.render('merch');
};

exports.media = function(req, res){
  res.render('media');
};

exports.info = function(req, res){
  res.render('info');
};

exports.player = function(req, res){
  var personId = req.param('id'); 
  sql.query(conn_str, "exec Get_Person " + personId, function (err, results) {
    if (err) {
      res.render('unable to connect to database');
      return;
    }
    else if (fs.existsSync(process.cwd() + '\\public\\images\\players\\' + personId + '.png')) {
      image = '/images/players/' + personId + '.png';
    }
    else if (fs.existsSync(process.cwd() + '\\public\\images\\players\\' + personId + '.jpg')) {
      image = '/images/players/' + personId + '.jpg';
    }
    else {
      image = '/images/yellowbird.png';
    }
    res.render('player', {results: results, image: image});
  });
};


exports.coach = function(req, res){
  var personId = req.param('id'); 
  sql.query(conn_str, "exec Get_Coach " + personId, function (err, results) {
    if (err) {
      res.render('unable to connect to database');
      return;
    }
    else if (fs.existsSync(process.cwd() + '\\public\\images\\players\\' + personId + '.png')) {
      image = '/images/players/' + personId + '.png';
    }
    else if (fs.existsSync(process.cwd() + '\\public\\images\\players\\' + personId + '.jpg')) {
      image = '/images/players/' + personId + '.jpg';
    }
    else {
      image = '/images/yellowbird.png';
    }
    res.render('coach', {results: results, image: image});
  });
};


