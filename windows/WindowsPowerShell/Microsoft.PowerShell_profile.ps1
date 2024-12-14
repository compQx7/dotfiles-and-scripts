Set-Alias vim nvim

function repo {
    $selection = ghq list -p | peco
    if ([string]::IsNullOrWhiteSpace($selection)) {
        Write-Output "No selection made. Exiting."
        return
    }
    cd $selection
}

function repocode {
    $selection = ghq list -p | peco
    if ([string]::IsNullOrWhiteSpace($selection)) {
        Write-Output "No selection made. Exiting."
        return
    }
    code $selection
}

function repovi {
    $selection = ghq list -p | peco
    if ([string]::IsNullOrWhiteSpace($selection)) {
        Write-Output "No selection made. Exiting."
        return
    }
    cd $selection
	nvim .
}

function viconf {
	cd $env:LOCALAPPDATA/nvim; vim .
}

