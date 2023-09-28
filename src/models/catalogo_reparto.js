const { DataTypes } = require('sequelize');
const sequelize = require('../conection/connection');

const Catalogo_Reparto = sequelize.define('Catalogo_Reparto', {
    id_catalogo_reparto: {
        type: DataTypes.DECIMAL,
        primaryKey: true,
        autoIncrement: false,
    },
    id_catalogo: {
        type: DataTypes.DECIMAL,
        allowNull: false,
    },
    id_reparto: {
        type: DataTypes.DECIMAL,
        allowNull: false,
    }
}, {
    tableName: 'catalogo_reparto',
    timestamps: false,
});

module.exports = Catalogo_Reparto;