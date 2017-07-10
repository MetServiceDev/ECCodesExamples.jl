using ECCodes
using PyPlot

withmessages("gfs.t18z.pgrb2.0p50.f015") do msg
    if (msg["typeOfLevel"]=="heightAboveGround")&&
        (msg["shortName"]=="10v")&&
        (msg["level"]=="10")&&
        (msg["dataDate"]=="20170709")&&
        (msg["dataTime"]=="1800")&&
        (msg["forecastTime"]=="15")
        global lats,lons,vals
        lats,lons,vals=ECCodes.data(msg)
    end
end

PyPlot.tricontourf(lons,lats,vals,100)
