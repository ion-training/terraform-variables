variable "number_apples" {
 description = "number signifying number of apples"
 type = number
 default = 5
}

output "amount_of_apples" {
    value = var.number_apples
}