program insertion;

{ LinkedList }
type

  dmhs = record
    nim: integer;
    nama: string;
  end;

  arr_mhs = array of dmhs;

  pointer = ^node;

  node = record
    data: dmhs;
    prev, next: pointer;
  end;

var
  recent, ptr, help, del: pointer;
  head, tail: pointer;
  number: integer; // to count the data on list
  mahasiswa: dmhs;

{ Create }
procedure create; begin
  head := nil;
  tail := head;
end;

{ Is linkedlist empty? }
function isempty: boolean; begin
  if (head = nil) then
    isempty := true;

  isempty := false;
end;

function create_node: pointer;
begin
  number := number + 1;
  new(recent);

  write('Masukkan nim: ');
  readln(mahasiswa.nim);

  write('Masukkan nama: ');
  readln(mahasiswa.nama);

  // write('Masukkan indeks: ');
  // readln(mahasiswa.indeks);

  recent^.data := mahasiswa;
  recent^.prev := nil;
  recent^.next := nil;
  
  create_node := recent;
end;

{ Front Insertion }
procedure addfirst; begin
  recent := create_node;

  if (head = nil) then begin
  // if (isempty) then begin
    head := recent; 
    tail := recent;
    // head^.next := nil; head^.prev := nil;
    // tail^.next := nil; tail^.prev := nil; 
  end else begin
    recent^.next := head;
    head^.prev := recent;
  end;

  head := recent;
  head^.prev := tail;
  tail^.next := head;
end;

{ Middle / Any Insertion }
procedure add;
var
  ch, val, position, i: integer;
  f: boolean;
  prevnode: pointer;
begin
  writeln('Mencari berdasarkan: ');
  writeln('1. Data');
  writeln('2. Posisi');
  readln(ch);
  case (ch) of
    1: begin
      writeln('Cari data NIM: ');
      readln(val);

      recent := create_node;

      if (isempty) then begin
        writeln('Tidak ada data');
        head := recent;
        tail := head;
      end else begin
        ptr := head;
        f := false;
        for i := 1 to number do
          prevnode := ptr;
          if (val = ptr^.data.nim) then begin
            f := true;
            prevnode^.next := recent;
            recent^.prev := prevnode;
            recent^.next := ptr;
            ptr^.prev := recent;
            writeln('Data berhasil di tambah sebelum: ', ptr^.data.nim);
          end else
            ptr := ptr^.next;
        end;
      end;
    2: begin
      writeln('Masukkan ke posisi berapa: ');
      readln(position);

      recent := create_node;

      if (isempty) then begin
        if (position = 1) then begin
          head := recent;
          tail := head;
        end else
          writeln('List kosong, tidak bisa memasukkan di posisi: ', position);
      end else begin
        if (number < position) then
          writeln('Posisi ', position, ' tidak ada. Karena melampaui batas list, yaitu: ', number)
        else begin
          // if (position <> number) and () then begin
            ptr := head;
            writeln('Posisi di: ', position);
            for i := 1 to number do begin
              prevnode := ptr;
              ptr := ptr^.next;
              if (i = position - 1) then begin
                prevnode^.next := recent;
                recent^.prev := prevnode;
                recent^.next := ptr;
                ptr^.prev := recent;
                writeln('Data telah berhasil diisi pada posisi: ', position);
              end;
            end;
          // end else
          //   writeln('You can not insert it');
        end;
      end;
      // end;
    end;
  end;
end;

{ Back Insertion }
procedure addlast; begin
  recent := create_node;

  if (isempty) then begin
    head := recent;
    tail := recent;
  end else begin
    tail^.next := recent;
    recent^.prev := tail;
  end;

  tail := recent;
  head^.prev := tail;
  tail^.next := head;
end;

{ First Deletion }
procedure removefirst; begin
  number := number - 1;
  del := head;

  if head = tail then begin // node only 1
    head := nil;
    tail := nil;
  end else begin
    head := del^.next; // move the head to the second list
    head^.prev := tail;
    tail^.next := head;
  end;

  dispose(del);
end;

{ Middle / Any Deletion }
procedure remove;
var
  i, mid, position: integer;
  prevnode: pointer;
begin
  number := number - 1;
  // mid := number div 2;
  if (not isempty) then begin
    ptr := head;

    writeln('Posisi data yang ingin dihapus: ');
    readln(position);
    for i := 1 to number do begin
      prevnode := ptr;
      ptr := ptr^.next;
      if (i = position) then begin
        prevnode^.next := ptr^.next;
        ptr^.next^.prev := prevnode;
        writeln('data mahasiswa dengan NIM (', ptr^.data.nim, ') sekarang terhapus!');
        dispose(ptr);
      end;
    end;
  end;
end;

{ Last Deletion }
procedure removelast; begin
  number := number - 1;
  del := tail;

  if head = tail then begin // node only 1
    head := nil;
    tail := nil;
  end else begin
    tail := del^.prev;
    tail^.next := head;
    head^.prev := tail;
  end;

  dispose(del);
end;

{ Find Data }
procedure find;
// function find(elem: integer): integer;
var
  idx, val, i, f: integer;
  temp: pointer;
begin
  f := 0;
  idx := 0;
  new(temp);

  writeln('Masukkan NIM untuk mencari: ');
  readln(val);
  if (not isempty) then begin
    temp := head;
    // while (recent^.data <> val) do begin
    //   recent := recent^.next;
    // end;
    for i := 0 to (number - 1) do begin
      idx := idx + 1;
      if (temp^.data.nim = val) then begin
        writeln('Data dari NIM (', val, ') yaitu: ');
        write('NIM: ', temp^.data.nim);
        write('Nama: ', temp^.data.nama);
        f := 1;
      end;
      temp := temp^.next;
    end;

    if (f = 0) then
      writeln('NOT FOUND!');
  end;
end;

procedure sort(sorttype: integer);
var
  value, i, j, kind: integer;
begin
  // writeln('Sortir');
  // writeln('1. Ascending');
  // writeln('2. Descending');
  // readln(kind);

  if (isempty) then
    writeln('list is empty');

  recent := head;
  for i := 0 to (number - 1) do begin
    help := recent^.next;
    // while (help <> nil) do begin
    for j := i to (number - 1) do begin
      case (kind) of
        0: begin
          if (recent^.data.nim > help^.data.nim) then begin
            value := recent^.data.nim;
            recent^.data.nim := help^.data.nim;
            help^.data.nim := value;
          end;
        end;
        1: begin
          if (recent^.data.nim < help^.data.nim) then begin
            value := recent^.data.nim;
            recent^.data.nim := help^.data.nim;
            help^.data.nim := value;
          end;
        end;
      end;
    end;
    recent := recent^.next;
  end;
end;

procedure viewall;
var
  i: integer;
begin
  if (not isempty) then begin
    help := head;
    writeln;
    writeln('Data Mahasiswa: ');
    for i := 0 to (number - 1) do begin
      writeln(i + 1, '.');
      writeln('NIM: ', help^.data.nim, '; ');
      writeln('Nama: ', help^.data.nama, '; ');
      help := help^.next;
    end;
    writeln;
  end;
end;

begin
create;

writeln('Tambah data paling depan: ');
addfirst;
writeln('Tambah data paling depan: ');
addfirst;
// writeln('Tambah data paling depan: ');
// addfirst;

writeln('Jumlah list: ', number);

writeln('Tambah data di tengah: ');
add;
// // if ((not isempty)) then
// //     removefirst;

writeln('Tambah data di belakang: ');
addlast;
// addlast;

writeln('Data sebelum dihapus');
viewall;

writeln('Hapus data di posisi: ');
remove;

viewall;
// // removelast;

// // viewall;
// // add(1000);

// // viewall;
// // remove;

// write('List saat ini: ');
// viewall;
// writeln;

// write('Hapus list paling depan: ');
// removefirst;
// viewall;
// writeln;

// write('Hapus list tengah: ');
// remove;
// viewall;
// writeln;

// write('Hapus list paling belakang: ');
// removelast;
// viewall;
// writeln;

// write('List diurutkan (desc)');
// sort(0);
// viewall;
// writeln;

// write('List diurutkan (asc)');
// sort(1);
// viewall;
// writeln;

// writeln('Temukan list');
// find;

writeln;
end.