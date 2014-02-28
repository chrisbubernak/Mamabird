
/*
 * GET home page.
 */

exports.index = function(req, res){
  res.render('index');
};

exports.roster = function(req, res){
  //if year is undefined find the newest team and return its roster
  //else return the roster the roster for the specified team
  var years = [2014, 2013, 2012, 2011, 2010];
  var year = req.param('year') || years[0]; 
  var players = 
    [
      {Name: 'Pawel Janas', Number:8, Year: 'Junior'}, 
      {Name: 'Mark Rauls', Number:0, Year: 'Sophomore'},
      {Name: 'Stanley Peterson', Number: 26, Year: 'Junior'}
    ]; 
  res.render('roster', {year: year, years: years, players: players});
};

exports.schedule = function(req, res){
  res.render('schedule');
};

exports.alumni = function(req, res){
  res.render('alumni');
};

exports.media = function(req, res){
  res.render('media');
};

exports.contact = function(req, res){
  res.render('contact');
};

