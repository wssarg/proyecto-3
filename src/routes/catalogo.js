const express = require("express")
const router = express.Router()

const { Op } = require("sequelize")
const { Vista_tp3, Catalogo, Categoria } = require("../models/index")

/** Select del catalogo */
router.get("/", async (req, res, next) => {

    try {
        const catalogo = await Vista_tp3.findAll();

        /** Otra opcion de modigicar un dato que ya viene en la vista, yo lo modifique en el modelo pero tambien podria ser */
        /** poster
        const catalogo_aux = catalogo[0].map((entry) => ({
            ...entry,
            poster: `${process.env.BASE_URL}${entry.poster}`,
        }));
        */

        res.status(200).send(catalogo);
    } catch (err) {
        res.status(500)
        next(err)
    }
})

/** Select de 1 pelicula */
router.get("/:id_catalogo", async (req, res, next) => {

    const id_catalogo = req.params.id_catalogo;

    if (Number.isNaN(Number(id_catalogo))) {
        res.status(400).send({ message: "El ID tiene que ser un número" })
        return
    }

    try {
        const catalogo = await Vista_tp3.findByPk(id_catalogo);

        //console.log(catalogo)
        if (!catalogo) {
            res.status(404)
            next({ message: "El ID no se encontró" })
            return
        }

        res.status(200).send(catalogo);
    } catch (err) {
        res.status(500)
        next(err)
    }
})

/** Select por nombre */
router.get("/nombre/:nombre", async (req, res, next) => {

    const nombre = req.params.nombre;


    // Es un numero?
    if (!Number.isNaN(Number(nombre))) {
        res.status(404)
        next({ message: "El dato tiene que ser una cadena." })
        return
    }

    //let options = { attributes: ["Name", "Price"], include: Categories }
    let where = {
        where: {
            titulo: {
                [Op.substring]: nombre
            }
        }
    }
    // let order = []

    try {
        const catalogo = await Vista_tp3.findAll(where);

        //console.log(catalogo)
        if (!catalogo) {
            res.status(404)
            next({ message: "El nombre no se encontró" })
            return
        }

        if (!catalogo[0]) {
            res.status(404)
            next({ message: "La busqueda no arrojo resultados." })
            return
        }

        res.status(200).send(catalogo);
    } catch (err) {
        res.status(500)
        next(err)
    }
})

/** Select por genero */
router.get("/genero/:genero", async (req, res, next) => {

    const genero = req.params.genero;


    // Es un numero?
    if (!Number.isNaN(Number(genero))) {
        res.status(404)
        next({ message: "El dato tiene que ser una cadena." })
        return
    }

    //const options = { attributes: ["Name", "Price"], include: Categories }
    const where = {
        where: {
            genero: {
                [Op.substring]: genero
            }
        }
    }
    //const order = []

    try {
        const catalogo = await Vista_tp3.findAll(where);

        //console.log(catalogo)
        if (!catalogo) {
            res.status(404)
            next({ message: "No se encontraron peliculas para el genero." })
            return
        }

        if (!catalogo[0]) {
            res.status(404)
            next({ message: "No hay peliculas para el genero." })
            return
        }

        res.status(200).send(catalogo);
    } catch (err) {
        res.status(500)
        next(err)
    }
})

/** Select de categoria muestra todas las peliculas con categoria indicada */
router.get("/categoria/:categoria", async (req, res, next) => {

    const categoria = req.params.categoria;

    // Es un numero?
    if (!Number.isNaN(Number(categoria))) {
        res.status(404)
        next({ message: "El dato tiene que ser una cadena." })
        return
    }

    //const options = { attributes: ["Name", "Price"], include: Categories }
    const where = {
        where: {
            categoria: {
                [Op.substring]: categoria
            }
        }
    }
    //const order = []

    try {
        const catalogo = await Vista_tp3.findAll(where);

        //console.log(catalogo)
        if (!catalogo) {
            res.status(404)
            next({ message: "La categoria no se encontró." })
            return
        }

        if (!catalogo[0]) {
            res.status(404)
            next({ message: "No se encontro catalogo para la categoria." })
            return
        }

        res.status(200).send(catalogo);
    } catch (err) {
        res.status(500)
        next(err)
    }
})


module.exports = router;
