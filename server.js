require('dotenv').config();
var express = require('express');
var bodyParser = require('body-parser')
var mongoose = require('mongoose');
var app = express();
var http = require('http').Server(app);
var io = require('socket.io')(http);
var axios = require('axios');

var Message = mongoose.model('Message', { name: String, message: String })

app.use(express.static(__dirname));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }))

app.get('/messages', (req, res) => {
    Message.find({}, (err, messages) => {
        res.send(messages);
    })
})

app.post('/messages', async (req, res) => {

    var message = new Message(req.body);

    message.save((err) => {
        if (err) sendStatus(500);
        io.emit('message', req.body);
        // res.sendStatus(200);
    })

    if (req.body.message === 'dolar' || 'dólar') {
        console.log('CAIU AQUI')
        let response = await axios('http://economia.awesomeapi.com.br/json/last/USD-BRL');
        let dolarPrice = parseFloat(response.data.USDBRL.high).toFixed(2);
        const body = {
            name: 'Dolar price bot',
            message: `Dolar price in BRL: ${dolarPrice}`
        }
        message = new Message(body);
        message.save((err) => {
            if (err) sendStatus(500);
            io.emit('message', body);

        })
    }

    res.sendStatus(200);

})

io.on('connection', () => {
    console.log('a user is connected')
})

mongoose.connect(process.env.MONGO_DB_URL, (err) => {
    console.log('mongodb connected', err);
})

var server = http.listen(3000, () => {
    console.log('server is running on port', server.address().port);
});