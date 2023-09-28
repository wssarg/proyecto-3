const Vista_tp3 = require("./vista_tp3")
const Categoria = require("./categoria")
const Genero = require("./genero")
const Reparto = require("./reparto")
const Catalogo = require("./catalogo")
const Catalogo_Genero = require("./catalogo_genero")
const Catalogo_Reparto = require("./catalogo_reparto")

// Relaciones entre entidades

// .hasOne // ==> Tiene una
// .hasMany // ==> Tiene muchas
// .belongsTo // ==> Pertenece a
// .belongsToMany // ==> Pertenece a muchas

// Relación one-to-many entre X e Y
// X.hasMany(Y)
// Y.belongsTo(X)

Catalogo.hasOne(Categoria, {
    foreignKey: 'id_categoria'
});
Categoria.belongsTo(Catalogo, {
    foreignKey: 'id_categoria'
});

/*
Categoria.belongsToMany(Catalogo, {
    foreignKey: 'id_categoria'
});
*/

// Relacuión many-to-many entre W y Z, mediante WZ
// Z.belongsToMany(W, { through: WZ })
// W.belongsToMany(Z, { through: WZ })

Catalogo.belongsToMany(Genero, { foreignKey: 'id_genero', through: Catalogo_Genero });
Genero.belongsToMany(Catalogo, { foreignKey: 'id_catalogo', through: Catalogo_Genero });

Catalogo.belongsToMany(Reparto, { foreignKey: 'id_reparto', through: Catalogo_Reparto });
Reparto.belongsToMany(Catalogo, { foreignKey: 'id_catalogo', through: Catalogo_Reparto });

module.exports = { Vista_tp3, Categoria, Genero, Reparto, Catalogo, Catalogo_Genero, Catalogo_Reparto }
