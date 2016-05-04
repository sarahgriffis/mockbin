for run in {1..250}
do
  curl 'http://localhost:8080/bin/ddf8feef-1138-40bd-9f05-733cafc0dc23'
done

curl -H "Accept: application/json" http://localhost:8080/bin/ddf8feef-1138-40bd-9f05-733cafc0dc23/log > bin2.csv

ruby count_bins.rb
