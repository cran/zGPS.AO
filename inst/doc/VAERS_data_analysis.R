## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(zGPS.AO)

## -----------------------------------------------------------------------------
data(vaers_data)
dim(vaers_data)
vaers_data[1:10,]

## -----------------------------------------------------------------------------
data("dd.meddra")
dim(dd.meddra)
dd.meddra[1:10,]

## -----------------------------------------------------------------------------
data("merge_list")
merge_list[1:3]

## -----------------------------------------------------------------------------
big_data = zinb_analysis_tool(dd.meddra,
                              vaers_data,
                              merge_list,
                              n_perm = 2,
                              n_copies = 2)

## ---- warning = FALSE, fig.height = 8, fig.width = 11, out.width = '100%'-----
plot_heatmap(big_data)

## ---- eval=FALSE--------------------------------------------------------------
#  plotly_heatmap(big_data)

## ---- fig.height = 6,fig.width=8,out.width = '100%'---------------------------
plot_lambdas('HEPAB', 'Hepatobiliary investigations', big_data)

## ---- eval=FALSE--------------------------------------------------------------
#  plotly_lambdas('HEPAB', 'Hepatobiliary investigations', big_data)

