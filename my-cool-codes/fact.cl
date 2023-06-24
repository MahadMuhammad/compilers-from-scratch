class Main inherits A2I {
    main() : Object{
        -- (new IO).out_string((new IO).in_string().concat("\n"))

        -- Reading a string using A21
        -- Converting it into integer using a2i function and adding 1
        -- Now, conveting again to string using i2a function and appending a new line
        -- Now, printing the result/home/mahad/Desktop/mahad/gccrs/contrib/gcc-git-customization.sh
        -- (new IO).out_string(i2a(a2i((new IO).in_string())+1).concat("\n"))


        -- Recursive version of factorial
        -- (new IO).out_string(i2a(factrecursive(a2i((new IO).in_string()))).concat("\n"))

        -- Iterative version of factorial
        (new IO).out_string(i2a(fact(a2i((new IO).in_string()))).concat("\n"))
    };


    factrecursive(i: Int) : Int{
        -- i+1--checking function call
        if (i = 0) then 1 else i * fact(i-1) fi
    };


    fact(i: Int) : Int {
        -- Iterative version

        -- making accumulator
        let fact: Int <- 1 in {
            while (not (i = 0)) loop
                {
                    -- fact =  fact * i; -- This is an error as in cool this is comparator
                    -- i = i - 1;
                    fact <- fact * i;
                    i <- i -1;
                }
            pool;
            fact; -- returning the accumulator
        }
    };
};