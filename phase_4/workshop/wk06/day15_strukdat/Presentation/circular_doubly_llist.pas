program circular_doubley_llist;

type
	dmhs = record
		nim: integer;
		nama: string;
		indeks: char;
	end;

	// arr_mhs = array of dmhs;

	pointer = ^node;

	node = record
		// val: arr_mhs;
		// val: dmhs;
		val: integer;
		prev: pointer;
		next: pointer;
	end;

var
	recent, ptr, prev: pointer;
	head, tail: pointer;
	info, number, ch: integer;
	// mahasiswa: dmhs;
	// mahasiswa: arr_mhs;

{ Prototype - Function / Procedure }
{ Create or first init of list }
procedure init_llist;
begin
	head := nil;
	tail := head;
end;

{ Check if current list is empty }
function is_empty: boolean;
begin
	if (head = nil) then
		is_empty := true;

	is_empty := false;
end;

{ Memory allocated for node dynamically }
// function create_node(mahasiswa: dmhs): pointer;
function create_node(info: integer): pointer;
begin
	number := number + 1;
	head := nil; tail := nil;
	new(recent);
	recent^.val := info;
	recent^.next := nil;
	recent^.prev := nil;

	create_node := recent;
end;

// procedure add_node(mahasiswa: dmhs);
// var
// 	node: pointer;
// begin
// 	node.val := mahasiswa;
// 	new(node.next);

// 	if (is_empty) then
// 	begin
// 		new(head);
// 		new(tail);
// 		// head := node; // copy data
// 		// head^ := node^; // copy value
// 		head^ := node;
// 	end else
// 	begin
// 		tail^.next^ := node;
// 	end;

// 	tail^ := node;
// end;
{ Adds new node }
procedure add_node;
begin
	write('Masukkan data baru: ');
	readln(info);
	recent := create_node(info);

	if (is_empty) then
	begin
		head := recent; tail := recent;
		head^.next := nil; tail^.next := nil;
		head^.prev := nil; tail^.prev := nil;
	end else
	begin
		tail^.next := recent;
		recent^.prev := tail;
		tail := recent;
		tail^.next := head;
		head^.prev := tail;
	end;
end;

{ Inserts element at first }
procedure insert_at_first; begin
	write('Masukkan data yang akan ditaruh paling depan: ');
	readln(info);
	recent := create_node(info);

	if (is_empty) then begin
		write('Saat ini list kosong!');
		head := recent; tail := recent;
		head^.next := nil; tail^.next := nil;
		head^.prev := nil; tail^.prev := nil;
	end else begin
		recent^.next := head;
		head^.prev := recent;
		head := recent;
		head^.prev := tail;
		tail^.next := head;
		writeln('Data berhasil dimasukkan ke list paling depan.')
	end;
end;

{ Inserts element at end }
procedure insert_at_end; begin
	write('Masukkan data yang akan ditaruh paling belakang: ');
	readln(info);
	recent := create_node(info);

	if (is_empty) then begin
		write('Saat ini list kosong!');
		head := recent; tail := recent;
		head^.next := nil; tail^.next := nil;
		head^.prev := nil; tail^.prev := nil;
	end else begin
		tail^.next := recent;
		recent^.prev := tail;
		tail := recent;
		head^.prev := tail;
		tail^.next := head;
	end;
end;


{ Inserts the element at given position }
procedure insert_at_position; 
var
	pos, len, i: integer;
	prevnode: pointer;
begin
	write('Masukkan data yang ingin dimasukkan: ');
	readln(info);
	write('Masukkan posisi ke berapa: ');
	readln(pos);
	recent := create_node(info);

	if (is_empty) then begin
		if (pos = 1) then begin
			head := recent; tail := recent;
			head^.next := nil; tail^.next := nil;
			head^.prev := nil; tail^.prev := nil;
		end else
			writeln('List kosong, kamu tidak bisa memasukkan data di posisi tersebut');
	end else begin
		if (number < pos) then
			writeln('List tidak bisa dimasukkan pada posisi tersebut karena melampaui batas!')
		else begin
			ptr := head;
			for (i := 1 to number) do begin
				prevnode := ptr;
				ptr := ptr^.next;
				if (i = pos - 1 ) then begin
					prevnode^.next := recent;
					recent^.prev := prevnode;
					recent^.next := ptr;
					ptr^.prev := recent;
					writeln('Berhasil memasukkan data di posisi ', pos);
					break;
				end;
			end;
		end;
	end;
end;

{ Deletes element at given position }
// procedure delete_node_position;
// var
// 	pos, count, i: integer;

{ Sort the info list }
procedure sort_list(sort: integer);
var
	temp: pointer;
	tempval, j: integer;
begin
	if (is_empty) then
		writeln('List kosong, tidak data yang bisa diurutkan')
	else begin
		ptr := head;
		while (ptr <> nil) do begin
			temp := ptr^.next;
			for (j := 0 to number - 1) do begin
				case (sort) of begin
					0: begin // ascending
						if (ptr^.val > temp^.val) then begin
							tempval := ptr^.val;
							ptr^.val := temp^.val;
							temp^.val := tempval;
						end;
					end;
					1: begin // descending
						if (ptr^.val < temp^.val) then begin
							tempval := ptr^.val;
							ptr^.val := temp^.val;
							temp^.val := tempval;
						end;
					end;
				end;
			end;
			write(ptr^.val, ' ');
		end;

	end;
end;
// procedure search;

{ Algoritma Utama }
begin
	number := 0;

	writeln('linked list');
  writeln('1.insert at beginning');
	writeln('2.insert at end');
	writeln('3.insert at position');
	writeln('4.sort linked list');
	writeln('5.delete node at position');
	writeln('6.updatenodevalue');
	writeln('7.search element');
	writeln('8.exit');
end.