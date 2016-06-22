// function eat (food) {
// 	console.log("Eating some"+ food);
// }

// if you forget the () JavaScript will work but you do the same in Ruby dont. 
// Because Ruby cares about the arguments, JS doesnt.
// eat("Pizza");


// in ruby
// def eat (food) 
	// puts "Eating some #{food}""
// end 

// eat("Pizza");
// ----------------
//JAVASCRIPT
// for (var i=1; i<=42; i++){
// 	console.log(i)
// }

// var i = 1;

// while (i <= 42){
// 	console.log(i);
// 	i++;
// }

// ----------------------
//JS-BLOCK
//Anonymous
var foods = [ 'pizza', 'cookies', 'bread' ];

// foods.forEach( function (food) {
//     console.log(food);
// }   );
//you can also name the function
//NAMESTYLE
// function logFood(food){
// 	console.log(food)
// }

// foods.forEach(LogFood);

//Ruby-BLOCK

// foods = [ 'pizza', 'cookies', 'bread' ]
// foods.each do |food|
// 	puts food
// end
// ---------
// JS
// var foods = [ 'pizza', 'cookies', 'bread' ];

// var capsFoods = foods.map(function (food) {
//     return food.toUpperCase();
// });

// console.log(capsFoods);
// [ 'PIZZA', 'COOKIES', 'BREAD' ]

// -------
// JS

// var foodMsg = foods.reduce(function (pre, food) {
// 	return pre + " AND " + food;
// 	// body...
// })
//  console.log(foodMsg);

//  // RUBY

//  nums =[ 2, 6, 7, 42]

//  total = nums.reduce do | sum, num |
//  	sum + nums
//  end 


// ---------------

JS

var breadless = food.filter(function(food){
	return food !== "Bread";
})

RUBY

breadless = foods.select do | food |
	food != "Bread"
end

// -------------------









