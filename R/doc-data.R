#' Exp1_R25_prot dataset
#'
#' @name Exp1_R25_prot
#' @docType data
#' @keywords data
#' @description This dataset is the final outcome of a quantitative mass 
#' spectrometry-based proteomic analysis of two samples containing different 
#' concentrations of 48 human proteins (UPS1 standard from Sigma-Aldrich) 
#' within a constant yeast background (see Giai Gianetto et al. (2016) for 
#' details). It contains the abundance values of the different human and 
#' yeast proteins identified and quantified in these two conditions. The two 
#' conditions represent the measured abundances of proteins when respectively 
#' 25 fmol and 10 fmol of UPS1 human proteins were mixed with the yeast extract 
#' before mass spectrometry analyses. This results in a concentration ratio of 2.5.
#' Three technical replicates were acquired 
#' for each condition.
#' 
#' The dataset is either available as a CSV file 
#' (see inst/extdata/Exp1_R25_prot.txt), or as a \code{\link{MSnSet}} structure 
#' (Exp1_R25_prot.MSnset). In the latter case, the quantitative data are those of 
#' the raw intensities.
#' @usage data(Exp1_R25_prot)
#' @return An object of class \code{\link{MSnSet}} related to proteins
#' quantification.
#' @format An object of class \code{\link{MSnSet}} related to proteins
#' quantification. It contains 6 samples divided into two conditions
#' (25 fmol and 10 fmol) and 2384 proteins.
#' 
#' The data frame exprs(Exp1_R25_prot) contains six columns that are the 
#' quantitation of proteins for the six replicates. 
#' 
#' The data frame fData(Exp1_R25_prot) contains the meta data about the proteins.
#' 
#' The data frame pData(Exp1_R25_prot) contains the experimental design and gives 
#' few informations about the samples.
#' 
#' @references Cox J., Hein M.Y., Luber C.A., Paron I., Nagaraj N., Mann M. 
#' Accurate proteome-wide label-free quantification by delayed normalization 
#' and maximal peptide ratio extraction, termed MaxLFQ. Mol Cell Proteomics. 
#' 2014 Sep, 13(9):2513-26.
#' 
#' Giai Gianetto, Q., Combes, F., Ramus, C., Bruley, C., Coute, Y., Burger, 
#' T. (2016). Calibration plot for proteomics: A graphical tool to visually 
#' check the assumptions underlying FDR control in quantitative experiments. 
#' Proteomics, 16(1), 29-32.
#' 
#' @keywords datasets
NULL


#' Exp1_R25_pept dataset
#'
#' @name Exp1_R25_pept
#' @docType data
#' @keywords data
#' @description This dataset is the final outcome of a quantitative mass 
#' spectrometry-based proteomic analysis of two samples containing different 
#' concentrations of 48 human proteins (UPS1 standard from Sigma-Aldrich) 
#' within a constant yeast background (see Giai Gianetto et al. (2016) for 
#' details). It contains the abundance values of the different human and 
#' yeast peptides identified and quantified in these two conditions. The two 
#' conditions represent the measured abundances of peptides when respectively 
#' 25 fmol and 10 fmol of UPS1 human proteins were mixed with the yeast extract 
#' before mass spectrometry analyses. This results in a concentration ratio of 2.5. 
#' Three technical replicates were 
#' acquired for each condition.
#' 
#' The dataset is either available as a CSV file (see 
#' inst/extdata/Exp1_R25_pept.txt), or as a \code{\link{MSnSet}} structure 
#' (Exp1_R25_pept). In the latter case, the quantitative data are those of the 
#' raw intensities.
#' @usage data(Exp1_R25_pept)
#' @return An object of class \code{\link{MSnSet}} related to peptides
#' quantification.
#' @format An object of class \code{\link{MSnSet}} related to peptide
#' quantification. It contains 6 samples divided into two conditions
#' (25fmol and 10fmol) and 13918 peptides.
#' 
#' The data frame exprs(Exp1_R25_pept) contains six columns that are the 
#' quantitation of peptides for the six replicates. 
#' 
#' The data frame fData(Exp1_R25_pept) contains the meta data about the peptides.
#' 
#' The data frame pData(Exp1_R25_pept) contains the experimental design and gives 
#' few informations about the samples.
#' 
#' @references Cox J., Hein M.Y., Luber C.A., Paron I., Nagaraj N., Mann M. 
#' Accurate proteome-wide label-free quantification by delayed normalization 
#' and maximal peptide ratio extraction, termed MaxLFQ. Mol Cell Proteomics. 
#' 2014 Sep, 13(9):2513-26.
#' 
#' Giai Gianetto, Q., Combes, F., Ramus, C., Bruley, C., Coute, Y., 
#' Burger, T. (2016). Calibration plot for proteomics: A graphical tool to 
#' visually check the assumptions underlying FDR control in quantitative 
#' experiments. Proteomics, 16(1), 29-32.
#' 
#' @keywords datasets
NULL





#' Exp1_R2_prot dataset
#'
#' @name Exp1_R2_prot
#' @docType data
#' @keywords data
#' @description This dataset is the final outcome of a quantitative mass 
#' spectrometry-based proteomic analysis of two samples containing different 
#' concentrations of 48 human proteins (UPS1 standard from Sigma-Aldrich) 
#' within a constant yeast background (see Giai Gianetto et al. (2016) for 
#' details). It contains the abundance values of the different human and 
#' yeast proteins identified and quantified in these two conditions. The two 
#' conditions represent the measured abundances of proteins when respectively 
#' 5 fmol and 10 fmol of UPS1 human proteins were mixed with the yeast extract 
#' before mass spectrometry analyses. This results in a concentration ratio of 2.
#' Three technical replicates were acquired 
#' for each condition.
#' 
#' The dataset is either available as a CSV file 
#' (see inst/extdata/Exp1_R2_prot.txt), or as a \code{\link{MSnSet}} structure 
#' (Exp1_R2_prot.MSnset). In the latter case, the quantitative data are those of 
#' the raw intensities.
#' @usage data(Exp1_R2_prot)
#' @return An object of class \code{\link{MSnSet}} related to proteins
#' quantification.
#' @format An object of class \code{\link{MSnSet}} related to proteins
#' quantification. It contains 6 samples divided into two conditions
#' (10fmol and 5fmol) and 2394 proteins.
#' 
#' The data frame exprs(Exp1_R2_prot) contains six columns that are the 
#' quantitation of proteins for the six replicates. 
#' 
#' The data frame fData(Exp1_R2_prot) contains the meta data about the proteins.
#' 
#' The data frame pData(Exp1_R2_prot) contains the experimental design and gives 
#' few informations about the samples.
#' 
#' @references Cox J., Hein M.Y., Luber C.A., Paron I., Nagaraj N., Mann M. 
#' Accurate proteome-wide label-free quantification by delayed normalization 
#' and maximal peptide ratio extraction, termed MaxLFQ. Mol Cell Proteomics. 
#' 2014 Sep, 13(9):2513-26.
#' 
#' Giai Gianetto, Q., Combes, F., Ramus, C., Bruley, C., Coute, Y., Burger, 
#' T. (2016). Calibration plot for proteomics: A graphical tool to visually 
#' check the assumptions underlying FDR control in quantitative experiments. 
#' Proteomics, 16(1), 29-32.
#' 
#' @keywords datasets
NULL


#' Exp1_R2_pept dataset
#'
#' @name Exp1_R2_pept
#' @docType data
#' @keywords data
#' @description This dataset is the final outcome of a quantitative mass 
#' spectrometry-based proteomic analysis of two samples containing different 
#' concentrations of 48 human proteins (UPS1 standard from Sigma-Aldrich) 
#' within a constant yeast background (see Giai Gianetto et al. (2016) for 
#' details). It contains the abundance values of the different human and 
#' yeast peptides identified and quantified in these two conditions. The two 
#' conditions represent the measured abundances of peptides when respectively 
#' 5 fmol and 10 fmol of UPS1 human proteins were mixed with the yeast extract 
#' before mass spectrometry analyses. This results in a concentration ratio of 2.
#' Three technical replicates were acquired for each condition.
#' 
#' The dataset is either available as a CSV file (see 
#' inst/extdata/Exp1_R2_pept.txt), or as a \code{\link{MSnSet}} structure 
#' (Exp1_R2_pept). In the latter case, the quantitative data are those of the 
#' raw intensities.
#' @usage data(Exp1_R2_pept)
#' @return An object of class \code{\link{MSnSet}} related to peptides
#' quantification.
#' @format An object of class \code{\link{MSnSet}} related to peptide
#' quantification. It contains 6 samples divided into two conditions
#' (10fmol and 5fmol) and 14048 peptides.
#' 
#' The data frame exprs(Exp1_R2_pept) contains six columns that are the 
#' quantitation of peptides for the six replicates. 
#' 
#' The data frame fData(Exp1_R2_pept) contains the meta data about the peptides.
#' 
#' The data frame pData(Exp1_R2_pept) contains the experimental design and gives 
#' few informations about the samples.
#' 
#' @references Cox J., Hein M.Y., Luber C.A., Paron I., Nagaraj N., Mann M. 
#' Accurate proteome-wide label-free quantification by delayed normalization 
#' and maximal peptide ratio extraction, termed MaxLFQ. Mol Cell Proteomics. 
#' 2014 Sep, 13(9):2513-26.
#' 
#' Giai Gianetto, Q., Combes, F., Ramus, C., Bruley, C., Coute, Y., 
#' Burger, T. (2016). Calibration plot for proteomics: A graphical tool to 
#' visually check the assumptions underlying FDR control in quantitative 
#' experiments. Proteomics, 16(1), 29-32.
#' 
#' @keywords datasets
NULL

#################################################################################


#' Exp2_R2_prot dataset
#'
#' @name Exp2_R2_prot
#' @docType data
#' @keywords data
#' @description This dataset is the final outcome of a quantitative mass 
#' spectrometry-based proteomic analysis of two samples containing different 
#' concentrations of 48 human proteins (UPS1 standard from Sigma-Aldrich) 
#' within a constant yeast background (see Ramus et al. (2015) for 
#' details). It contains the abundance values of the different human and 
#' yeast peptides identified and quantified in these two conditions. The two 
#' conditions represent the measured abundances of peptides when respectively 
#' 25 fmol and 50 fmol of UPS1 human proteins were mixed with the yeast extract 
#' before mass spectrometry analyses. This results in a concentration ratio of 2.
#' Three technical replicates were 
#' acquired for each condition.
#' 
#' 
#' The dataset is either available as a CSV file 
#' (see inst/extdata/Exp2_R2_prot.txt), or as a \code{\link{MSnSet}} structure 
#' (Exp2_R2_prot.MSnset). In the latter case, the quantitative data are those of 
#' the raw intensities.
#' @usage data(Exp2_R2_prot)
#' @return An object of class \code{\link{MSnSet}} related to proteins
#' quantification.
#' @format An object of class \code{\link{MSnSet}} related to proteins
#' quantification. It contains 6 samples divided into two conditions
#' (25 fmol and 50 fmol) and 948 proteins.
#' 
#' The data frame exprs(Exp2_R2_prot) contains six columns that are the 
#' quantitation of proteins for the six replicates. 
#' 
#' The data frame fData(Exp2_R2_prot) contains the meta data about the proteins.
#' 
#' The data frame pData(Exp2_R2_prot) contains the experimental design and gives 
#' few informations about the samples.
#' 
#' @references 
#' Ramus C, Hovasse A, Marcellin M, Hesse AM, Mouton-Barbosa E, Bouyssie D, 
#' Vaca S, Carapito C, Chaoui K, Bruley C, Garin J, Cianferani S, Ferro M, 
#' Dorssaeler AV, Burlet-Schiltz O, Schaeffer C, Coute Y, Gonzalez de Peredo A.
#' Spiked proteomic standard dataset for testing label-free quantitative software 
#' and statistical methods. Data Brief. 2015 Dec 17;6:286-94.PMID: 26862574.
#' 
#' @keywords datasets
NULL






#################################################################################


#' Exp2_R2_pept dataset
#'
#' @name Exp2_R2_pept
#' @docType data
#' @keywords data
#' @description This dataset is the final outcome of a quantitative mass 
#' spectrometry-based proteomic analysis of two samples containing different 
#' concentrations of 48 human proteins (UPS1 standard from Sigma-Aldrich) 
#' within a constant yeast background (see Ramus et al. (2015) for 
#' details). It contains the abundance values of the different human and 
#' yeast peptides identified and quantified in these two conditions. The two 
#' conditions represent the measured abundances of peptides when respectively 
#' 25 fmol and 50 fmol of UPS1 human proteins were mixed with the yeast extract 
#' before mass spectrometry analyses. This results in a concentration ratio of 2. 
#' Three technical replicates were acquired for each condition.
#' 
#' The dataset is either available as a CSV file 
#' (see inst/extdata/Exp2_R2_pept.txt), or as a \code{\link{MSnSet}} structure 
#' (Exp2_R2_pept.MSnset). In the latter case, the quantitative data are those of 
#' the raw intensities.
#' @usage data(Exp2_R2_pept)
#' @return An object of class \code{\link{MSnSet}} related to peptides
#' quantification.
#' @format An object of class \code{\link{MSnSet}} related to peptides
#' quantification. It contains 6 samples divided into two conditions
#' (25fmol and 50fmol) and 5390 peptides.
#' 
#' The data frame exprs(Exp2_R2_pept) contains six columns that are the 
#' quantitation of peptides for the six replicates. 
#' 
#' The data frame fData(Exp2_R2_pept) contains the meta data about the peptides
#' 
#' The data frame pData(Exp2_R2_pept) contains the experimental design and gives 
#' few informations about the samples.
#' 
#' @references
#' Ramus C, Hovasse A, Marcellin M, Hesse AM, Mouton-Barbosa E, Bouyssie D, 
#' Vaca S, Carapito C, Chaoui K, Bruley C, Garin J, Cianferani S, Ferro M, 
#' Dorssaeler AV, Burlet-Schiltz O, Schaeffer C, Coute Y, Gonzalez de Peredo A.
#' Spiked proteomic standard dataset for testing label-free quantitative software 
#' and statistical methods. Data Brief. 2015 Dec 17;6:286-94.PMID: 26862574.
#' 
#' @keywords datasets
NULL




#################################################################################


#' Exp2_R10_prot dataset
#'
#' @name Exp2_R10_prot
#' @docType data
#' @keywords data
#' @description This dataset is the final outcome of a quantitative mass 
#' spectrometry-based proteomic analysis of two samples containing different 
#' concentrations of 48 human proteins (UPS1 standard from Sigma-Aldrich) 
#' within a constant yeast background (see Ramus et al. (2015) for 
#' details). It contains the abundance values of the different human and 
#' yeast peptides identified and quantified in these two conditions. The two 
#' conditions represent the measured abundances of peptides when respectively 
#' 10 fmol and 100 fmol of UPS1 human proteins were mixed with the yeast extract 
#' before mass spectrometry analyses. This results in a concentration ratio of 10. 
#' Three technical replicates were acquired for each condition.
#' 
#' 
#' The dataset is either available as a CSV file 
#' (see inst/extdata/Exp2_R10_prot.txt), or as a \code{\link{MSnSet}} structure 
#' (Exp2_R10_prot.MSnset). In the latter case, the quantitative data are those of 
#' the raw intensities.
#' @usage data(Exp2_R10_prot)
#' @return An object of class \code{\link{MSnSet}} related to proteins
#' quantification.
#' @format An object of class \code{\link{MSnSet}} related to proteins
#' quantification. It contains 6 samples divided into two conditions
#' (10 fmol and 100 fmol) and 948 proteins.
#' 
#' The data frame exprs(Exp2_R10_prot) contains six columns that are the 
#' quantitation of proteins for the six replicates. 
#' 
#' The data frame fData(Exp2_R10_prot) contains the meta data about the proteins.
#' 
#' The data frame pData(Exp2_R10_prot) contains the experimental design and gives 
#' few informations about the samples.
#' 
#' @references
#' Ramus C, Hovasse A, Marcellin M, Hesse AM, Mouton-Barbosa E, Bouyssie D, 
#' Vaca S, Carapito C, Chaoui K, Bruley C, Garin J, Cianferani S, Ferro M, 
#' Dorssaeler AV, Burlet-Schiltz O, Schaeffer C, Coute Y, Gonzalez de Peredo A.
#' Spiked proteomic standard dataset for testing label-free quantitative software 
#' and statistical methods. Data Brief. 2015 Dec 17;6:286-94.PMID: 26862574.
#' 
#' @keywords datasets
NULL






#################################################################################


#' Exp2_R10_pept dataset
#'
#' @name Exp2_R10_pept
#' @docType data
#' @keywords data
#' @description This dataset is the final outcome of a quantitative mass 
#' spectrometry-based proteomic analysis of two samples containing different 
#' concentrations of 48 human proteins (UPS1 standard from Sigma-Aldrich) 
#' within a constant yeast background (see Ramus et al. (2015) for 
#' details). It contains the abundance values of the different human and 
#' yeast peptides identified and quantified in these two conditions. The two 
#' conditions represent the measured abundances of peptides when respectively 
#' 10 fmol and 100 fmol of UPS1 human proteins were mixed with the yeast extract 
#' before mass spectrometry analyses. This results in a concentration ratio of 10. 
#' Three technical replicates were acquired for each condition.
#' 
#' 
#' The dataset is either available as a CSV file 
#' (see inst/extdata/Exp2_R10_pept.txt), or as a \code{\link{MSnSet}} structure 
#' (Exp2_R10_pept.MSnset). In the latter case, the quantitative data are those of 
#' the raw intensities.
#' @usage data(Exp2_R10_pept)
#' @return An object of class \code{\link{MSnSet}} related to peptides
#' quantification.
#' @format An object of class \code{\link{MSnSet}} related to peptides
#' quantification. It contains 6 samples divided into two conditions
#' (10 fmol and 100 fmol) and 5633 peptides.
#' 
#' The data frame exprs(Exp2_R10_pept) contains six columns that are the 
#' quantitation of peptides for the six replicates. 
#' 
#' The data frame fData(Exp2_R10_pept) contains the meta data about the peptides
#' 
#' The data frame pData(Exp2_R10_pept) contains the experimental design and gives 
#' few informations about the samples.
#' 
#' @references
#' Ramus C, Hovasse A, Marcellin M, Hesse AM, Mouton-Barbosa E, Bouyssie D, 
#' Vaca S, Carapito C, Chaoui K, Bruley C, Garin J, Cianferani S, Ferro M, 
#' Dorssaeler AV, Burlet-Schiltz O, Schaeffer C, Coute Y, Gonzalez de Peredo A.
#' Spiked proteomic standard dataset for testing label-free quantitative software 
#' and statistical methods. Data Brief. 2015 Dec 17;6:286-94.PMID: 26862574.
#' 
#' @keywords datasets
NULL







#################################################################################


#' Exp2_R100_prot dataset
#'
#' @name Exp2_R100_prot
#' @docType data
#' @keywords data
#' @description This dataset is the final outcome of a quantitative mass 
#' spectrometry-based proteomic analysis of two samples containing different 
#' concentrations of 48 human proteins (UPS1 standard from Sigma-Aldrich) 
#' within a constant yeast background (see Ramus et al. (2015) for 
#' details). It contains the abundance values of the different human and 
#' yeast peptides identified and quantified in these two conditions. The two 
#' conditions represent the measured abundances of peptides when respectively 
#' 1 fmol and 100 fmol of UPS1 human proteins were mixed with the yeast extract 
#' before mass spectrometry analyses. This results in a concentration ratio of 100.
#' Three technical replicates were acquired for each condition.
#' 
#' 
#' The dataset is either available as a CSV file 
#' (see inst/extdata/Exp2_R100_prot.txt), or as a \code{\link{MSnSet}} structure 
#' (Exp2_R100_prot.MSnset). In the latter case, the quantitative data are those of 
#' the raw intensities.
#' @usage data(Exp2_R100_prot)
#' @return An object of class \code{\link{MSnSet}} related to proteins
#' quantification.
#' @format An object of class \code{\link{MSnSet}} related to proteins
#' quantification. It contains 6 samples divided into two conditions
#' (1 fmol and 100 fmol) and 923 proteins.
#' 
#' The data frame exprs(Exp2_R100_prot) contains six columns that are the 
#' quantitation of proteins for the six replicates. 
#' 
#' The data frame fData(Exp2_R100_prot) contains the meta data about the proteins.
#' 
#' The data frame pData(Exp2_R100_prot) contains the experimental design and gives 
#' few informations about the samples.
#' 
#' @references
#' Ramus C, Hovasse A, Marcellin M, Hesse AM, Mouton-Barbosa E, Bouyssie D, 
#' Vaca S, Carapito C, Chaoui K, Bruley C, Garin J, Cianferani S, Ferro M, 
#' Dorssaeler AV, Burlet-Schiltz O, Schaeffer C, Coute Y, Gonzalez de Peredo A.
#' Spiked proteomic standard dataset for testing label-free quantitative software 
#' and statistical methods. Data Brief. 2015 Dec 17;6:286-94.PMID: 26862574.
#' 
#' @keywords datasets
NULL






#################################################################################


#' Exp2_R100_pept dataset
#'
#' @name Exp2_R100_pept
#' @docType data
#' @keywords data
#' @description This dataset is the final outcome of a quantitative mass 
#' spectrometry-based proteomic analysis of two samples containing different 
#' concentrations of 48 human proteins (UPS1 standard from Sigma-Aldrich) 
#' within a constant yeast background (see Ramus et al. (2015) for 
#' details). It contains the abundance values of the different human and 
#' yeast peptides identified and quantified in these two conditions. The two 
#' conditions represent the measured abundances of peptides when respectively 
#' 1 fmol and 100 fmol of UPS1 human proteins were mixed with the yeast extract 
#' before mass spectrometry analyses. This results in a concentration ratio of 100.
#' Three technical replicates were acquired for each condition.
#' 
#' 
#' The dataset is either available as a CSV file 
#' (see inst/extdata/Exp2_R100_pept.txt), or as a \code{\link{MSnSet}} structure 
#' (Exp2_R100_peptt.MSnset). In the latter case, the quantitative data are those of 
#' the raw intensities.
#' @usage data(Exp2_R100_pept)
#' @return An object of class \code{\link{MSnSet}} related to peptides
#' quantification.
#' @format An object of class \code{\link{MSnSet}} related to peptides
#' quantification. It contains 6 samples divided into two conditions
#' (1 fmol and 100 fmol) and 5684 peptides.
#' 
#' The data frame exprs(Exp2_R100_pept) contains six columns that are the 
#' quantitation of peptides for the six replicates. 
#' 
#' The data frame fData(Exp2_R100_pept) contains the meta data about the peptides
#' 
#' The data frame pData(Exp2_R100_pept) contains the experimental design and gives 
#' few informations about the samples.
#' 
#' @references
#' Ramus C, Hovasse A, Marcellin M, Hesse AM, Mouton-Barbosa E, Bouyssie D, 
#' Vaca S, Carapito C, Chaoui K, Bruley C, Garin J, Cianferani S, Ferro M, 
#' Dorssaeler AV, Burlet-Schiltz O, Schaeffer C, Coute Y, Gonzalez de Peredo A.
#' Spiked proteomic standard dataset for testing label-free quantitative software 
#' and statistical methods. Data Brief. 2015 Dec 17;6:286-94.PMID: 26862574.
#' 
#' @keywords datasets
NULL
