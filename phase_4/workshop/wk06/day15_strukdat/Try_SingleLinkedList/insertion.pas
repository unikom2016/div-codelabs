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

    { Find Data }
    procedure find(elem: integer);
    // function find(elem: integer): integer;
    var
        idx: integer; 
    begin
        if (not isempty) then
            begin
                temp := head;
                idx := 0;
                while (temp^.data <> elem) and (temp <> nil) do
                begin
                    temp := temp^.next;
                    idx := idx + 1;
                end;
                writeln('Nilai ', elem, ' ada di index: ', idx);
            end
        else
            writeln('NOT FOUND!');
    end;

    { Find Data }
    // function find(elem: integer): integer;
    // begin
    //     if (not isempty) then
    //         begin
    //             temp := head;
    //             while (temp^.data <> elem) and (temp <> nil) do
    //                 temp := temp^.next;

    //             writeln('Nilai ', elem, ' ada di index: ', idx);
    //         end
    //     else
    //         writeln('NOT FOUND!');
    // end;

    procedure sort(sorttype: integer);
    var
        value: integer;
    begin
        if isempty then
            writeln('list is empty');

        temp := head;
        while (temp <> nil) do
        begin
            help := temp^.next;
            while (help <> nil) do
            begin
                case (sorttype) of
                    0: begin
                        if (temp^.data > help^.data) then
                        begin
                            value := temp^.data;
                            temp^.data := help^.data;
                            help^.data := value;
                        end;
                    end;

                    1: begin
                        if (temp^.data < help^.data) then
                        begin
                            value := temp^.data;
                            temp^.data := help^.data;
                            help^.data := value;
                        end;
                    end;
                end;
                help := help^.next;
            end;
            temp := temp^.next;
        end;
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
            // write('Hapus nilai? ');
            // k := find(elem);
            // writeln('Sedang mencari... ');
            while (k - 1 <> 0) do
            begin
                k := k - 1;
                temp := temp^.next;
            end;
            // write('Nilai ditemukan... ');
                
            
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
    addfirst(11);

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

    find(10);
    sort(0); // ascending

    viewall;
end.