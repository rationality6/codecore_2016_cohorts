var twoloops = function(i) {
    for (var loop = 0; loop < i; loop++) {
        while (loop === 0) {
            console.log(`${loop}`);
            loop ++
        }
    }
}

twoloops(3)
