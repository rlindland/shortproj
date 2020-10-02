//Run for experiment 1
clear
import delimited "/Users/robert/Downloads/masks2.csv", encoding(ISO-8859-1)clear
eventdd pctchcase_count in* hmon_* after_reopen gps_away_from_home pctchtest_count, timevar(tv2) ci(rcap) lags(4) leads(30) inrange

//Run for experiment 2
clear
import delimited "/Users/robert/Downloads/compliance_ds.csv", encoding(ISO-8859-1)clear
regress atleastfreq case_count_rate recent_case_rate mask_mandate reopened
