const express = require('express');
const app = express();
const http = require("http");
const server = http.createServer(app);
const { Server } = require("socket.io");
const io = new Server(server);

const messages = [];

io.on("connection", (socket) => {
    const username = socket.handshake.query.username;
    console.log("User name ", username);
    socket.on("message", (data) => {
        const message = {
            senderUsername: username,
            message: data.message,
            sentAt: new Date()
        }
        messages.push(message);
        io.emit("message", message);
    })
});

server.listen(3000, () => {
    console.log("Server is running on port 3000");
});