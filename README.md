# upenn-collaboration

## code description

Contains scripts to perform initial analysis of V. Werth hyperion images. should pull repository in home directory. The data should also be downloaded in a separate directory ~/data

* **startDocker.sh** - starts docker containers to do analysis
* **convertRtoSCE.Rmd** - converts Felix's R object to sce object
* **ReadData.Rmd** - reads in tiff images and masks, converts to cytoimage list
* **ReadData.r** - readData.Rmd and measureObjects.Rmd written in R script
* **PlotImages.Rmd** - placeholder to print out images in data folder as jpeg/png/whatever looks best
* **ImageQualityControl** - placeholder to do image/channel level QC to determine if slides, channels should be optimized in experiment


