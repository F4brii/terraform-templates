variable "table_name" {
  description = "Nombre de la tabla DynamoDB"
  type        = string
}

variable "billing_mode" {
  description = "Modo de facturación (PROVISIONED o PAY_PER_REQUEST)"
  type = string
}

variable "hash_key" {
  description = "Clave hash principal de la tabla"
  type = string
}

variable "range_key" {
  description = "Clave de rango secundaria (opcional)"
  type        = string
  default     = null
}

variable "read_capacity" {
  description = "Capacidad de lectura (para PROVISIONED)"
  type        = number
  default     = 1
}

variable "write_capacity" {
  description = "Capacidad de escritura (para PROVISIONED)"
  type        = number
  default     = 1
}

variable "attributes" {
  description = "Lista de atributos de la tabla"
  type = list(object({
    name = string
    type = string
  }))
  default = []
}

variable "ttl" {
  description = "Configuración de Time-To-Live (TTL) (opcional)"
  type = object({
    attribute_name = string
    enabled        = bool
  })
  default = null
}

variable "stream_enabled" {
  description = "Habilitar streams en la tabla"
  type        = bool
  default     = true
}

variable "stream_view_type" {
  description = "Tipo de stream (NEW_IMAGE, OLD_IMAGE, NEW_AND_OLD_IMAGES, KEYS_ONLY)"
  type        = string
  default     = "NEW_AND_OLD_IMAGES"
}

variable "global_secondary_indexes" {
  description = "Lista de índices secundarios globales (opcional)"
  type = list(object({
    name               = string
    hash_key           = string
    range_key          = string
    projection_type    = string
    non_key_attributes = list(string)
    read_capacity      = number
    write_capacity     = number
  }))
  default = []
}

variable "tags" {
  description = "Etiquetas para la tabla"
  type        = map(string)
  default     = {}
}
