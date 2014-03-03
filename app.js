
/**
 * Module dependencies.
 */

var express = require('express');
var routes = require('./routes');
var http = require('http');
var path = require('path');
var app = express();
var Poet = require('poet');

var poet = Poet(app, {
  posts: './_posts/',
  postsPerPage: 5,
  metaFormat: 'json'
});

poet.addRoute('/myposts/:post', function (req, res, next) {
  var post = poet.helpers.getPost(req.params.post);
  console.log(req.params)
  if (post) {
    // Do some fancy logging here
    res.render('post', { post: post });
  } else {
    res.send(404);
  }
}).init();


// all environments
app.set('port', process.env.PORT || 3000);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');
app.use(express.favicon(__dirname + '/public/images/bird.ico'));
app.use(express.logger('dev'));
app.use(express.json());
app.use(express.urlencoded());
app.use(express.methodOverride());
app.use(app.router);
app.use(require('stylus').middleware(path.join(__dirname, 'public')));
app.use(express.static(path.join(__dirname, 'public')));

// development only
if ('development' == app.get('env')) {
  app.use(express.errorHandler());
}

//app.get('/', routes.index);
app.get('/', function (req, res) { res.render('index'); });
app.get('/roster', routes.roster);
app.get('/schedule', routes.schedule);
app.get('/merch', routes.merch);
app.get('/media', routes.media);
app.get('/contact', routes.contact);


http.createServer(app).listen(app.get('port'), function(){
  console.log('Express server listening on port ' + app.get('port'));
});

