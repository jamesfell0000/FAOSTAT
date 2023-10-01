#FAO country codes:
data <- fromJSON("https://fenixservices.fao.org/faostat/api/v1/en/definitions/types/area?datasource=DB4",flatten=TRUE)
FAO_country_codes <- as.data.frame(data$data)
#FAO element codes:
data <- fromJSON("https://fenixservices.fao.org/faostat/api/v1/en/definitions/types/element?datasource=DB4")
FAO_element_codes <- as.data.frame(data$data)
#FAO item codes:
data <- fromJSON("https://fenixservices.fao.org/faostat/api/v1/en/definitions/types/item?datasource=DB4")
FAO_item_codes <- as.data.frame(data$data)
#FAO item codes:
data <- fromJSON("https://fenixservices.fao.org/faostat/api/v1/en/definitions/types/item?datasource=DB4")
FAO_item_codes <- as.data.frame(data$data)
#FAO database names:
data <- fromJSON("https://fenixservices.fao.org/faostat/api/v1/en/definitions/types/item?datasource=DB4")
FAO_item_codes <- as.data.frame(data$data)
database_names <- FAO_item_codes[c('Domain Code', 'Domain')]
database_names <- unique(database_names)
