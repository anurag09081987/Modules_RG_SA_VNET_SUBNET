variable "rg_dev" {
type = map(object({
    name = string
    location = string
    managed_by = string
    tag = map(string)
}))
}
