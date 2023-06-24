class List Inherits A2I{
    item : Object;
    next: List;


    init(i:Object, n : List) : List{
        {
            item <- i;
            next <- n;
            self;  -- return self
        }
    };


    flatten() : String {
        let string: String <-
            case item of
                i : Int  => i2a(i);
                s : String => s;
                -- o : Object =>  abort(); -- Need to return string
                o : Object => { abort(); "";};
            esac
        in
            if (isvoid next) then
                string
            else
                string.concat(next.flatten())
            fi
    };
};


class Main Inherits IO {
    main() : Object{
        let hello : String <- "Hello ",
            world : String <- "World",
            newline : String <- "\n",
            i: Int <- 42,
            nil : List,
            list : List <- 
                (new List).init(hello,
                    (new List).init(world,
                        (new List).init(42,
                            (new List).init(newline, nil))))
        in 
            -- self.out_string(hello.concat(world.concat(newline)))
            out_string(list.flatten())
    };
};