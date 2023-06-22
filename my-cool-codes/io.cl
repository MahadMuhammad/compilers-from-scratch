class Main{
    -- i : IO <- new IO;
    (* main() : IO { i.out_string("Hello World\n")};*)
    -- main() : Object { i.out_string("Hello World\n")};
    main() : Object { (new IO).out_string("Hello World\n")};
};