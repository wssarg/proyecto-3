const { DataTypes } = require('sequelize');
const sequelize = require('../conection/connection');

const Catalogo = sequelize.define('Catalogo', {
    id_catalogo: {
        type: DataTypes.DECIMAL,
        primaryKey: true,
        autoIncrement: false,
    },
    poster: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    titulo: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    id_categoria: {
        type: DataTypes.DECIMAL,
        allowNull: false,
    },
    resumen: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    temporadas: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    trailer: {
        type: DataTypes.STRING,
        allowNull: false,
    }
}, {
    tableName: 'catalogo',
    timestamps: false,
});

module.exports = Catalogo;