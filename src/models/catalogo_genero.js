const { DataTypes } = require('sequelize');
const sequelize = require('../conection/connection');

const Catalogo_Genero = sequelize.define('Catalogo_Genero', {
    id_catalogo_genero: {
        type: DataTypes.DECIMAL,
        primaryKey: true,
        autoIncrement: false,
    },
    id_catalogo: {
        type: DataTypes.DECIMAL,
        allowNull: false,
    },
    id_genero: {
        type: DataTypes.DECIMAL,
        allowNull: false,
    }
}, {
    tableName: 'catalogo_genero',
    timestamps: false,
});

module.exports = Catalogo_Genero;