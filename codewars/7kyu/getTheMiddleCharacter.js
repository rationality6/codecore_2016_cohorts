function getMiddle(s){
	  return s.substr(Math.ceil(s.length/2-1), s.length%2===0?2:1)
}

console.log(getMiddle("test"));
