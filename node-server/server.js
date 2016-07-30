// var net = require('net');
//
// var server = net.createServer(
//     function(socket) {
//         socket.on('data', function(data) {
//             console.log('Data received:' + data);
//             socket.write('Roger, ' + maxium(data.toString()));
//         });
//     }
// );

var maxium = function(array) {
    array_data = array.split(",")
    console.log(array_data);
    // max = 0
    // for (var i = 0; i < array_data.length; i++) {
    //     if (max < array_data[i]) {
    //         max = array_data[i]
    //     }
    // }
    // return max
}

console.log(maxium("1,2,3,4,5"));


// console.log("Server listenning on 127.0.0.1:5000");
// server.listen(5000, "127.0.0.1");
