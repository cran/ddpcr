<<<<<<< HEAD
# ddpcr 1.3 2016-06-03
=======
# shinyjs 1.4 2016-06-24

Small internal changes to reflect `dplyr` update

# shinyjs 1.3 2016-06-03
>>>>>>> update to new dplyr; fixes #8

Prepare for re-release to CRAN and to F1000Research

# ddpcr 1.2.0

2016-03-22

- Added a 'dirty' bit to a plate, to keep track of whether any changes to the settings have been made that require a re-run of the analysis.  Both the shiny app and the command line inform the user if they are using a dirty plate object

- A few bug fixes in the shiny app (don't show in Advanced Settings section the settings that are already shown in Basic Settings, don't show Advanced Settings parameters of other plate types)
