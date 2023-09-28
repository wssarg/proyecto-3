const { DataTypes } = require('sequelize');
const sequelize = require('../conection/connection');

const Reparto = sequelize.define('Reparto', {
    id_reparto: {
        type: DataTypes.DECIMAL,
        primaryKey: true,
        autoIncrement: false,
    },
    nombre: {
        type: DataTypes.STRING,
        allowNull: false,
    }
}, {
    tableName: 'reparto',
    timestamps: false,
});

module.exports = Reparto;