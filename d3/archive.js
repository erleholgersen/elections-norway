

function distriktsmandat(n, votes, firstDivisor) {
  if(typeof(firstDivisor) === 'undefined') firstDivisor = 1.4;

  var mandater = Array.apply(null, Array(votes.length)).map(Number.prototype.valueOf, 0);

  var divVotes = votes.map(function(x) {
    return x/firstDivisor;
  });


  var maxValue;
  var maxIndex;
  var s; // number of mandater already awarded to party

  // assign mandater
  for( i = 0; i < n; i++ ) {
    maxValue = Math.max.apply(Math, divVotes);
    maxIndex = divVotes.indexOf(maxValue);

    // increase mandat count
    mandater[maxIndex] += 1;

    s = mandater[maxIndex];
    divVotes[maxIndex] = votes[maxIndex]/(2*s - 1);
  }

  return(mandater);
}
