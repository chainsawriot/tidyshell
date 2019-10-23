require(tidyverse)
require(fs)
require(lubridate)
require(ps)

### overload ls()
ls <- function(...) {
    fs::dir_info(...)
}

cd <- function(path) {
    setwd(path)
    return(path)
}

pwd <- function() {
    getwd()
}



cd("~/")
ls() %>% filter(modification_time > dmy("10-10-2019"))

ls("~/") %>% filter(modification_time > dmy("10-10-2019"))

ps() %>% filter(status == "running")
