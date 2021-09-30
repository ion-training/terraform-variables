# terraform-variable

Terraform can request or publish information:
 - Input Variables: parameters you can pass
 - Output Values: are like return values for a Terraform module.
 - Local Values: assign short name to an expression temporary within a module

Terraform input variables can be thought of as paramters given to functions.

Variables types
- basic types
     - bool
     - number
     - string

- complex types (can use simple)
     - list(```<TYPE>```)
     - set(```<TYPE>```)
     - map(```<TYPE>```)
     - object( ```{ <ATTR NAME> = <TYPE>}``` )
     - tuple(```[<TYPE>, ...]```)
