const { Sequelize } = require('sequelize');

const sequelize = new Sequelize(process.env.DATABASE, process.env.DBUSER, process.env.PASSWORD, {
    host: process.env.HOST,
    dialect: 'mysql',
});

console.log(`Conectandose a: DATABASE[${process.env.DATABASE}] DBUSER[${process.env.DBUSER}] PASSWORD[${process.env.PASSWORD}] HOST[${process.env.HOST}] PORT[${process.env.PORT}]`);

module.exports = sequelize;