program insertion;

type
    nodeptr = ^node;
    node = record
        data: integer;
        next: nodeptr;
    end;

var
    head, temp, tail: nodeptr;
    n: integer;

{ Subroutine }
// Head Insertion
procedure insert_head(elem: integer; var head, temp, tail: nodeptr);
begin
    temp^.data := elem;
    temp^.next := head;
    head := temp;
end;

{ Main Algorithm }
begin
    writeln('1. Head Insertion');
    write('Input your number: ');
    readln(n);
    insert_head(n, head, temp, tail);
end.