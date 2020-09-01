# Add value to universal variable, but only if it doesn't contain it yet
# Arg 1: name of universal variable
# Arg 2: value to insert
function addU
    set name $argv[1]
    set val  $argv[2]
    if not contains $val $$name
        set -p $name $val
    end
end
