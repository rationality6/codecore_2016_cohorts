function anyArrows(arrows){
  return arrows.some(a => !a.damaged);
}

console.log(anyArrows([{range:5}]));
console.log(anyArrows([{range:10,damaged:true}]));

