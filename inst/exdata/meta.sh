

inst/exdata/run_crontwit.sh | while IFS= read -r line; do echo "$(date) $line"; >> inst/exdata/log/bashlog.txt
