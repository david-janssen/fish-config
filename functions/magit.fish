# Launch emacs magit
function magit
    emacs --eval "(magit)" &; disown
end
