require 'time'

def time_string (ts)
    return Time.at(ts.to_i).utc.strftime("%H:%M:%S")
end

time_string ("00:00:00")