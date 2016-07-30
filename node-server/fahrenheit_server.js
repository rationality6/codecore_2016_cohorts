var net = require('net');

var server = net.createServer(
    function(socket) {
        socket.on('data', function(data) {
            console.log('Data received:' + data);
            socket.write('Roger, ' + maxium(data.toString()));
        });
    }
);

var maxium = function(array) {
}

console.log(maxium("1,2,3,4,5"));


console.log("Server listenning on 127.0.0.1:5000");
server.listen(5000, "127.0.0.1");
