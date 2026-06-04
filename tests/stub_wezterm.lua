local M = {}

M._logs = {
    info = {},
    warn = {},
    error = {},
}

function M.log_info(msg)
    table.insert(M._logs.info, tostring(msg))
end

function M.log_warn(msg)
    table.insert(M._logs.warn, tostring(msg))
end

function M.log_error(msg)
    table.insert(M._logs.error, tostring(msg))
end

function M.format(items)
    return items
end

-- Minimal stubs so plugin/init.lua can be required under tests
M.target_triple = 'x86_64-test'

M.plugin = {
    list = function()
        return {}
    end,
}

function M.emit() end

M.time = {
    now = function()
        return os.time()
    end,
}

return M
