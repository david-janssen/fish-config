# Sync all the important files to the external harddrive
function sync_stuff
    sudo rsync /home/david/dcs /home/david/mnt/ -avzp
    sudo rsync /home/david/prj /home/david/mnt/ -avzp
end
