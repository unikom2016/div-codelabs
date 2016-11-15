program insertion;

{ LinkedList }
type
    pointer = ^node;

    node = record
        data: integer;
        next: pointer;
    end;

var
    head, temp, tail, help, del: pointer;

    { Create }
    procedure create;
    begin
        head := nil;
        tail := nil;
    end;

    { Is linkedlist empty? }
    function isempty: boolean;
    begin
        if (head = nil) then
            isempty := true;
            
        isempty := false;
    end;

    { Front Insertion }
    procedure addfirst(elem: integer);
    begin
        new(temp);
        temp^.data := elem;

        if (head = nil) then
        // if (isempty) then
            begin
                temp^.next := nil;
                tail := temp;
            end
        else
            temp^.next := head;

        head := temp;
    end;

    { Middle / Any Insertion }
    procedure add(elem: integer);
    var
        k: integer;
        temp2: pointer;
    begin
        new(temp);
        temp := head;

        write('Posisi ke berapa? ');
        readln(k);
        while (k - 1 <> 0) do
        begin
            k := k - 1;
            temp := temp^.next;
        end;

        new(temp2);
        temp2 := temp^.next;

        new(help);
        help^.data := elem;
        help^.next := temp2;

        temp^.next := help;
    end;

    { Back Insertion }
    procedure addlast(elem: integer);
    begin
        new(temp);
        temp^.data := elem;
        temp^.next := nil;

        if (isempty) then
            head := temp;

        tail^.next := temp;
        tail := temp;
    end;

    { First Deletion }
    procedure removefirst;
    begin
        del := head;
        if head = tail then // node only 1
            begin
                head := nil;
                tail := nil;
            end
        else 
            head := del^.next; // move the head to the second list

        dispose(del);
    end;

    { Middle / Any Deletion }
    procedure remove;
    var
        k: integer;
        after: pointer;
    begin
        if (not isempty) then
        begin
            new(temp);
            temp := head;

            write('Posisi yang mau dihapus? ');
            readln(k);
            while (k - 1 <> 0) do
            begin
                k := k - 1;
                temp := temp^.next;
            end;
                
            
            del := temp^.next;
            after := del^.next;

            temp^.next := after;

            dispose(del);            
        end;
    end;

    { Last Deletion }
    procedure removelast;
    begin
        del := tail;
        if head = tail then
            begin
                head := nil;
                tail := nil;
            end
        else
            tail := del^.next;

        dispose(del);
    end;

    procedure viewall;
    begin
        if (not isempty) then
        begin
            help := head;
            writeln;
            while (help <> nil) do
            begin
                write(help^.data, ' ');
                help := help^.next;
                writeln;
            end;
        end;
    end;

begin
    create;

    addfirst(3);
    addfirst(10);
    addfirst(6);

    // if ((not isempty)) then
    //     removefirst;

    writeln;

    addlast(90);
    addlast(9);

    // removelast;
    viewall;
    add(1000);

    viewall;

    remove;

    viewall;
end.