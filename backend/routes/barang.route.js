const express = require('express');
const router = express.Router();

const Barang = require('../models/barang.model');

router.route('/').get(async (req, res, next) => {
  const test = await Barang.findAll();

  res.send(test);
});

module.exports = router;
