program double_llist;

type
  pointer := ^node;

  node = record
    prev := pointer;
    val := integer;
    next := pointer;
  end;

var
  recent, ptr: pointer;
  head, tail: pointer;
  elem: integer;

function create_node(elem: integer);
begin
  new(recent);
  recent^.prev := nil;
  recent^.val := elem;
  recent^.next := nil;

  create_node := recent;
end;

procedure addFront; begin
  write('Masukkan data: ');
  readln(elem);
  recent := create_node(elem);

  if (head = nil) then begin
    
  end else begin
    
  end;

  head := recent;
end;

begin
  
end;