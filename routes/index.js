
/*
 * GET home page.
 */

exports.index = function(req, res){
  res.render('index');
};

var sql = require('msnodesql');
var fs = require('fs');
var conn_str = process.env.ConnectionString || "Driver={SQL Server Native Client 11.0};Server=.\\SQLEXPRESS;Database=MamabirdDB;Trusted_Connection={Yes}";

exports.roster = function(req, res){
  sql.query(conn_str, "exec Get_Teams", function (err, results) {
    if (err) {
      res.render('unable to connect to database1');
      return;
    }
    var teams = results;
    //if year is undefined find the newest team and return its roster
    //else return the roster the roster for the specified team
    var year = req.param('year') || teams[0].Year; 
    sql.query(conn_str, "exec Get_Players " + year, function (err, results) {
      if (err) {
        res.render('unable to connect to database');
        return;
      }
      res.render('roster', {year: year, teams: teams, players: results});
    });
  });
};

exports.schedule = function(req, res){
  res.render('schedule');
};

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


