#CREATE SCHEMA `Growth_Determinants` ;
#Create the schema, once you do it once, there's no need to do it again, which is why I put it as a comment.

#To find the schemas, find the area above object info and session, and drag down.


#CREATE TABLE Finalized_Determinants_Of_Economic_Development AS
#Creates the table, once you do it, you can't do it again, which is why I put it as a comment.

SELECT ADePR.*, AvgYrsSch.Avg_Yrs_Schooling, 
EnergCons.Energy_Cons_Per_Cap, EPop.EPop_Pct,
ResourceRent.Resource_Rents_Pct_GDP, GDPPPP.GDP_Per_Capita_PPP, 
CapitalForm.Fixed_Capital_Format_GDPpct, 
HDI.HDI, 
PctAgriandUrban.Pct_in_Agriculture, PctAgriandUrban.Pct_urban_areas, PopGrowthPct.Pop_Growth_Pct, 
RuleOfLaw.Rule_of_Law_index, TradeOpenness.Trade_Pct_GDP
FROM `age dependency ratio 2000-2023 - sheet1` as ADepR
INNER JOIN `resource rents as pct of gdp 2000-2021 - sheet1` as ResourceRent on ADepR.Country_Year = ResourceRent.Country_Year
INNER JOIN `average years schooling 2000-2023 - sheet1` as AvgYrsSch on ADepR.Country_Year = AvgYrsSch.Country_Year
INNER JOIN `energy cons percap kwh 2000-2024 - sheet1`as EnergCons on ADepR.Country_Year = EnergCons.Country_Year
INNER JOIN `epop ratio 2000-2025 - sheet1` as EPop on ADepR.Country_Year = EPop.Country_Year
INNER JOIN `gdp per capita ppp 2000-2025 - sheet1` as GDPPPP on ADepR.Country_Year = GDPPPP.Country_Year
INNER JOIN `gross capital formation 2000-2025 - sheet1` as CapitalForm on ADepR.Country_Year = CapitalForm.Country_Year
INNER JOIN `hdi 2000-2023 - sheet1` as HDI on ADepR.Country_Year = HDI.Country_Year
INNER JOIN `pct in agri and urban 2000-2025 - sheet1` as PctAgriandUrban on ADepR.Country_Year = PctAgriandUrban.Country_Year
INNER JOIN `pop growth pct 2000-2025 - sheet1` as PopGrowthPct on ADepR.Country_Year = PopGrowthPct.Country_Year
INNER JOIN `rule of law 2000-2025 - sheet1` as RuleOfLaw on ADepR.Country_Year = RuleOfLaw.Country_Year
INNER JOIN `trade openness 2000-2024 - sheet1` as TradeOpenness on ADepR.Country_Year = TradeOpenness.Country_Year

#This makes the table, you go to table data export wizard, export it as a CSV using a valid export path
#Then you open it in google sheets, with excel, all of the values only save in the first column as a long
#unbroken chain. If you open it with google sheets, you can copy paste the data from there to excel
#without any major problems