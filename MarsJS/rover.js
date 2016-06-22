
var planet = [
              [ , , , , , , , , , , ],
              [ , , , , , , , , , , ],
              [ , , , , , , , , , , ],
              [ , , , , , , , , , , ],
              [ , , , , , , , , , , ],
              [ , , , , , , , , , , ],
              [ , , , , , , , , , , ],
              [ , , , , , , , , , , ],
              [ , , , , , , , , , , ],
              [ , , , , , , , , , , ], 
              [ , , , , , , , , , , ]          
];

// THIS IS ANOTHER WAY TO CREATE THE GRID
// ---------------------
// var planet = new Array(10);
// for (var i = 0; i < 11; i++) {
//   planet[i] = new Array(10);
// }


var myRover = {
  position: [0, 0], 
  direction: 'f'

};

var mySecondRover = {
  position: [10,10],
  direction: 'b'
};

function goForward( rover, command ) {
  var move = command.split('');

  for ( var i=0; i < move.length; i++){
    var letter = move[i];
    var y = rover.position[0];
    var x = rover.position[1];


      switch(letter) {
        case 'f':
          if ( rover.position[0] > 0 && planet[y + 1][x] !== 'obstacle' ){
            rover.position[0]-- 
          }

          break;
        case 'b':
          if ( rover.position[0] < 10 && planet[y - 1][x] !== 'obstacle' ){
            rover.position[0]++
          }

          break;
        case 'r':
          if ( rover.position[1] < 10 && planet[y][x+1] !== 'obstacle' ){
            rover.position[1]++
          }

          break;
        case 'l':
          if ( rover.position[1] > 0 && planet[y][x-1] === undefined ){
            rover.position[1]-- 
          }

          break;
    }
  }
}

planet[1][0] = 'obstacle'
planet[0][3] = 'obstacle'

goForward( myRover, "fff" );
// console.log( myRover.position );
planet[myRover.position[0]][myRover.position[1]] = 'ROVER'
// goForward( mySecondRover, "llrrff");
console.log( mySecondRover);
console.log( planet );










