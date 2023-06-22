class Main inherits IO
{
    -- main():Object { self.out_string("Hello World!\n")}; -- In C++, self is `this`

    -- This should also works , auto self
    main():Object { out_string("Hello World!\n")};
};