'use strict';
function kaprekar(low, high){
  for(var i = low; i <= high; i++){
    var square = Math.pow(i, 2).toString();
    var left = square.substr(0, (square.length/2));
    var right = square.substr((square.length/2));
    if(parseInt(left) + parseInt(right) === i){
      console.log('found: ' +i);
    }
  }
};

kaprekar(1, 9000);
