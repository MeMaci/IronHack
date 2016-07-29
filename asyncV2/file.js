'use strict'

var fs = require('fs') ;
var l = (data) => console.log(data) ;

var werther = fs.readFileSync("werther.tx");
l(werther);

var kafka = fs.readFileSync("kafka.txt");
l(kafka);

var cicero = fs.readFileSync("cicero.txt");
l(cicero);