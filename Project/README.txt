=============================! DISCLAIMER !==============================
All necessary packages are listed in the Rmd script and below but in the 
event that an error may occur, and an output like: "there is no package_x" 
or "cannot find function_x", all necessary packages can be found and 
installed from the following web address (but may require the user to 
research which package they need themselves):
https://cran.r-project.org/web/packages/available_packages_by_name.html 
==========================================================================

------------------------------------
PACKAGES
------------------------------------
Please copy and paste exact codes below into R markdown (designated first Rmd chunk will instruct you were to 
place the codes). The purpose of placing the installation codes here is to prevent repeated and unnecessary 
package installations if the user wishes to run the Rmd file multiple times.

install.packages("ggplot2")
install.packages("tidyr")
install.packages("dplyr")
install.packages("naniar")
install.packages("seqinr")
install.packages("MASS")
BiocManager::install(c("vegan"))
 
------------------------------------
Description
------------------------------------

This project will analyse 2 datasets that were collected with the intention of analysing fungal diversity between 
different hedgerows. The Rmd script attatched analyses this by reading in and combining these datasets, tidying 
the dataframes, visualising aspects of the dataframes for simple interpretation, and statistical analysis.

------------------------------------
Instructions
------------------------------------
Please save the zip file named "Y3865991" onto your computer and open Rmd file (in Rstudio).

Output for Rmd file is located in the .html file adjascent to the Rmd file.

The figures should appear in the .html file, however PDF versions are located in the Figures folder if necessary.

------------------------------------
References
------------------------------------

References are located in the .bib file whithin the folder titled "References" and are also present in Harvard 
formate in the .htmml file
