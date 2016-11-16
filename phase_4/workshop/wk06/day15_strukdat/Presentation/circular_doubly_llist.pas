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
		val: dmhs;
		prev: pointer;
		next: pointer;
	end;

var
	recent, ptr, prev: pointer;
	head, tail: pointer;
	number, ch: integer;
	mahasiswa: dmhs;
	// mahasiswa: arr_mhs;

{ Prototype - Function / Procedure }
procedure init_llist;
begin
	head := nil;
	tail := head;
end;
// function create_node(mahasiswa: dmhs): pointer;
// begin
// 	number := number + 1;
// 	head := nil; tail := nil;
// 	new(recent);
// 	recent^.val := mahasiswa
// end;
procedure add_node;
begin
	
end;
procedure insert_at_first;
procedure insert_at_end;
procedure insert_at_position;
procedure delete_node_position;
procedure sort_list;
procedure search;

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