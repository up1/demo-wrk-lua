function setup(thread)
    print("Called setup")
end

function init(args)
    print("Called init")
end

function request()
    print("Called request")
   return wrk.request()
end

function response(status, headers, body)
    print("Called response")
end

function done(summary, latency, requests)
    print("Called done")
end