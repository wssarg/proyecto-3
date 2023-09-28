const { DataTypes } = require('sequelize');
const sequelize = require('../conection/connection');

const Genero = sequelize.define('Genero', {
    id_genero: {
        type: DataTypes.DECIMAL,
        primaryKey: true,
        autoIncrement: false,
    },
    descripcion: {
        type: DataTypes.STRING,
        allowNull: false,
    }
}, {
    tableName: 'genero',
    timestamps: false,
});

module.exports = Genero;