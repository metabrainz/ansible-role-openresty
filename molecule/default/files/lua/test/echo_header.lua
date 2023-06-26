local _M = {}

function _M.echo()
    local headers, err = ngx.req.get_headers()

    if err then
        ngx.say("an error occurred reading headers")
    end

    local test_header = headers["Echo"]

    if test_header == nil then
        ngx.say("no echo header in request")
    else
        ngx.say(test_header)
    end
end

return _M
