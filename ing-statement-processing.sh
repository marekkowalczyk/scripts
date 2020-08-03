for file in *.csv; do sed -i '' -e '$a\' "$file"; done

for file in *MNDR-LTD*PLN0.csv; do ls *MNDR-LTD*PLN0.csv && cat "$file" >> MANDARINE_LTD-PLN0.csv && rm *MNDR-LTD*PLN0.csv; done
for file in *MNDR-LTD*PLN1.csv; do ls *MNDR-LTD*PLN1.csv && cat "$file" >> MANDARINE_LTD-PLN1.csv && rm *MNDR-LTD*PLN1.csv; done
for file in *MNDR-LTD*EUR0.csv; do ls *MNDR-LTD*EUR0.csv && cat "$file" >> MANDARINE_LTD-EUR0.csv && rm *MNDR-LTD*EUR0.csv; done
for file in *MNDR-LTD*GBP0.csv; do ls *MNDR-LTD*GBP0.csv && cat "$file" >> MANDARINE_LTD-GBP0.csv && rm *MNDR-LTD*GBP0.csv; done


for file in *MNDR-LTD*PLN0.csv; do cat "$file" >> MANDARINE_LTD-PLN0.csv done
for file in *MNDR-LTD*PLN1.csv; do cat "$file" >> MANDARINE_LTD-PLN1.csv done
for file in *MNDR-LTD*EUR0.csv; do cat "$file" >> MANDARINE_LTD-EUR0.csv done
for file in *MNDR-LTD*GBP0.csv; do cat "$file" >> MANDARINE_LTD-GBP0.csv done


for file in *MNDR-EDU*PLN0.csv; do cat "$file" >> MNDR-EDU-PLN0.csv; done


ls *MNDR-LTD*PLN0.csv