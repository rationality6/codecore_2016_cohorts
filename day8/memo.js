var (var key in console) {
    console.log(key)
}

var clone = function(obj) {
    var cloneObj = obj;
    for (var key in obj) {
        cloneObj[key] = obj[key];
    }
    return cloneObj;
}

console.log(obj);
