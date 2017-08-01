var x = 'hello';
var z = 12;
var nama = 'mochadwi';

document.write(x);

// templating
document.write(`\nhello ${nama}`);

// array
var arr = [1, 2, 3];

// object
var obj = {
    nama: "mochadwi 1",
    kota: "Bandung"
}

// anonymous function
var nama = function() {
    return obj.nama;
}
document.write(nama() + "<br>");

// looping & branching
for (var i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
        document.write(i + ": genap; ");
    } else {
        document.write(i + ": ganjil; ");
    }
}