var express = require('express');
var router = express.Router();

// import controller
var artikel = require('../controller/artikel');

router.route('/artikel')
  .get(artikel.tampilsemua)
  .post(artikel.tambahdata);

router.route('/artikel/:id')
  .get(artikel.getById)
  .put(artikel.ubahdata)
  .delete(artikel.hapusdata);

module.exports.router = router;