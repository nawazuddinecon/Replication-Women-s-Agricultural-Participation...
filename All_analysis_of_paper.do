**************************************
*Code Created date: 15 Jan 2025
*Code Checked date: 20 Feb 2025
*Code purpose: Women's Agricultural Participation and the Adoption of Clean Energy: Evidence from India
*Code created by: Dr Nawazuddin Ahmed (nawazuddin.econ@gmail.com)
*Code Checked by: Dr Nawazuddin Ahmed (nawazuddin.econ@gmail.com)
***************************************
*******The Codes belong to paper titled "Women's Agricultural Participation and the Adoption of Clean Energy: Evidence from India" (Agricultural and Food Economics)
*****Final Models
use working_sample_2.dta,clear
*All
***********Choice Cooking

quietly svy: biprobit (choice_cooking= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_hh ) (agri_hh = age age2 yr_sch i.female i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1
est store model1
margins, dydx(*) predict(pmarg1) //pmarg1 means equation 1
quietly svy: biprobit (choice_cooking= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_hh ) (agri_hh = age age2 yr_sch i.female i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1
margins, dydx(*) predict(pmarg2) //pmarg1 means equation 2

quietly svy: biprobit (choice_cooking= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_farmer ) (agri_farmer = age age2 yr_sch i.female i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1
est store model2
margins, dydx(*) predict(pmarg1)
quietly svy: biprobit (choice_cooking= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_farmer ) (agri_farmer = age age2 yr_sch i.female i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1
margins, dydx(*) predict(pmarg2)

quietly svy: biprobit (choice_cooking= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_labour ) (agri_labour = age age2 yr_sch i.female i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1
est store model3
margins, dydx(*) predict(pmarg1)
quietly svy: biprobit (choice_cooking= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_labour ) (agri_labour = age age2 yr_sch i.female i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1
margins, dydx(*) predict(pmarg2)

***********Choice Extreme

quietly svy: biprobit (choice_mismatch_extreme= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_hh ) (agri_hh = age age2 yr_sch i.female i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1
est store model8
margins, dydx(*) predict(pmarg1)
quietly svy: biprobit (choice_mismatch_extreme= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_hh ) (agri_hh = age age2 yr_sch i.female i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1
margins, dydx(*) predict(pmarg2)

quietly svy: biprobit (choice_mismatch_extreme= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_farmer ) (agri_farmer = age age2 yr_sch i.female i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1
est store model9
margins, dydx(*) predict(pmarg1)
quietly svy: biprobit (choice_mismatch_extreme= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_farmer ) (agri_farmer = age age2 yr_sch i.female i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1
margins, dydx(*) predict(pmarg2)

quietly svy: biprobit (choice_mismatch_extreme= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_labour ) (agri_labour = age age2 yr_sch i.female i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1
est store model10
margins, dydx(*) predict(pmarg1)
quietly svy: biprobit (choice_mismatch_extreme= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_labour ) (agri_labour = age age2 yr_sch i.female i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1
margins, dydx(*) predict(pmarg2)

**
***Female
***********Choice Cooking
quietly svy: biprobit (choice_cooking= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_hh ) (agri_hh = age age2 yr_sch i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1 & female==1
est store model5
margins, dydx(*) predict(pmarg1)
quietly svy: biprobit (choice_cooking= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_hh ) (agri_hh = age age2 yr_sch i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1 & female==1
margins, dydx(*) predict(pmarg2)

quietly svy: biprobit (choice_cooking= female_head  ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_farmer ) (agri_farmer = age age2 yr_sch i.married  hh_size i.SRC  i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1 & female==1
est store model6
margins, dydx(*) predict(pmarg1)
quietly svy: biprobit (choice_cooking= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_farmer ) (agri_farmer = age age2 yr_sch i.married  hh_size i.SRC  i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1 & female==1
margins, dydx(*) predict(pmarg2)


quietly svy: biprobit (choice_cooking=  female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_labour ) (agri_labour = age age2 yr_sch i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1 & female==1
est store model7
margins, dydx(*) predict(pmarg1)
quietly svy: biprobit (choice_cooking= female_head  ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_labour ) (agri_labour = age age2 yr_sch i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1 & female==1
margins, dydx(*) predict(pmarg2)

***********Choice Extreme

quietly svy: biprobit (choice_mismatch_extreme= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_hh ) (agri_hh = age age2 yr_sch i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1 & female==1
est store model12
margins, dydx(*) predict(pmarg1)
quietly svy: biprobit (choice_mismatch_extreme= female_head  ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_hh ) (agri_hh = age age2 yr_sch i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1 & female==1
margins, dydx(*) predict(pmarg2)

quietly svy: biprobit (choice_mismatch_extreme= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_farmer ) (agri_farmer = age age2 yr_sch i.married  hh_size i.SRC  i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1 & female==1
est store model13
margins, dydx(*) predict(pmarg1)
quietly svy: biprobit (choice_mismatch_extreme= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_farmer ) (agri_farmer = age age2 yr_sch i.married  hh_size i.SRC  i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1 & female==1
margins, dydx(*) predict(pmarg2)

quietly svy: biprobit (choice_mismatch_extreme= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_labour ) (agri_labour = age age2 yr_sch i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1 & female==1
est store model14
margins, dydx(*) predict(pmarg1)
quietly svy: biprobit (choice_mismatch_extreme= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_labour ) (agri_labour = age age2 yr_sch i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1 & female==1
margins, dydx(*) predict(pmarg2)

 **Produce Table 2
 esttab    model1 model2 model3   model8 model9 model10 using "Abcd.csv",label replace b(a4 %9.4f) se(4)  star(* 0.10 ** 0.05 *** 0.01) nogaps wide
 
 **Produce Table 3
  esttab    model5 model6 model7   model12 model13 model14 using "Abcd_1.csv",label replace b(a4 %9.4f) se(4)  star(* 0.10 ** 0.05 *** 0.01) nogaps wide
****************************************************************************
use working_sample_2.dta,clear
gen WPR=1 if ups_acty<=51
replace WPR=0 if ups_acty>51

gen emp_type=1 if agri_farmer==1
replace emp_type=2 if agri_labour==1
replace emp_type=3 if agri_farmer==0 & WPR==1 & emp_type!=1 & emp_type!=2
replace emp_type=3 if agri_labour==0 & WPR==1 & emp_type!=1 & emp_type!=2

catplot WPR sex  if sex<=2 & WPR==1, percent(WPR) recast(bar) asyvars over(emp_type)

tab sex WPR  [aweight=Multiplier] if sex<=2, nofr col
tab sex WPR  [aweight=Multiplier] if sex<=2 & Sector==1, nofr col
tab sex WPR  [aweight=Multiplier] if sex<=2 & Sector==2, nofr col
tab sex agri_hh  [aweight=Multiplier] if sex<=2, nofr r
tab sex emp_type  [aweight=Multiplier] if sex<=2, nofr r
tab sex agri_farmer  [aweight=Multiplier] if sex<=2, nofr r
tab sex agri_labour [aweight=Multiplier] if sex<=2, nofr r
***save outputs in Results_graphs.csv


import delimited Results_graphs.csv,clear
keep if graph==1

catplot  sex type [aweight=freq]  , blabel(bar, format(%9.1f)) recast(bar)     asyvars  var2opts(gap(50) label(labsize(small)) relabel(1 "All" 2 "Rural" 3  "Urban" 4 "Agriculture" 5 `""Agriculture" "Farmer""' 6  `"" Agriculture" "Labour""'))  var1opts(sort(1) descending gap(25))  blabel(bar, format(%4.1f)) outergap(*.2)  title("Gender-wise Distribution of workers", size(medsmall) color(black) position(12) ring(7)) graphregion(fcolor(white)) note("")  ytitle("Percent") subtitle(,bcolor(white) size(medsmall)) bar(1, color(maroon)) legend(pos (6) col(2))
graph export "abcd.emf", as(emf)

import delimited Results_graphs.csv,clear
catplot  type   [aweight=freq] if graph==2 , blabel(bar, format(%9.2f)) recast(bar)     asyvars  var2opts(gap(250) sort(1) label(labsize(small)))  var1opts(sort(1) descending gap(25))  blabel(bar, format(%4.2f)) outergap(*.2)   graphregion(fcolor(white)) note("")  ytitle("Percent") subtitle(,bcolor(white) size(medsmall)) bar(1, color(maroon)) by(sex, cols(3) legend(pos(6) col(3) size(medsmall)))  legend(label(1 "Agriculture") label(2 `"Agriculture Farmer"') label(3  `"Agriculture Labour"'))  title("Distribution of workers in Agriculture Sector", size(medsmall) color(black) position(12) ring(7)) graphregion(fcolor(white))
graph export "Distribution of workers in Agriculture Sector.emf", as(emf)

tab sex agri_hh [aweight=Multiplier] if sex<=2 & WPR==1, nofr r
tab sex agri_farmer [aweight=Multiplier] if sex<=2 & WPR==1, nofr r


tab choice_cooking
tab choice_heating
tab choice_mismatch

tab choice_cooking[aweight=Multiplier] if dup==1
tab choice_cooking[aweight=Multiplier] if dup==1 & Sector==1
tab choice_cooking[aweight=Multiplier] if dup==1 & Sector==2

tab choice_heating[aweight=Multiplier] if dup==1 
tab choice_heating[aweight=Multiplier] if dup==1 & Sector==1
tab choice_heating[aweight=Multiplier] if dup==1 & Sector==2

tab choice_mismatch[aweight=Multiplier] if dup==1
tab choice_mismatch[aweight=Multiplier] if dup==1 & Sector==1
tab choice_mismatch[aweight=Multiplier] if dup==1 & Sector==2

tab choice_mismatch_extreme[aweight=Multiplier] if dup==1
tab choice_mismatch_extreme[aweight=Multiplier] if dup==1 & Sector==1
tab choice_mismatch_extreme[aweight=Multiplier] if dup==1 & Sector==2


import delimited Results_graphs.csv,  clear
drop sex freq type order
ren type_1 type
ren freq_1 freq
drop if type_2==5
replace type_2=3 if type_2==4
catplot   type sector [aweight=freq]  if type_2==1, blabel(bar, format(%9.1f)) recast(bar)     asyvars    var2opts(gap(100) relabel(1 "All" 2 "Rural" 3  "Urban"))  var1opts(gap(8))  blabel(bar, format(%4.1f)) outergap(*.2)  title("Energy Choice: Cooking", size(medsmall) color(black) position(12) ring(7)) graphregion(fcolor(white)) note("")  ytitle("Percent") subtitle(,bcolor(white) size(medsmall)) 

graph export "Energy_Choice_Cooking.emf", as(emf)

catplot   type sector [aweight=freq]  if type_2==2, blabel(bar, format(%9.1f)) recast(bar)     asyvars  var2opts(gap(100) relabel(1 "All" 2 "Rural" 3  "Urban"))  var1opts(gap(8))  blabel(bar, format(%4.1f)) outergap(*.2)  title("Energy Choice: Heating", size(medsmall) color(black) position(12) ring(7)) graphregion(fcolor(white)) note("")  ytitle("Percent") subtitle(,bcolor(white) size(medsmall))
graph export "Energy_Choice_Heating.emf", as(emf)


catplot   type sector [aweight=freq]  if type_2==3, blabel(bar, format(%9.1f)) recast(bar)     asyvars  var2opts(gap(100) relabel(1 "All" 2 "Rural" 3  "Urban"))  var1opts(gap(8))  blabel(bar, format(%4.1f)) outergap(*.2)  title("Energy Choice: Mix", size(medsmall) color(black) position(12) ring(7)) graphregion(fcolor(white)) note("")  ytitle("Percent") subtitle(,bcolor(white) size(medsmall))

graph export "Energy_Choice_Mix.emf", as(emf)
************

gen agri_hh_1=1 if ups_nic<="03" & !missing(ups_nic)
replace agri_hh_1=0 if ups_nic>"03" & !missing(ups_nic)

gen agri_farmer_1=1 if WPR==1 & inlist(ups_nco, "61", "62", "63") & agri_hh_1==1
replace agri_farmer_1=0 if WPR==1 & !inlist(ups_nco, "61", "62", "63")

gen agri_labour_1=1 if WPR==1 & agri_farmer_1!=1 & agri_hh_1==1
replace agri_labour_1=0 if WPR==1 & agri_labour_1!=1

******Descriptive Statistics
**produce Table 1

use  blck_1_3_4_8_2_9,clear
***Summary Sstatistics
**All Sample
*From Energy Choice Equation
proportion choice_cooking female_head     SRC mpce_5q agri_hh agri_farmer  agri_labour if Sector==1, percent
proportion choice_mismatch_extreme female_head     SRC mpce_5q agri_hh agri_farmer  agri_labour if Sector==1, percent
estpost tabstat ed_head  avg_ed age_head hh_size if Sector==1, statistics(mean sd) columns(statistics) 
*From Employment Selection Equation
proportion female married   land_cat  distance_proxy if Sector==1, percent
estpost tabstat age age2 yr_sch hh_size share_agri_fsu if Sector==1, statistics(mean sd) columns(statistics) listwise

**Female Sample
*from Energy Choice Equation
proportion  female_head choice_cooking  SRC mpce_5q agri_hh agri_farmer  agri_labour if Sector==1 & female==1, percent
proportion   choice_mismatch_extreme   SRC mpce_5q agri_hh agri_farmer  agri_labour if Sector==1 & female==1, percent
estpost tabstat  ed_head avg_ed age_head hh_size if Sector==1 & female==1, statistics(mean sd) columns(statistics) 
*from Employment Selection Equation
proportion  married   land_cat  distance_proxy if Sector==1 & female==1, percent
estpost tabstat age age2 yr_sch hh_size share_agri_fsu if Sector==1 & female==1, statistics(mean sd) columns(statistics) listwis

***
use working_sample_2.dta,clear
**************Interaction Analysis
***Choice Cooking: Full Sample
quietly svy: biprobit (choice_cooking= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_hh ) (agri_hh = age age2 yr_sch i.female i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1
margins agri_hh#mpce_5q, predict(pmarg1) saving(Interaction_1_1_Full, replace)
marginsplot,  x(mpce_5q )  title("Work in Agriculture and MPCE Quantiles", fcolor(black) size(medsmall) placement(s) justification(right) ) xlab(, glcolor(gs15) glpattern(solid)   )  ylab(, glcolor(gs15) glpattern(solid))   legend(order(4 3) label(4 "Work in Agriculture") label(3 "Do Not Work in Agriculture") position(6) col(2)) xsize(6.5) ysize(4.5)  xtitle(5 MPCE Quantiles) plot1opts(msymbol(Oh)  msize(small)) plot2opts(msymbol(Th)  msize(small)) saving(Interaction_1_1_Full, replace) ytitle("") 

quietly svy: biprobit (choice_cooking= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_farmer ) (agri_farmer = age age2 yr_sch i.female i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1
margins agri_farmer#mpce_5q, predict(pmarg1)     saving(Interaction_1_2_Full, replace)
marginsplot,  x(mpce_5q )  title("Farmer and MPCE Quantiles", fcolor(black) size(medsmall) placement(s) justification(right) ) xlab(, glcolor(gs15) glpattern(solid)   )  ylab(, glcolor(gs15) glpattern(solid))  legend(order(4 3) label(4 "Work as Farmer") label(3 "Do Not Work in Agriculture") position(6) col(2)) xsize(6.5) ysize(4.5)  xtitle(5 MPCE Quantiles) plot1opts(msymbol(Oh)  msize(small)) plot2opts(msymbol(Th)  msize(small))  saving(Interaction_1_2_Full, replace) ytitle("")

quietly svy: biprobit (choice_cooking= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_labour ) (agri_labour = age age2 yr_sch i.female i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1
margins agri_labour#mpce_5q, predict(pmarg1) saving(Interaction_1_3_Full, replace)
marginsplot,  x(mpce_5q )  title("Agricultural Labour and MPCE Quantiles", fcolor(black) size(medsmall) placement(s) justification(right) ) xlab(, glcolor(gs15) glpattern(solid)   )  ylab(, glcolor(gs15) glpattern(solid)) legend(order(4 3) label(4 "Work as Agricultural Labour") label(3 "Do Not Work in Agriculture") position(6) col(2)) xsize(6.5) ysize(4.5)  xtitle(5 MPCE Quantiles) plot1opts(msymbol(Oh)  msize(small)) plot2opts(msymbol(Th)  msize(small)) saving(Interaction_1_3_Full, replace) ytitle("")

grc1leg  Interaction_1_1_Full.gph   Interaction_1_2_Full.gph  Interaction_1_3_Full.gph, col(3)  ycommon xcommon l1(Pr(Choice Cooking=1), size(small)) title("Interaction Effects and Average Predicted Probablities with 95% CIs (Full Sample)", size(medsmall))  saving(Fig.4_Interaction_Cooking_Full, replace)
graph export Fig.4_Interaction_Cooking_Full.emf, as(emf)  replace

***Choice Extreme: Full Sample
quietly svy: biprobit (choice_mismatch_extreme= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_hh ) (agri_hh = age age2 yr_sch i.female i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1
margins agri_hh#mpce_5q, predict(pmarg1) saving(Interaction_2_1_Full, replace)
marginsplot,  x(mpce_5q )  title("Work in Agriculture and MPCE Quantiles", fcolor(black) size(medsmall) placement(s) justification(right) ) xlab(, glcolor(gs15) glpattern(solid)   )  ylab(, glcolor(gs15) glpattern(solid))   legend(order(4 3) label(4 "Work in Agriculture") label(3 "Do Not Work in Agriculture") position(6) col(2)) xsize(6.5) ysize(4.5)  xtitle(5 MPCE Quantiles) plot1opts(msymbol(Oh)  msize(small)) plot2opts(msymbol(Th)  msize(small)) saving(Interaction_2_1_Full, replace) ytitle("")

quietly svy: biprobit (choice_mismatch_extreme= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_farmer ) (agri_farmer = age age2 yr_sch i.female i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1
margins agri_farmer#mpce_5q, predict(pmarg1) saving(Interaction_2_2_Full, replace)
marginsplot,  x(mpce_5q )  title("Farmer and MPCE Quantiles", fcolor(black) size(medsmall) placement(s) justification(right) ) xlab(, glcolor(gs15) glpattern(solid)   )  ylab(, glcolor(gs15) glpattern(solid))  legend(order(4 3) label(4 "Work as Farmer") label(3 "Do Not Work in Agriculture") position(6) col(2)) xsize(6.5) ysize(4.5)  xtitle(5 MPCE Quantiles) plot1opts(msymbol(Oh)  msize(small)) plot2opts(msymbol(Th)  msize(small))  saving(Interaction_2_2_Full, replace) ytitle("")


quietly svy: biprobit (choice_mismatch_extreme= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_labour ) (agri_labour = age age2 yr_sch i.female i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1
margins agri_labour#mpce_5q, predict(pmarg1) saving(Interaction_2_3_Full, replace)
marginsplot,  x(mpce_5q )  title("Agricultural Labour and MPCE Quantiles", fcolor(black) size(medsmall) placement(s) justification(right) ) xlab(, glcolor(gs15) glpattern(solid)   )  ylab(, glcolor(gs15) glpattern(solid)) legend(order(4 3) label(4 "Work as Agricultural Labour") label(3 "Do Not Work in Agriculture") position(6) col(2)) xsize(6.5) ysize(4.5)  xtitle(5 MPCE Quantiles) plot1opts(msymbol(Oh)  msize(small)) plot2opts(msymbol(Th)  msize(small)) saving(Interaction_2_3_Full, replace) ytitle("")

grc1leg  Interaction_2_1_Full.gph   Interaction_2_2_Full.gph  Interaction_2_3_Full.gph, col(3)  ycommon xcommon l1(Pr(Choice Mismatch Extreme=1), size(small)) title("Interaction Effects and Average Predicted Probablities with 95% CIs (Full Sample)", size(medsmall))  saving(Fig.5_Interaction_Extreme_Full, replace)
graph export Fig.5_Interaction_Extreme_Full.emf, as(emf) replace
***Choice Cooking: Female Sample
quietly svy: biprobit (choice_cooking= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_hh ) (agri_hh = age age2 yr_sch i.female i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1 & female==1
margins agri_hh#mpce_5q, predict(pmarg1) saving(Interaction_3_1_Full, replace)
marginsplot,  x(mpce_5q )  title("Work in Agriculture and MPCE Quantiles", fcolor(black) size(medsmall) placement(s) justification(right) ) xlab(, glcolor(gs15) glpattern(solid)   )  ylab(, glcolor(gs15) glpattern(solid))   legend(order(4 3) label(4 "Work in Agriculture") label(3 "Do Not Work in Agriculture") position(6) col(2)) xsize(6.5) ysize(4.5)  xtitle(5 MPCE Quantiles) plot1opts(msymbol(Oh)  msize(small)) plot2opts(msymbol(Th)  msize(small)) saving(Interaction_3_1_Full, replace) ytitle("")

quietly svy: biprobit (choice_cooking= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_farmer ) (agri_farmer = age age2 yr_sch i.female i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1 & female==1
margins agri_farmer#mpce_5q, predict(pmarg1) saving(Interaction_3_2_Full, replace)
marginsplot,  x(mpce_5q )  title("Farmer and MPCE Quantiles", fcolor(black) size(medsmall) placement(s) justification(right) ) xlab(, glcolor(gs15) glpattern(solid)   )  ylab(, glcolor(gs15) glpattern(solid))  legend(order(4 3) label(4 "Work as Farmer") label(3 "Do Not Work in Agriculture") position(6) col(2)) xsize(6.5) ysize(4.5)  xtitle(5 MPCE Quantiles) plot1opts(msymbol(Oh)  msize(small)) plot2opts(msymbol(Th)  msize(small))  saving(Interaction_3_2_Full, replace) ytitle("")

quietly svy: biprobit (choice_cooking= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_labour ) (agri_labour = age age2 yr_sch i.female i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1 & female==1
margins agri_labour#mpce_5q, predict(pmarg1)  saving(Interaction_3_3_Full, replace)
marginsplot,  x(mpce_5q )  title("Agricultural Labour and MPCE Quantiles", fcolor(black) size(medsmall) placement(s) justification(right) ) xlab(, glcolor(gs15) glpattern(solid)   )  ylab(, glcolor(gs15) glpattern(solid)) legend(order(4 3) label(4 "Work as Agricultural Labour") label(3 "Do Not Work in Agriculture") position(6) col(2)) xsize(6.5) ysize(4.5)  xtitle(5 MPCE Quantiles) plot1opts(msymbol(Oh)  msize(small)) plot2opts(msymbol(Th)  msize(small)) saving(Interaction_3_3_Full, replace) ytitle("")

grc1leg  Interaction_3_1_Full.gph   Interaction_3_2_Full.gph  Interaction_3_3_Full.gph, col(3)  ycommon xcommon l1(Pr(Choice Cooking=1), size(small)) title("Interaction Effects and Average Predicted Probablities with 95% CIs (Female Sample)", size(medsmall))  saving(Fig.6_Interaction_Cooking_Female, replace)
graph export Fig.6_Interaction_Cooking_Female.emf, as(emf) replace

***Choice Extreme: Female Sample
quietly svy: biprobit (choice_mismatch_extreme= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_hh ) (agri_hh = age age2 yr_sch i.female i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1 & female==1
margins agri_hh#mpce_5q, predict(pmarg1) saving(Interaction_4_1_Full, replace)
marginsplot,  x(mpce_5q )  title("Work in Agriculture and MPCE Quantiles", fcolor(black) size(medsmall) placement(s) justification(right) ) xlab(, glcolor(gs15) glpattern(solid)   )  ylab(, glcolor(gs15) glpattern(solid))   legend(order(4 3) label(4 "Work in Agriculture") label(3 "Do Not Work in Agriculture") position(6) col(2)) xsize(6.5) ysize(4.5)  xtitle(5 MPCE Quantiles) plot1opts(msymbol(Oh)  msize(small)) plot2opts(msymbol(Th)  msize(small)) saving(Interaction_4_1_Full, replace) ytitle("")

quietly svy: biprobit (choice_mismatch_extreme= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_farmer ) (agri_farmer = age age2 yr_sch i.female i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1 & female==1
margins agri_farmer#mpce_5q, predict(pmarg1) saving(Interaction_4_2_Full, replace)
marginsplot,  x(mpce_5q )  title("Farmer and MPCE Quantiles", fcolor(black) size(medsmall) placement(s) justification(right) ) xlab(, glcolor(gs15) glpattern(solid)   )  ylab(, glcolor(gs15) glpattern(solid))  legend(order(4 3) label(4 "Work as Farmer") label(3 "Do Not Work in Agriculture") position(6) col(2)) xsize(6.5) ysize(4.5)  xtitle(5 MPCE Quantiles) plot1opts(msymbol(Oh)  msize(small)) plot2opts(msymbol(Th)  msize(small))  saving(Interaction_4_2_Full, replace) ytitle("") ylab(0(.1).6)

quietly svy: biprobit (choice_mismatch_extreme= female_head ed_head age_head avg_ed   hh_size i.SRC i.mpce_5q i.agri_labour ) (agri_labour = age age2 yr_sch i.female i.married  hh_size i.SRC i.mpce_5q i.land_cat share_agri_fsu i.distance_proxy) if Sector==1 & female==1
margins agri_labour#mpce_5q, predict(pmarg1) saving(Interaction_4_3_Full, replace)
marginsplot,  x(mpce_5q )  title("Agricultural Labour and MPCE Quantiles", fcolor(black) size(medsmall) placement(s) justification(right) ) xlab(, glcolor(gs15) glpattern(solid)   )  ylab(, glcolor(gs15) glpattern(solid)) legend(order(4 3) label(4 "Work as Agricultural Labour") label(3 "Do Not Work in Agriculture") position(6) col(2)) xsize(6.5) ysize(4.5)  xtitle(5 MPCE Quantiles) plot1opts(msymbol(Oh)  msize(small)) plot2opts(msymbol(Th)  msize(small)) saving(Interaction_4_3_Full, replace) ytitle("")

***Combine Graphs
grc1leg  Interaction_4_1_Full.gph   Interaction_4_2_Full.gph  Interaction_4_3_Full.gph, col(3)  ycommon xcommon l1(Pr(Choice Cooking=1), size(small)) title("Interaction Effects and Average Predicted Probablities with 95% CIs (Female Sample)", size(medsmall))  saving(Fig.7_Interaction_Extreme_Female, replace)
graph export Fig.7_Interaction_Extreme_Female.emf, as(emf) replace



**************Robustness Check:Time Use Survey
log using session_24_08_24
cd "F:\Hard_Drive_Toshiba\Time_Use_Asif_Bhai\Time Use Survey\Mospi"
use data_file_hh_ind,clear



 svy: biprobit (choice_cooking=female_head  ed_head age_head avg_ed   hhsize i.SRC i.mpce_5q i.agri_hh ) (agri_hh = age age2 yr_sch i.married  hhsize i.SRC i.mpce_5q i.land_cat share_agri_fsu) if sector==1 & female==1
est store modelA_1
margins, dydx(*) predict(pmarg1)
quietly svy: biprobit (choice_cooking= female_head ed_head age_head avg_ed   hhsize i.SRC i.mpce_5q i.agri_hh ) (agri_hh = age age2 yr_sch  i.married  hhsize i.SRC i.mpce_5q i.land_cat share_agri_fsu) if sector==1 & female==1
margins, dydx(*) predict(pmarg2)


 svy: biprobit (choice_cooking=female_head  ed_head age_head avg_ed   hhsize i.SRC i.mpce_5q i.agri_farmer ) (agri_farmer = age age2 yr_sch  i.married  hhsize i.SRC i.mpce_5q i.land_cat share_agri_fsu) if sector==1 & female==1
est store modelA_2
margins, dydx(*) predict(pmarg1)
quietly svy: biprobit (choice_cooking=female_head ed_head age_head avg_ed   hhsize i.SRC i.mpce_5q i.agri_farmer ) (agri_farmer = age age2 yr_sch i.married  hhsize i.SRC i.mpce_5q i.land_cat share_agri_fsu) if sector==1 & female==1
margins, dydx(*) predict(pmarg2)



 svy: biprobit (choice_cooking=female_head  ed_head age_head avg_ed   hhsize i.SRC i.mpce_5q i.agri_labour ) (agri_labour = age age2 yr_sch i.married  hhsize i.SRC i.mpce_5q i.land_cat share_agri_fsu) if sector==1 & female==1
est store modelA_3
margins, dydx(*) predict(pmarg1)
quietly svy: biprobit (choice_cooking=female_head  ed_head age_head avg_ed   hhsize i.SRC i.mpce_5q i.agri_labour ) (agri_labour = age age2 yr_sch i.married  hhsize i.SRC i.mpce_5q i.land_cat share_agri_fsu) if sector==1 & female==1
margins, dydx(*) predict(pmarg2)

 esttab   modelA_1 modelA_2 modelA_3 using "energy_female_1.csv",label replace b(a4 %9.4f) se(4)  star(* 0.10 ** 0.05 *** 0.01) nogaps wide