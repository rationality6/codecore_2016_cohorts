var net = require('net');
var readline = require('readline');

var rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

var socket = new net.Socket();

socket.on('data', function(data) {
    console.log('Data Received from server: ' + data);
});

rl.question('What is your name?', function(name) {
    console.log("Hello " + name + "!!!");

    socket.connect(5000, "127.0.0.1", function() {
        socket.write(name);
    });
});
