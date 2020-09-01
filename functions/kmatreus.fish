# Activate kmonad for my Atreus keyboard
function kmatreus
    set kp ~/prj/hask/kmonad
    # Not ideal
    set kmonad $kp/.stack-work/install/x86_64-linux-nix/c0fba28f49710b5758a98629e7c64c6c59067718efa210ad972837b3ad299754/8.6.5/bin/kmonad
    sudo modprobe uinput
    $kmonad $kp/keymap/user/david-janssen/atreus.kbd > /tmp/kmonad_log.txt 2>&1
end
