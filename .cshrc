alias h		history 25
alias j		jobs -l
alias ls	ls -G
alias vi	vim

setenv	EDITOR	vim
setenv	PAGER	more

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set prompt = '[%B%{^[[01;31m%}%m%b] %B%~%b%# '
	set promptchars = "%#"

	set filec
	set history = 65536
	set savehist = (65536 merge)
	set autolist = ambiguous
	# Use history to aid expansion
	set autoexpand
	set autorehash
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey "^R" i-search-back
		bindkey "^[[5~" history-search-backward
		bindkey "^[[6~" history-search-forward
	endif

endif
