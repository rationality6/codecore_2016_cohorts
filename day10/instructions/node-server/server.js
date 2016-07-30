var net = require('net');

var server = net.createServer(
    function(socket) {
        socket.on('data', function(data) {
            console.log('Data received:' + data);
            socket.write('Roger, ' + data);
        });
    }
);

console.log("Server listenning on 127.0.0.1:5000");
server.listen(5000, "127.0.0.1");
