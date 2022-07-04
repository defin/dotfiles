;;; Rest of init is in ~/.emacs.d/_emacs.org
;(require 'org)

(setq dotfiles-dir (expand-file-name "~/.emacs.d/"))
(mapc #'org-babel-load-file (sort (directory-files dotfiles-dir t "\\.org$") 'string<))
