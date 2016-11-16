program insertion;

{ LinkedList }
type
  pointer = ^node;

  node = record
    prev: pointer;
    data: integer;
    next: pointer;
  end;

var
  recent, help, del: pointer;
  head, tail: pointer;
  number: integer; // to count the data on list

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

  writeln('Masukkan data: ');
  readln(val);
  if (not isempty) then begin
    temp := head;
    // while (recent^.data <> val) do begin
    //   recent := recent^.next;
    // end;
    for i := 0 to (number - 1) do begin
      idx := idx + 1;
      if (temp^.data = val) then begin
        writeln('Nilai ', val, ' ada di index: ', idx);
        f := 1;
      end;
      temp := temp^.next;
    end;

    if (f = 0) then
      writeln('NOT FOUND!');
  end;
end;

{ Find Data }
// function find(elem: integer): integer;
// begin
//     if (not isempty) then
//         begin
//             recent := head;
//             while (recent^.data <> elem) and (recent <> nil) do
//                 recent := recent^.next;

//             writeln('Nilai ', elem, ' ada di index: ', idx);
//         end
//     else
//         writeln('NOT FOUND!');
// end;

procedure sort(sorttype: integer);
var
  value, i, j: integer;
begin
  if (isempty) then
    writeln('list is empty');

  recent := head;
  // while (recent <> nil) do begin
  for i := 0 to (number - 1) do begin
    help := recent^.next;
    // while (help <> nil) do begin
    for j := i to (number - 1) do begin
      case (sorttype) of
        0: begin
          if (recent^.data > help^.data) then begin
            value := recent^.data;
            recent^.data := help^.data;
            help^.data := value;
          end;
        end;
        1: begin
          if (recent^.data < help^.data) then begin
            value := recent^.data;
            recent^.data := help^.data;
            help^.data := value;
          end;
        end;
      end;
    end;
    recent := recent^.next;
  end;
end;

function create_node(elem: integer): pointer;
begin
  number := number + 1;
  new(recent);
  recent^.data := elem;
  recent^.prev := nil;
  recent^.next := nil;
  create_node := recent;
end;

{ Front Insertion }
procedure addfirst(elem: integer); begin
  recent := create_node(elem);

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
  k, mid: integer;
  temp2: pointer;
begin
  recent := create_node(elem);

  write('Posisi ke berapa? ');
  readln(k);
  while (k - 1 <> 0) do begin
    k := k - 1;
    recent := recent^.next;
  end;

  new(temp2);
  temp2 := recent^.next;

  new(help);
  help^.data := elem;
  help^.next := temp2;

  recent^.next := help;
end;

{ Back Insertion }
procedure addlast(elem: integer); begin
  recent := create_node(elem);

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
  k: integer;
  after: pointer;
begin
  number := number - 1;
  if (not isempty) then begin
    new(recent);
    recent := head;

    write('Posisi yang mau dihapus? ');
    readln(k);
    // write('Hapus nilai? ');
    // k := find(elem);
    // writeln('Sedang mencari... ');
    while (k - 1 <> 0) do begin
      k := k - 1;
      recent := recent^.next;
    end;
// write('Nilai ditemukan... ');


    del := recent^.next;
    after := del^.next;

    recent^.next := after;

    dispose(del);            
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
    for i := 0 to (number - 1) do begin
      write(help^.data, ' ');
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

write('Hapus list paling depan: ');
removefirst;
viewall;

write('Hapus list paling belakang: ');
removelast;
viewall;

write('List diurutkan (desc)');
sort(0);
viewall;

write('List diurutkan (asc)');
sort(1);
viewall;

writeln('Temukan list');
find;

writeln;
end.