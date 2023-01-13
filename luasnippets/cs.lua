-- local s = ls.snippet
-- local t = ls.text_node
-- local i = ls.insert_node

return {
  -- s("sd", { t "System.Diagnostics.Debug.WriteLine" }),
  s("sd", fmt([[
System.Diagnostics.Debug.WriteLine({})
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
  }))
}
