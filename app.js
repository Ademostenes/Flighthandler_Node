
const express = require('express');
const userRoutes = require('./public/routes/userRoutes');


const app = express();

app.use(express.json());
app.use('/user',userRoutes);
app.use('/register', userRoutes);
app.use(express.static('public'));

app.get('/', (req, res) => {
    res.sendFile(__dirname + '/public/index.html');
    })

app.get('/inicio', (req, res) => {
        res.sendFile(__dirname + '/public/index.html');
        })

app.get('/vuelos', (req, res) => {
        res.sendFile(__dirname + '/public/vuelos.html');
        })

app.get('/ingreso', (req, res) => {
        res.sendFile(__dirname + '/public/ingreso.html');
        })

app.get('/registro', (req, res) => {
        res.sendFile(__dirname + '/public/registro.html');
        })

app.get('/paquetes', (req, res) => {
       res.sendFile(__dirname + '/public/404.html');
       })

app.get('/paquetes.html', (req, res) => {
       res.sendFile(__dirname + '/public/404.html');
       })





const port = 3000;

app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`);
});

    
