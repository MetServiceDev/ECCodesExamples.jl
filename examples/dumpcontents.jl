using ECCodes

withmessages(ARGS[1]) do msg
    for k in sort(keys(msg))
        v=msg[k]
        try
            println("$(k): $(v)")
        catch
        end
    end
    println()
end
