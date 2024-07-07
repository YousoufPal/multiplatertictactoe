const mongoose = require('mongoose');

const playerSchema = new mongoose.Schema({
    name: {
        type: String,
        trim: true,
    },

    socketID: {
        type: String,
    },

    points: {
        type: Number,
        default: 0,
    },

    playerShape : {
        type: String,
        required: true,
    },
});

module.exports = playerSchema;