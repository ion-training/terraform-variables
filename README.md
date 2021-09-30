# terraform-variable

Terraform can request or publish information using:
   - Input Variables: parameters you can pass
   - Output Values: are like return values for a Terraform module.
   - Local Values: assign short name to an expression temporary within a module

<br>

Terraform input variables can be thought of as paramters given to functions.

<br>

# Variables types:
basic type:
   - bool
   - number
   - string

complex type:
   - list(```<TYPE>```)
   - set(```<TYPE>```)
   - map(```<TYPE>```)
   - object( ```{ <ATTR NAME> = <TYPE>}``` )
   - tuple(```[<TYPE>, ...]```)

# Syntax
Variables are declared in a module within using a block syntax, all arguments within the block are optional:
```
variable "VAR_NAME" {
  type
  default
  description
  validation
  sensitive
}
```


# Variable Definition Precedence
_later sources taking precedence over earlier ones_
   - Environment variables
   - The terraform.tfvars file, if present.
   - The terraform.tfvars.json file, if present.
   - Any *.auto.tfvars or *.auto.tfvars.json files, processed in lexical order of their filenames.
   - Any -var and -var-file options on the command line, in the order they are provided.
