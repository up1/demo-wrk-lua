function load_data_from_file(file)
    local lines = {}
    local f = io.open(file, "r")
    if f ~= nil then
        io.close(f)
    else
        return lines
    end

    for line in io.lines(file) do
        if not (line == '') then
        for _username, _password in line:gmatch( "([^,]+),([^,]+)" ) do
            lines[#lines + 1] = { username = _username, password = _password }
        end
        end
    end
    return lines
end

counter = 1
datas = load_data_from_file("input.csv")

function request()
    counter = counter + 1
    if counter > #datas then
        counter = 2
    end
    message = "Data username=%s, passsword=%s"
    print(message:format(datas[counter].username, datas[counter].password))
   return wrk.request()
end