function scrabble(tiles, word) {
  tileDict = tilesFromWord(tiles)
  wordDict = tilesFromWord(word)
  for(wtile in wordDict){
    if(tileDict[wtile] < wordDict[wtile]) { 
      return false 
    }
  }
  return true
}

function tilesFromWord(word){
  dict = Object.create({})
  for(letter of word){
    dict[letter] === undefined ? dict[letter] = 1 : dict[letter] += 1
  }
  return dict
}
/*
 * list of tiles
 * word
 *
 * each letter => dictionary{ letter => # of letters }
 * word tiles => each wordTile check to see that the equivalent in our tiles is greater than or equal
 */

console.log(tilesFromWord('w').w == 1)

console.log(scrabble("ladilmy", "daily") === true)
console.log(scrabble("eerriin", "eerie") === false)
console.log(scrabble("orrpgma", "program") === true)
console.log(scrabble("orppgma", "program") === false)
