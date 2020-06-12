Select country,countryname,sex, suicidedata.year, literacydata.year, age, suicide_no,literacy_number
from suicidedata
JOIN literacydata on
country = countryname AND 
suicidedata.year = literacydata.year
where literacy_number is not null
