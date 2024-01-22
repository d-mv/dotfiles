LAZY_PLUGIN_SPEC = {}

function spec(item)
    -- print("spec: " .. item)
    table.insert(LAZY_PLUGIN_SPEC, {import = item})
end
