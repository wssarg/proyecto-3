const express = require("express")
const router = express.Router()

const { Categoria } = require("../models/index")

/** Ver las categorias */
router.get("/", async (req, res, next) => {

    //let options = { attributes: ["Name", "Price"], include: Categories }
    // let where = {}
    // let order = []
    // const order = await Orders.findOne({ 
    //     where: {ID: req.params.id},
    //     include: { model: Products, attributes: ["Name", "Price"], through: { attributes: [] } }
    // })

    try {
        const categoria = await Categoria.findAll()

        res.status(200).send(categoria);
    } catch (err) {
        res.status(500)
        next(err)
    }
})

/** Ver la categoria */
router.get("/:id_categoria", async (req, res, next) => {

    try {
        const categoria = await Categoria.findByPk(req.params.id_categoria);
        if (!categoria) {
            return res.status(404).send({ message: "Categoria no encontrada." })
        }

        res.status(200).send(categoria);
    } catch (err) {
        res.status(500)
        next(err)
    }
})


/** Insert de categoria */
router.post("/", async (req, res) => {
    const { descripcion } = req.body

    //console.log(req.body);
    if (!descripcion) {
        return res.status(403).send({ message: "Debes ingresar una Descripcion en JSON." })
    }

    try {
        const id_categoria = await Categoria.max("id_categoria") + 1;

        const newCategoria = await Categoria.create({ id_categoria, descripcion })
        res.status(201).send(newCategoria);
    } catch (err) {
        return res.status(500).send(err)
    }
})

/** Update de categoria */
router.put("/:id_categoria", async (req, res) => {
    await Categoria.update(req.body, { where: { id_categoria: req.params.id_categoria } })
    const categoria = await Categoria.findByPk(req.params.id_categoria)
    //console.log(categoria)
    res.status(200).send(categoria);
})

/** Delete de categoria */
router.delete("/:id_categoria", async (req, res) => {
    const id_categoria = req.params.id_categoria;

    if (id_categoria in ([1, 2, '1', '2'])) {
        return res.status(403).send({ message: "No puedes borrar la categoria 1 o 2." })
    }

    const categoria = await Categoria.findByPk(id_categoria);
    if (!categoria) {
        return res.status(404).send({ message: "Categoria no encontrada." })
    }

    await Categoria.destroy({ where: { id_categoria: id_categoria } })
    res.status(200).send({ message: `La categoria: ${id_categoria} fue eliminado con éxito.` });
})

module.exports = router;
