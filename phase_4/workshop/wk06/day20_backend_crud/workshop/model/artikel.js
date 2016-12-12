var mongoose = require('mongoose');
var Schema = mongoose.Schema;

var ArtikelSchema = new Schema({
  judul: String,
  penulis: String,
  isi: String,
  kategori: String
}); 

module.exports = mongoose.model("Artikel", ArtikelSchema);