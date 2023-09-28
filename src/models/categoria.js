const { DataTypes } = require('sequelize');
const sequelize = require('../conection/connection');

const Categoria = sequelize.define('Categoria', {
    id_categoria: {
        type: DataTypes.DECIMAL,
        primaryKey: true,
        autoIncrement: false,
    },
    descripcion: {
        type: DataTypes.STRING,
        allowNull: false,
    }
}, {
    tableName: 'categoria',
    timestamps: false,
});

module.exports = Categoria;