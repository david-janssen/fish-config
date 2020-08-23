
# Set global variables
set -gx _fish_src $__fish_config_dir/src

# Configure fisher
set -g fisher_path $__fish_config_dir/fisher
set -p fish_function_path $fisher_path/src
set -p fish_function_path $fisher_path/functions
set -p fish_complete_path $fisher_path/completions

for file in $fisher_path/conf.d/*.fish
    builtin source $file 2>/dev/null
end

# Configure z: only add entries to 'exclude' if they don't yet exist
set excludes "^/mnt/office"
for e in $excludes
    if not contains -- $Z_EXCLUDE $e
        set -p Z_EXCLUDE $e
    end
end
