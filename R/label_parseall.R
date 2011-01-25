# from http://stackoverflow.com/questions/2403466/greek-letters-in-ggplot-strip-text/2456890#2456890

# get ggplot2 to do Greek in labels

label_parseall <- function(variable, value) {
    plyr::llply(value, function(x) parse(text = paste(x)))
}

