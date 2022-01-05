const express = require('express');
const bodyParser = require('body-parser')
require('./database/config')

const PORT = process.env.PORT || 3001;

const app = express();

app.use(bodyParser.json());



app.get('/', (req, res) => {
    res.send('Bienvenido!')
})

app.get('/mascotas', (req, res) => {
    const sql = 'SELECT * FROM mascota'
    conection.query(sql, (error, results) => {
        if (error) throw error

        if (results.length > 0) {
            res.send(results)
        }else {
            res.send('No hay Mascotas')
        }

    })
    
})



// http://localhost:3001/mascotas

app.listen(PORT, () => console.log('servidor corriendo en el puerto: ', PORT))