;;; -*- Mode: Emacs-Lisp -*-

(require 'find-dired)

(defcustom find-dired-grep-program "grep"
  "Program used to find files."
  :group 'dired
  :type 'file)

(defcustom find-dired-ls-program "ls"
  "Program used to ls files."
  :group 'dired
  :type 'file)

(defun find-grep-dired (dir args)
  "Find files in DIR containing a regexp ARG and start Dired on output.
The command run (after changing into DIR) is

    find . -exec grep -s ARG {} \\\; -ls

Thus ARG can also contain additional grep options."
  (interactive "DFind-grep (directory): \nsFind-grep (grep regexp): ")
  ;; find -exec doesn't allow shell i/o redirections in the command,
  ;; or we could use `grep -l >/dev/null'
  ;; We use -type f, not ! -type d, to avoid getting screwed
  ;; by FIFOs and devices.  I'm not sure what's best to do
  ;; about symlinks, so as far as I know this is not wrong.
  (find-dired dir
	      (concat "-type f -exec "
		      find-dired-grep-program
		      " "
		      find-grep-options
		      " "
		      args
		      " {} \\\; ")))

;;; find-dired-patch.el EOF
