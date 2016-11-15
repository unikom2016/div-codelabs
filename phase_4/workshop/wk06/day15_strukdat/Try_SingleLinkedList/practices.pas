add(elem: int); #done
addLast(elem: int); #done
removeLast; #done
remove(elem: int); // remove(find(5)) #done

find(elem: int);
sort(type: int); // 0 asc, 1 desc

program insertion;

type
    pointer = ^node;

    node = record
        data: integer;
        next: pointer;
    end;

var
    head, temp, tail, help, del: pointer;

    { Is linkedlist empty? }
    function isempty: boolean;
    begin
        if head = nil then
            isempty := true;
            
        isempty := false;
    end;

    { Create }
    procedure create;
    begin
        head := nil;
        tail := nil;
    end;

    { Front Insertion }
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

    // procedure add(elem: integer);
    // var
    //     k: integer;
    //     temp2: pointer;

    // begin
    //     new(temp);
    //     temp := head;

    //     write('Posisi ke berapa? ');
    //     readln(k);
    //     while (k - 1 <> nil) do
    //     begin
    //         k := k - 1;
    //         temp := temp^.next;
    //     end;

    //     new(temp2);
    //     temp2 := temp^.next;

    //     new(help);
    //     help^.data := elem;
    //     help^.next := temp2;

    //     temp^.next := help;
    // end;

    { Back Insertion }
    procedure addlast(elem: integer);
    begin
        new(temp);
        temp^.data := elem;
        temp^.next := nil;

        if head = nil then
        begin
            head := temp;
        end
        else
        begin
            tail^.next := temp;
        end;

        tail := temp;
    end;

    // find(elem: int);
    // sort(type: int); // 0 asc, 1 desc

    { Remove Insertion }
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

    // procedure remove;
    // var
    //     k: integer;
    //     after: pointer;

    // begin
    //     if head = nil then
    //         writeln('Tidak ada linkedlist')
    //     else
    //     begin
    //         new(temp);
    //         temp := head;

    //         write('Posisi yang mau dihapus?');
    //         readln(k);
    //         while k - 1 <> 0 do
    //         begin
    //             k := k - 1;
    //             temp := temp^.next;
    //         end;
                
            
    //         del := temp^.next;
    //         after := del^.next;

    //         temp^.next := after;

    //         dispose(del);            
    //     end;
    // end;

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

    writeln;

    addlast(90);
    addlast(9);

    // removelast;
    // viewall;
    // add(1000);

    viewall;

    remove;

    viewall;
end.