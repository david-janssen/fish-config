# Sync all the important files to the external harddrive
function sync_stuff
    rsync ~/dcs ~/mnt/ -avzp --delete
    rsync ~/prj ~/mnt/ -avzp --delete
end
