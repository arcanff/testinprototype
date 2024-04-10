// HOMEPAGE //
import express from 'express';
import axios from 'axios';
import fetch from 'node-fetch';
import Swal from 'sweetalert2';



const router = express.Router();

router.get('/', (req, res) => {
    res.render('reporte');
});


router.get('/bodega', async (req, res) => {
    try {
        const response = await fetch('http://localhost:3000/api/pro');
        const datos = await response.json();
        res.render('bodega', { datos });
    } catch (error) {
        console.error(error);
        res.redirect('/error');
    }
});


router.post('/validar', async (req, res) => {
    try {
        const datos = req.body;

        // Validar el formulario antes de enviar
        // const formularioValido = await validarFormulario(datos);

        // if (!formularioValido) {
        //     // Si el formulario no es válido, no continuar con la creación del producto
        //     return;
        // }

        // Obtener la fecha actual en el formato deseado
        const obtenerFechaActual = () => {
            const ahora = new Date();
            const anio = ahora.getFullYear();
            let mes = ahora.getMonth() + 1;
            mes = mes < 10 ? '0' + mes : mes;
            let dia = ahora.getDate();
            dia = dia < 10 ? '0' + dia : dia;
            let horas = ahora.getHours();
            horas = horas < 10 ? '0' + horas : horas;
            let minutos = ahora.getMinutes();
            minutos = minutos < 10 ? '0' + minutos : minutos;
            let segundos = ahora.getSeconds();
            segundos = segundos < 10 ? '0' + segundos : segundos;
            return `${anio}-${mes}-${dia} ${horas}:${minutos}:${segundos}`;
        };

        // Crear un nuevo producto con la fecha actual
        const newProduct = {
            nombre: datos.nombre,
            producto_inicial: datos.p_inicial,
            numero_pedido: datos.n_pedido,
            cantidad: datos.cantidad,
            medida: datos.medida,
            estado: datos.estado,
            producto_final: datos.p_final,
            fecha: obtenerFechaActual() // Obtener la fecha actual
        };

        // Realizar la solicitud POST al servidor API con el nuevo producto
        const response = await axios.post('http://localhost:3000/api/pro', newProduct);

        console.log('Producto creado correctamente:', response.data);
        // Mostrar una notificación de éxito si el producto se crea correctamente

        res.sendStatus(200); // O puedes enviar cualquier otro código de estado que desees
    } catch (error) {
        console.error(error);
        res.sendStatus(500); // Envía un código de estado de error si ocurre algún problema
    }
});

export default router;
