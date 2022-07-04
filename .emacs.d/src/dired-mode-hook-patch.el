(load "dired")

(defcustom dired-dnd-protocol-alist
  '(("^file:///" . dired-dnd-handle-local-file)
    ("^file://"  . dired-dnd-handle-file)
    ("^file:"    . dired-dnd-handle-local-file))
  "The functions to call when a drop in `dired-mode' is made.
See `dnd-protocol-alist' for more information.  When nil, behave
as in other buffers."
  :type '(choice (repeat (cons (regexp) (function)))
		 (const :tag "Behave as in other buffers" nil))
  :version "22.1"
  :group 'dired)

(defun dired-mode (&optional dirname switches)
  "\
Mode for \"editing\" directory listings.
In Dired, you are \"editing\" a list of the files in a directory and
  \(optionally) its subdirectories, in the format of `ls -lR'.
  Each directory is a page: use \\[backward-page] and \\[forward-page] to move pagewise.
\"Editing\" means that you can run shell commands on files, visit,
  compress, load or byte-compile them, change their file attributes
  and insert subdirectories into the same buffer.  You can \"mark\"
  files for later commands or \"flag\" them for deletion, either file
  by file or all files matching certain criteria.
You can move using the usual cursor motion commands.\\<dired-mode-map>
Letters no longer insert themselves.  Digits are prefix arguments.
Instead, type \\[dired-flag-file-deletion] to flag a file for Deletion.
Type \\[dired-mark] to Mark a file or subdirectory for later commands.
  Most commands operate on the marked files and use the current file
  if no files are marked.  Use a numeric prefix argument to operate on
  the next ARG (or previous -ARG if ARG<0) files, or just `1'
  to operate on the current file only.  Prefix arguments override marks.
  Mark-using commands display a list of failures afterwards.  Type \\[dired-summary]
  to see why something went wrong.
Type \\[dired-unmark] to Unmark a file or all files of a subdirectory.
Type \\[dired-unmark-backward] to back up one line and unflag.
Type \\[dired-do-flagged-delete] to eXecute the deletions requested.
Type \\[dired-advertised-find-file] to Find the current line's file
  (or dired it in another buffer, if it is a directory).
Type \\[dired-find-file-other-window] to find file or dired directory in Other window.
Type \\[dired-maybe-insert-subdir] to Insert a subdirectory in this buffer.
Type \\[dired-do-rename] to Rename a file or move the marked files to another directory.
Type \\[dired-do-copy] to Copy files.
Type \\[dired-sort-toggle-or-edit] to toggle sorting by name/date or change the `ls' switches.
Type \\[revert-buffer] to read all currently expanded directories again.
  This retains all marks and hides subdirs again that were hidden before.
SPC and DEL can be used to move down and up by lines.

If dired ever gets confused, you can either type \\[revert-buffer] \
to read the
directories again, type \\[dired-do-redisplay] \
to relist a single or the marked files or a
subdirectory, or type \\[dired-build-subdir-alist] to parse the buffer
again for the directory tree.

Customization variables (rename this buffer and type \\[describe-variable] on each line
for more info):

  `dired-listing-switches'
  `dired-trivial-filenames'
  `dired-shrink-to-fit'
  `dired-marker-char'
  `dired-del-marker'
  `dired-keep-marker-rename'
  `dired-keep-marker-copy'
  `dired-keep-marker-hardlink'
  `dired-keep-marker-symlink'

Hooks (use \\[describe-variable] to see their documentation):

  `dired-before-readin-hook'
  `dired-after-readin-hook'
  `dired-mode-hook'
  `dired-load-hook'

Keybindings:
\\{dired-mode-map}"
  ;; Not to be called interactively (e.g. dired-directory will be set
  ;; to default-directory, which is wrong with wildcards).
  (kill-all-local-variables)
  (use-local-map dired-mode-map)
  (dired-advertise)			; default-directory is already set
  (setq major-mode 'dired-mode
	mode-name "Dired"
	;; case-fold-search nil
	buffer-read-only t
	selective-display t		; for subdirectory hiding
	mode-line-buffer-identification
	(propertized-buffer-identification "%17b"))
  (set (make-local-variable 'revert-buffer-function)
       (function dired-revert))
  (set (make-local-variable 'buffer-stale-function)
       (function dired-buffer-stale-p))
  (set (make-local-variable 'page-delimiter)
       "\n\n")
  (set (make-local-variable 'dired-directory)
       (or dirname default-directory))
  ;; list-buffers uses this to display the dir being edited in this buffer.
  (set (make-local-variable 'list-buffers-directory)
       (expand-file-name (if (listp dired-directory)
			     (car dired-directory)
			   dired-directory)))
  (set (make-local-variable 'dired-actual-switches)
       (or switches dired-listing-switches))
  (set (make-local-variable 'font-lock-defaults)
       '(dired-font-lock-keywords t nil nil beginning-of-line))
  (set (make-local-variable 'desktop-save-buffer)
       'dired-desktop-buffer-misc-data)
  (setq dired-switches-alist nil)
  (dired-sort-other dired-actual-switches t)
  (when (featurep 'x-dnd)
    (make-variable-buffer-local 'x-dnd-test-function)
    (make-variable-buffer-local 'x-dnd-protocol-alist)
    (setq x-dnd-test-function 'dired-dnd-test-function)
    (setq x-dnd-protocol-alist
	  (append dired-dnd-protocol-alist x-dnd-protocol-alist)))
  (run-mode-hooks 'dired-mode-hook))
