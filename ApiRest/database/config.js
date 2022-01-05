const mysql = require('mysql2');

//mysql

const conection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'mascotas&mascotas'
});

// check connect

conection.connect(error => {
    if (error) throw error

    console.log('Conectado a la base de datos!')
})

module.exports = conection