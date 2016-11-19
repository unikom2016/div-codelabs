program practice;

type
  pointer = ^stack;
  stack = record
    data: integer;
    link: pointer;
  end;
  // stack = record
  //   top: pointer;
  // end;

var
  top: pointer;
  recent: pointer;
  total_list: integer;


{ Initialization }
procedure init;
begin
 top: nil; 
end;

{ Allocate memory }
function create: pointer;
begin
  total_list := total_list + 1;
  new(recent);
  write('Masukkan data: ');
  readln(recent^.data);
  recent^.link := nil;
  creat := recent;
end;

{ Inserts }
procedure push;
begin
  top := create;

end;

{ Removes }
procedure pop;
begin
  
end;

begin
  
end;