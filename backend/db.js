const { Sequelize } = require('sequelize');

module.exports = new Sequelize('redbuzz-test', 'developer', '10October@2022', {
  dialect: 'mysql',
  host: 'localhost',
  port: 3306,
  dialectOptions: {
    dateStrings: true,
    multipleStatements: true,
  },
  define: {
    freezeTableName: true,
    timestamps: false,
  },
});
