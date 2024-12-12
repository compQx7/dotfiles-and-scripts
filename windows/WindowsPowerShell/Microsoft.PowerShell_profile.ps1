Set-Alias vim nvim

function ghqcd {
    $selection = ghq list -p | peco
    if ([string]::IsNullOrWhiteSpace($selection)) {
        Write-Output "No selection made. Exiting."
        return
    }
    cd $selection
}

function ghqcode {
    $selection = ghq list -p | peco
    if ([string]::IsNullOrWhiteSpace($selection)) {
        Write-Output "No selection made. Exiting."
        return
    }
    code $selection
}

function ghqnv {
    $selection = ghq list -p | peco
    if ([string]::IsNullOrWhiteSpace($selection)) {
        Write-Output "No selection made. Exiting."
        return
    }
    cd $selection
	nvim .
}

function vimconf {
	cd $env:LOCALAPPDATA/nvim; vim .
}

