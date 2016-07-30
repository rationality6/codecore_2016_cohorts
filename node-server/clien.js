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

rl.question('Which one is the biggerst?', function(string) {
    console.log("numbers " + string);

    socket.connect(5500, "127.0.0.1", function() {
        socket.write(name);
        socket.end();
    });
    rl.close();
});
