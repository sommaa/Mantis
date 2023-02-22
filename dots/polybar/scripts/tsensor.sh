sensors | grep temp1 | awk 'NR==2 {print $2}' | tr -d +
