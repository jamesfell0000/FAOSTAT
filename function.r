get_fao <- function(database_name,areas,elements,items,years) {
  library(jsonlite)
  library(readr)
  library(httr)
	if (length(areas)>1) {areas = paste0(areas, collapse='%2C')}
	if (length(elements)>1) {elements = paste0(elements, collape='%2C')}
	if (length(items)>1) {items = paste0(items, collape='%2C')}
	if (length(years)>1) {years = paste0(years, collapse="%2C")}
	url = paste0("http://fenixservices.fao.org/faostat/api/v1/en/data/",database_name,"?area=",areas,"&area_cs=ISO3&element=",elements,"&element_cs=FAO&item=",items,"&item_cs=FAO&year=",years,"&show_codes=true&show_unit=true&show_flags=true&null_values=false&output_type=csv")
	download <- GET(url)
	translated_download <- content(download, "text")
	df<-read_delim(translated_download, ",", col_names = TRUE)
	return(df)
}
