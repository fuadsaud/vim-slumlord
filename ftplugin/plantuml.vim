if exists("b:loaded_slumlord")
    finish
endif
let b:loaded_slumlord=1

setlocal nowrap

if !exists("g:slumlord_au_created")

    if exists("*jobstart")
        autocmd bufwritepost *.{uml,pu} silent call slumlord#updatePreview({'write': 1})
    else
        autocmd bufwritepost *.{uml,pu} silent call slumlord#updatePreview({'write': 1})
    endif

    let g:slumlord_au_created = 1
endif
