#EXAMPLE:Get population for all countries/regions from 1990:
database_name="OA"
data <- fromJSON("https://fenixservices.fao.org/faostat/api/v1/en/definitions/types/area?datasource=DB4",flatten=TRUE)
areas <- as.list(as.data.frame(data$data)$'Country Code')
elements=c(511) #Total population - both sexes
items=c(3010) #Population
years=c(1990:2021)
FAO_data <- get_fao(database_name,areas,elements,items,years)
names(FAO_data)[names(FAO_data)=='Area Code (ISO3)'] <- 'ISO3'
