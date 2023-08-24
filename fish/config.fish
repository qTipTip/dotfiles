if status is-interactive
    # Commands to run in interactive sessions can go here
end

switch (uname)
	case Linux
		source $HOME/.asdf/asdf.fish
		source $HOME/.asdf/completions/asdf.fish
	case Darwin
		source (brew --prefix asdf)/asdf.fish
end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ivar/google-cloud-sdk/path.fish.inc' ]; . '/Users/ivar/google-cloud-sdk/path.fish.inc'; end
source (brew --prefix asdf)/asdf.fish
# source $HOME/.config/fish/oh-my-posh.json
