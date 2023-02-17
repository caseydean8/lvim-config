-- local s = ls.snippet
-- local t = ls.text_node
-- local i = ls.insert_node

return {
  -- s("sd", { t "System.Diagnostics.Debug.WriteLine" }),
  s("sd", fmt([[
System.Diagnostics.Debug.WriteLine({});
  ]], {
    i(1),
  })),

  -- fmt() allows {} in first argument to be tabbed to correct position.
  s("Pro", fmt([[
  {}
  {}
      {}
      {}
          {}
      {}
  {}
 ]], {
    t "class Program",
    t "{",
    t "public static void Main(String[] args)",
    t "{",
    -- insert cursor
    i(1),
    t "}",
    t "}",
  })),
-- class with Main() method
  s("class w/Main", fmt([[
  class {}
  {}
      public static void Main(String[] args)
      {}
          {}
      {}
  {}
 ]], {
    -- insert cursor, placeholder
    i(1, "ClassNameHere"),
    t "{",
    t "{",
    -- insert cursor
    i(2),
    t "}",
    t "}",
  })),

  -- public static void Main(string[] args)
  s("psvm", fmt([[
  public static void Main(string[] args)
  {}
      {}
  {}
  ]], {
    t "{",
    i(1),
    t "}"
  })),

  -- Console.WriteLine();
  s("Cw", fmt([[
  Console.WriteLine({});
  ]], {
    i(1)
  })),

  --Debug.WriteLine();
  s("dw", fmt([[
  Debug.WriteLine({});
  ]], {
    i(1)
  })),
  -- Debug.WriteLine(String.Join(", ", collection));
  s("dw Join", fmt([[
  Debug.WriteLine(String.Join(", ", {}));
  ]], {
    i(1)
  })),
  -- { get; set; }
  s("{get;", { t "{ get; set; "})
}
