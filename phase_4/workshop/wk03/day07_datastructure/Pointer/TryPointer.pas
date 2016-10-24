program CobaPointer;

var
    bilangan: integer;
    penunjuk: ^integer; // define the pointer

    // actual address
    alamat: ^word;

begin
    write('Masukkan satu bilangan: '); readln(bilangan);

    // Store the address of bilangan to penunjuk pointer
    penunjuk := @bilangan;

    // Store the actual address
    alamat := addr(penunjuk);

    writeln(bilangan);

    // Call the address of bilangan
    writeln(penunjuk^);

    // Show the address of alamat
    writeln(alamat^)
end.