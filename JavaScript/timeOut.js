'use strict'

var l = (data) => console.log(data);

//ANOTHER WAY TO DO IT
// var sleep = function(){
// 	l('It has been 10 seconds');
// };

// setTimeout(sleep, 12000);

function sleep(seconds,callback){
	setTimeout(callback, seconds * 1000);
}

sleep(10, function(){
	l('It has been 10 seconds');
})
