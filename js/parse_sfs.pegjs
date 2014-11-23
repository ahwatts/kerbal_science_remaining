section
  = ws* name:section_head nl ws* "{" nl ws* parts:section_guts* ws* "}" nl { return [ name, parts ]; }

section_head
  = name:[^ \n\t]+ { return name.join(""); }

section_guts
  = var_def
  / section

var_def
  = ws* name:var_name " = " value:var_value nl { return [ name, value ]; }

var_name
  = name:[^ \n\t]* { return name.join(""); }

var_value
  = value:[^\n]* { return value.join(""); }

ws
 = [ \t]

nl
 = "\n"
