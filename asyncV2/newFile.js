'use strict'

// var fs = require('fs');
// var l = (data) => console.log(data);

// fs.readFile("werther.txt", function(error,content) {
// 	if(error) {
// 		l(error);
// 	}else{
// 		l(content);
// 	}
// });

// fs.readFile("kafka.txt", function(error,content) {
// 	if(error) {
// 		l(error);
// 	}else{
// 		l(content);
// 	}
// });
// fs.readFile("cicero.txt", function(error,content) {
// 	if(error) {
// 		l(error);
// 	}else{
// 		l(content);
// 	}
// });

var nets = require('nets');
var l = (data) => console.log(data);


nets("werther.txt", function(error, response, content) {
	if(error) {
		l("hey somthing went wrong! see:" + error);
	}else{
		l(content.toString());
	}
});

nets("kafka.txt", function(error, response, content) {
	if(error) {
		l("hey somthing went wrong! see:" + error);
	}else{
		l(content.toString());
	}
});

nets("cicero.txt", function(error, response, content) {
	if(error) {
		l("hey somthing went wrong! see:" + error);
	}else{
		l(content.toString());
	}
});

