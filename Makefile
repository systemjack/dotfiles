# for convenient dotfiles install

OS := $(shell uname)

STOW := $(shell command -v stow 2> /dev/null)
ifndef STOW
  ifeq ($(OS), Darwin)
    $(error stow is not available, please install with `brew install stow`)
  else
    $(error stow is not available, please install with `sudo apt-get install stow`)
  endif
endif

#STOW-exists:;@command -v stow > /dev/null
#check: STOW-exists
#linux: check
#	@echo stow exists
#.PHONY: check STOW-exists linux

link: 
	stow --verbose=0 --dir=link --target=$(HOME) --restow common
.PHONY: link

copy:
ifeq ($(OS), Darwin)
	echo Copy not available on MacOS yet
else
	cp --recursive --backup=numbered --update copy/{.[^.],}* $(HOME)
# TODO gives "find: `copy/*': No such file or directory" if no regular file in copy
# but otherwise works. 
endif
.PHONY: copy
