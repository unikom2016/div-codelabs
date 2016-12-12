// import model
var artikel = require('../model/artikel');

module.exports.tampilsemua = function(req, res) {
  artikel.find(function(err, data){
    if (err) {
      throw err;
    } else {
      res.json({
        status: 200,
        message: 'success',
        result: data
      });
    }
  });
};

module.exports.tambahdata = function(req, res) {
  var Artikel = new artikel();
  Artikel.judul = req.body.judul;
  Artikel.penulis = req.body.penulis;
  Artikel.isi = req.body.isi;
  Artikel.kategori = req.body.kategori;
  Artikel.save(function(err, data) {
    if (err) {
      throw err;
    } else {
      artikel.find(function(err, data) {
        res.json({
          status: 200,
          message: 'Berhasil tambah data',
          result: data
        });
      });
    }
  });
};

module.exports.getById = function(req, res) {
  artikel.findById(req.params.id, function(err, data) {
    if (err) {
      throw err;
    } else {
      res.json({
        status: 200,
        message: 'Berhasil tampil berdasarkan id',
        result: data
      });
    }
  });
};

module.exports.ubahdata = function(req, res) {
  artikel.findById(req.params.id, function(err, data) {
    if (err) {
      throw err;
    } else {
      data.judul = req.body.judul;
      data.penulis = req.body.penulis;
      data.isi = req.body.isi;
      data.kategori = req.body.kategori;
      data.save(function(err, data) {
        res.json({
          status: 200,
          message: 'Berhasil ubah data',
          result: []
        })
      });
    }
  });
};

module.exports.hapusdata = function(req, res) {
  artikel.remove({_id: req.params.id}, function(err, data) {
    
    if (err) {
      throw err;
    } else {
      res.json({
        status: 200,
        message: 'Berhasil menghapus data',
        result: []
      })
    }
    
  });
};