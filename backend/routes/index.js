const express = require('express');
const router = express.Router();

const barang = require('./barang.route');

router.use('/barang', barang);

module.exports = router;
