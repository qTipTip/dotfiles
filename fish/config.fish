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
