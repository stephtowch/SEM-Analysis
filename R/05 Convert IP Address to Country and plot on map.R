#Convert IP addresses and plot on a map
#load the data set
options(scipen = 999)
options(max.print = 1000000)
data = readr::read_csv("Data/Data/ip_address.csv")
View(data)


################################IP_ADDRESS_PLOT#############################
df <- read.table(text="
ip_address
86.166.181.47
195.99.59.160
151.228.208.148
86.166.181.47
31.94.60.82
", header = TRUE)
View(df)

#Load the package
pacman::p_load(ip2location, reticulate, tidyverse)

#load python
use_python('Data/Data/Python/Python311/python.exe')

# load IP2Location bin file
ip2location::open("Data/Data/IP2LOCATION-LITE-DB11.BIN")
df <- df |>
  mutate(details =  map(ip_address, get_all)) |> 
  unnest_wider(details) 
#df
print(df,n=500)#change n value
write.csv(df, "Data/Data/df_IPaddresses.csv", row.names = FALSE)

#plot on map
plot_map(df$ip_address)

##############REVIEW CODE TO EXPORT DATA###############################

export.df <- data.frame(df$IP.Address, df$country_long)
colnames(export.df) <- c("IP Address", "Country")
write.csv(export.df, "Data/Data/IP_to_Location.csv")




