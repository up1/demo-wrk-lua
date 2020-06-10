## How to run ?
```
$wrk -c1000 -t100 -d30s -s post-json.lua --latency http://www.google.com
```