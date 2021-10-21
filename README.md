# terraform-variables

Terraform can request or publish information using:
   - Input Variables: parameters you can pass
   - Output Values: are like return values for a Terraform module.
   - Local Values: assign short name to an expression temporary within a module

<br>

Terraform input variables can be thought of as parameters given to functions.

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

# Sample code

Create a variable block.
The number_apples is a place holder for the value.
```
variable "number_apples" {
 description = "number signifying number of apples"
 type = number
 default = 5
}
```

Optionally, 
to be able to view and output this value later you can place it further on in the output resource.

```
output "amount_of_apples" {
    value = var.number_apples
}
```

Above sample code was placed in main.tf.

# How to use the sample code above

Clone the repository.
```
git clone git@github.com:ion-training/terraform-variables.git
```

Change the directory into the newly downloaded repo.
```
cd terraform-variables
```

Initialize the directory with terraform init.
```
terraform init
```
See what plan/steps terraform will use to create the resources.
_in this case the variable that references value 5_
```
terraform plan
```

Apply the plan (implement the changes).
```
terraform apply
```

# Sample code output
```
$ terraform init

Initializing the backend...

Initializing provider plugins...

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
$
```

```
$ terraform plan

Changes to Outputs:
  + amount_of_apples = 5

You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
$
```

```
$ terraform apply

Changes to Outputs:
  + amount_of_apples = 5

You can apply this plan to save these new output values to the Terraform state, without changing any real infrastructure.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes


Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

amount_of_apples = 5
$
```
