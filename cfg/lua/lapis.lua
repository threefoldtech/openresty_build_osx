location /lapis {
    default_type text/html;
    content_by_lua '
      require("lapis").serve("app")
    ';
  
}

