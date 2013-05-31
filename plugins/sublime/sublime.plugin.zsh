# Sublime Text 2 Aliases
#unamestr = 'uname'

local _sublime_darwin_subl=/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl

if [[ $('uname') == 'Linux' ]]; then
	if [ -f '/usr/bin/sublime_text' ]; then
		st_run() { nohup /usr/bin/sublime_text $@ > /dev/null & }
	else
		st_run() { nohup /usr/bin/sublime-text $@ > /dev/null & }
	fi
alias st=st_run
elif  [[ $('uname') == 'Darwin' ]]; then
<<<<<<< HEAD
	# Check if Sublime is installed in user's home application directory
	if [[ -a $HOME/${_sublime_darwin_subl} ]]; then
		alias st='$HOME/${_sublime_darwin_subl}'
	else
		alias st='${_sublime_darwin_subl}'
	fi
=======

	for _sublime_path in $_sublime_darwin_paths; do
		if [[ -a $_sublime_path ]]; then
			alias st="'$_sublime_path'"
			break
		fi
	done
>>>>>>> 86a889ea083d341ba2bc48656008e5af46a3df2d
fi
alias stt='st .'
