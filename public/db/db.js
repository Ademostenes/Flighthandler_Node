const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'ratata128',
    database: 'flighthandler'
});

connection.connect((err)=> {
    if (err) {
        console.error('La gran puta madre, hay error: ', err);
        return;
    }
    console.log('Conectado correctamente.');
});

module.exports = connection;