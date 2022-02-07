#### Preamble ####
# Purpose: download data from opendatatoronto
# Author: Anna Li
# Data: CHANGEEEEEEEEEEEEEEEE
# Contact:annadl.li@mail.utoronto.ca

# Pre-requisites: 
# - Need to have downloaded the ACS data and saved it to inputs/data
# - Don't forget to gitignore it!
# - Change these to yours
# Any other information needed?

new repo for new paper
https://github.com/annadlli/asdfd
#### Workspace setup ####
# Use R Projects, not setwd().
library(opendatatoronto)
library(tidyverse)

### Data download

#csv is good
#Dataset are grouped into packages with multiple datasets 
#also called resources
#that are relevant to that topic. So we first look at the
#package using an unique key we obtained from the datasets webpage(see above)
#get package
resources<-list_package_resources("")
resources
#need that unique key from list of resources
#There is only one resource, get_resource() will load that. 
data <- resources %>% 
  get_resource()
data
##save data
write_csv(, "inputs/data/.csv")

         