const { DataTypes } = require('sequelize');
const sequelize = require('../conection/connection');

const Vista_tp3 = sequelize.define('Vista_tp3', {
    id: {
        type: DataTypes.DECIMAL,
        primaryKey: true,
        autoIncrement: false,
    },
    poster: {
        type: DataTypes.STRING,
        allowNull: false,
        default: "",
        get() {
            return process.env.BASE_URL + this.getDataValue("poster");
        }
    },
    titulo: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    categoria: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    genero: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    resumen: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    temporadas: {
        type: DataTypes.INTEGER || DataTypes.STRING,
        allowNull: false,

        get() {
            if (!this.getDataValue("temporadas")) return "N/A";
            return this.getDataValue("temporadas");
        }
    },
    reparto: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    trailer: {
        type: DataTypes.STRING,
        allowNull: false,

        get() {
            if (!this.getDataValue("trailer") || this.getDataValue("trailer") === " ") return "N/A";
            return this.getDataValue("trailer");
        }
    }
}, {
    tableName: 'vista_tp3',
    timestamps: false,
});

module.exports = Vista_tp3;