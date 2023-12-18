const { DataTypes, Sequelize } = require('sequelize');

const db = require('../db');

module.exports = db.define(
  'master_barang',
  {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    nama_barang: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    harga_satuan: {
      type: DataTypes.DOUBLE,
      allowNull: false,
    },
  },
  {
    modelName: 'master_barang',
    timestamps: false,
  }
);
