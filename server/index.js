const express = require('express');
const http = require('http');
const { default: mongoose } = require('mongoose');

const app = express();
const port = process.env.PORT || 3000;
var server = http.createServer(app);

var io = require('socket.io')(server);

const Database = "mongodb+srv://yousoufpal7:bobdream@cluster0.2jsqimc.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

io.on("connection", (socket) => {
    console.log("Socket connected: " + socket.id)
    socket.on('createRoom', async ({name}) => {
        console.log(name);
    });
}); 

mongoose.connect(Database).then(() => {
    console.log("Database connected");
}).catch((err) => {
    console.log("Error connecting to database");
    console.log(err);
})  


app.use(express.json());

server.listen(port, '0.0.0.0', () => {
    console.log(`Server running on port ${port}`);
    });