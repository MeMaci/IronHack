// var exampleArray = [ "pizza", 
// 					 "hot dog", 
// 					 "pizza",  
// 					 "ice cream", 
// 					 "fish", 
// 					 "steak",  
// 					 "oranges"];

// function findOccurrences(array,wordToLookFor){
// 	var totalOccurrences = 0;

// 	array.forEach(function(word){
// 		if (word ===wordToLookFor){
// 		totalOccurrences++;
// 		}

// 	})
// 	return totalOccurrences;
// }

// var count = findOccurrences(exampleArray, "pizza");
// console.log(count);

var numbers = '80:70:90:100';


function averageColon(nums){
	var array = nums.split(":");

	var total = array.reduce(function(sum, num){
		return parseInt(sum) + parseInt(num);
	})
	return total/array.length;
}

console.log (averageColon(numbers));





