
/*
 * GET home page.
 */

exports.index = function(req, res){
  res.render('index');
};

exports.roster = function(req, res){
  res.render('roster');
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

