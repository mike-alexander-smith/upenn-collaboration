library(cytomapper)

images <- loadImages("~/data/tiff")

masks <- loadImages("~/data/masks", as.is = TRUE)

channelNames = read.csv('~/data/horizon tiff.csv')

channelNames(images) = channelNames$Marker

mcols(images) <- mcols(masks) <- DataFrame(sampleid = names(images),
                                           visit = ifelse(grepl('D85',names(images)),'85','1'))

saveRDS(images, "~/data/RObjs/images.rds")
saveRDS(masks, "~/data/RObjs/masks.rds")

spe <- cytomapper::measureObjects(masks, 
                                  image = images, 
                                  img_id = "sampleid",
                                  return_as = "spe")

saveRDS(spe, "~/data/RObjs/spe.rds")

