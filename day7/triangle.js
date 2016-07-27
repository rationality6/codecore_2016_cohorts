var triangle = new Object();

triangle.calcurating = function() {

    var A = prompt("")
    var B = prompt("")
    var C = prompt("")

    var s = parseInt((A + B + C) / 2);
    var area = Math.sqrt(s * ((s - A) * (s - B) * (s - C)));
    alert("The area of the triangle is " + area);
    console.log(area);
};

triangle.calcurating()
