program insertion;

type
    pointer = ^node;

    node = record
        data: integer;
        next: pointer;
    end;

var
    head, temp, tail, help, del: pointer;

    function isempty: boolean;
    begin
        if head = nil then
            isempty := true;
            
        isempty := false;
    end;

    procedure create;
    begin
        head := nil;
        tail := nil;
    end;

    procedure addfirst(elem: integer);
    begin
        new(temp);
        temp^.data:= elem;

        if head = nil then
            begin
                temp^.next:= nil;
                tail:= temp;
            end
        else
            temp^.next:= head;

        head:= temp;
    end;

    procedure removefirst(var elem: integer);
    begin
        if head = nil then
            writeln('Tidak bisa dihapus, karena kosong')
        else if head = tail then
            begin
                del := head;
                elem := del^.data;
                head := nil;
                tail := nil;
                dispose(del);
            end
        else
            begin
                del := head;
                elem := del^.data; 
                head := head^.next; // move the head to the second list
                dispose(del);
            end;
    end;

    procedure removefirst;
    begin
        del := head;
        if head = tail then // node only 1
            begin
                head := nil;
                tail := nil;
            end
        else 
            head := head^.next; // move the head to the second list

        dispose(del);
    end;

    procedure viewAll;
    begin
        if head = nil then
            writeln('Tidak ada data')
        else
        begin
            help:= head;
            writeln;
            while (help <> nil) do
            begin
                write(help^.data, ' ');
                help:= help^.next;
                writeln;
            end;
        end;
    end;

begin
    create;
    addfirst(3);
    addfirst(10);
    addfirst(6);

    // if (not isempty) then
    //     removefirst;

    viewAll;      
end.