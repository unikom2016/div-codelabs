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
    prev: pointer;
    data: dmhs;
    next: pointer;
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
procedure addfirst(elem: integer); begin
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
procedure add(elem: integer);
var
  i, mid: integer;
  prevnode: pointer;
begin
  recent := create_node;
  mid := number div 2;
  if (isempty) then begin
    head := recent; tail := recent;
  end else begin
    ptr := head;
    for i := 1 to mid do begin
      prevnode := ptr;
      ptr := ptr^.next;
      if (i = mid) then begin
        prevnode^.next := recent;
        recent^.next := prevnode;
        recent^.next := ptr;
        ptr^.prev := recent;
        writeln('Data telah berhasil diisi pada posisi: ', i);
      end;
    end;
  end;
end;

{ Back Insertion }
procedure addlast(elem: integer); begin
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
  i, mid: integer;
  prevnode: pointer;
begin
  number := number - 1;
  mid := number div 2;
  if (not isempty) then begin
    ptr := head;
    for i := 1 to mid do begin
      prevnode := ptr;
      ptr := ptr^.next;
      if (i = mid) then begin
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

procedure viewall;
var
  i: integer;
begin
  if (not isempty) then begin
    help := head;
    writeln;
    writeln('Data Mahasiswa: ');
    for i := 0 to (number - 1) do begin
      writeln(i, '.');
      writeln('NIM: ', help^.data.nim, '; ');
      writeln('Nama: ', help^.data.nama, '; ');
      help := help^.next;
    end;
    writeln;
  end;
end;

begin
create;

addfirst(3);
addfirst(10);
addfirst(11);


add(100);
// if ((not isempty)) then
//     removefirst;

addlast(90);
addlast(9);

// viewall
// removelast;

// viewall;
// add(1000);

// viewall;
// remove;

write('List saat ini: ');
viewall;
writeln;

write('Hapus list paling depan: ');
removefirst;
viewall;
writeln;

write('Hapus list tengah: ');
remove;
viewall;
writeln;

write('Hapus list paling belakang: ');
removelast;
viewall;
writeln;

write('List diurutkan (desc)');
sort(0);
viewall;
writeln;

write('List diurutkan (asc)');
sort(1);
viewall;
writeln;

writeln('Temukan list');
find;

writeln;
end.