<p align="center"><img src="https://radionoisee.github.io/img/emacs-mac-01.png" loading="lazy" width="85%"></p>

## Introduction

Clean Emacs configuration close to vanilla. For use on Mach-O, but should also work on *nix.
It's configured for non-tiling window systems, and is optimized for multi-frames.
Launches in less than 0.4s on my laptop.

Written for Mitsuharu Yamamoto's Emacs Mac port, version 29.1. Also tested on the Emacs for MacOS, version 29.4.
It contains keyboard macros for the JIS keyboard.

## Installation

```bash
git clone https://github.com/RadioNoiseE/rnEmacs.git $HOME/.emacs.d
```

Then you are about to bootstrap it.

```bash
emacs --script $HOME/.emacs.d/bootstrap.el
```

To install grammars for tree-sitter, launch Emacs then <kbd>M-x treesit-install-language-grammar <LANG> RET</kbd>. To install all available grammars, evaluate:

```bash
(mapc #'treesit-install-language-grammar (mapcar #'car treesit-language-source-alist))
```

Beware of the NSFW splash image.

```bash
rm $HOME/.emacs.d/spl.png
```
