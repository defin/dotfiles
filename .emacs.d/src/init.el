;;; -*- Mode: Emacs-Lisp -*-

(if (not (fboundp 'w32-short-file-name))
    (fset 'w32-short-file-name 'win32-short-file-name))

(add-to-list 'load-path (w32-short-file-name "z:/Administrator/elisp"))
;(add-to-list 'load-path (w32-short-file-name "~/elisp/auctex-11.54"))
;(add-to-list 'load-path (w32-short-file-name "~/elisp/ebc-2.3.1"))
;(add-to-list 'load-path (w32-short-file-name "~/elisp/haskell-mode-2.1"))
(add-to-list 'load-path (w32-short-file-name "z:/Administrator/elisp/nxml-mode-20041004"))
;(add-to-list 'load-path (w32-short-file-name "~/elisp/ocaml-mode-3.09"))
;(add-to-list 'load-path (w32-short-file-name "~/elisp/sml-mode-4.0"))
;(add-to-list 'load-path (w32-short-file-name "~/elisp/slime-1.2.1"))
;(add-to-list 'load-path (w32-short-file-name "~/elisp/tramp-2.0.47/lisp"))
;(add-to-list 'load-path (w32-short-file-name "~/elisp/zenirc-2.112/src"))
;(add-to-list 'load-path (w32-short-file-name "c:/program files/sicstus prolog 3.12.3/emacs"))

;(load "old-cl-indent")
(load "cl-indent")
;(load "dired-mode-hook-patch")
;(load "dylan-mode")
(load "find-dired-patch")
;(load "flash-paren")
;(load "haskell-site-file")
;(load "htmlize")
;(load "igrep")
;(load "km-mode")
(load "listbuf")
(load "paredit")
;(load "obfusurl")
;(load "page-patch")
(load "php-mode")
(load "css-mode-fixed")
(load "html-helper-mode")
(load "rng-auto") ; nXML mode loader
;(load "setnu")
;(load "sicstus_emacs_init")
;(load "sml-mode-startup")
(load "supertab")
;(load "tex-fptex")
;(load "thinks")
;(load "tramp")
;(load "zenicb")

;(require 'cl)
;(require 'flame)
;(require 'redo)
(require 'clos-indent)
(require 'loop-indent)
;(require 'slime)
(require 'psvn)

;(autoload 'caml-mode "caml" "Major mode for editing Caml code." t)
;(autoload 'run-caml "inf-caml" "Run an inferior Caml process." t)
;(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
;(autoload 'j-mode "j-mode" "Major mode for editing J code." t)
;(autoload 'j-shell "j-mode" "Major mode for interacting with an inferior J." t)
;(autoload 'prolog-mode "prolog" "Major mode for editing Prolog programs." t)
;(autoload 'run-prolog "prolog" "Start a Prolog sub-process." t)

;(setq archive-zip-use-pkzip nil)
;(setq column-number-mode t)
;(setq completion-ignore-case t)
;(setq compile-command "nmake /k ")
;(setq comint-scroll-to-bottom-on-input t)
;;(setq delete-old-versions (gensym))
;(setq default-tab-width 8)
;(setq diff-command (w32-short-file-name "~/bin/diff.exe"))
;(setq dired-dnd-protocol-alist nil)
;(setq display-time-day-and-date t)
;(setq display-time-24hr-format t)
(setq garbage-collection-messages t)
(setq find-dired-find-program (w32-short-file-name "~/elisp/find.exe"))
(setq find-dired-grep-program (w32-short-file-name "~/elisp/grep.exe"))
(setq find-grep-options "-s")
(setq find-ls-option '("-ls" . "-gilsb"))
;(setq haskell-program-name (w32-short-file-name "c:/program files/ghc/ghc-6.4.1/bin/ghci.exe"))
;(setq inferior-caml-program (w32-short-file-name "c:/program files/objective caml/bin/ocaml.exe"))
;(setq inhibit-startup-message t)
;(setq inhibit-startup-echo-area-message t)
(setq igrep-find-program (w32-short-file-name "~/elisp/find.exe"))
(setq igrep-find-use-xargs nil)
;(setq ispell-program-name (w32-short-file-name "c:/program files/aspell/bin/aspell.exe"))
;(setq ispell-extra-args '("--mode=sgml"))
;(setq ispell-skip-html t)
;(setq j-path (w32-short-file-name "c:/program files/j504"))
;(setq kept-old-versions 1000)
;(setq kept-new-versions 1000)
;(setq line-number-mode t)
; (setq lisp-simple-loop-indentation 1)
; (setq lisp-loop-keyword-indentation 6)
; (setq lisp-loop-forms-indentation 6)
;(setq mac-command-key-is-meta nil)
;(setq mouse-yank-at-point t)
;(setq prolog-program-name (w32-short-file-name "c:/program files/sicstus prolog 3.12.3/bin/sicstus.exe"))
;(setq prolog-system 'sicstus)
;(setq require-final-newline 'ask)
;(setq scheme-program-name (w32-short-file-name "c:/program files/scheme 48/scheme 48 1.3/scheme48.bat"))
;(setq teach-extended-commands-p t)
;(setq tooltip-use-echo-area t)
;(setq transient-mark-mode t)
;(setq vc-default-back-end 'CVS)
;(setq version-control t)
;(setq visible-bell t)
;(setq w32-enable-italics t)

;(set-frame-position (selected-frame) 4 4)
;(set-frame-height (selected-frame) 65)
;(set-frame-width (selected-frame) 132)
;(set-default-font "-outline-Courier New-normal-r-normal-normal-11-82-96-96-c-*-iso10646-1")
;(set-frame-font "-raster-vt100-normal-r-normal-normal-13-82-96-96-c-*-iso10646-1")
;(set-foreground-color "black")
;(set-background-color "white")
;(set-cursor-color "red")

(substitute-key-definition 'list-buffers 'listbuf ctl-x-map)

(global-set-key "\C-cb" 'bury-buffer)
;(global-set-key "\e\e" 'eval-expression)
(global-set-key (read "[?\\S-\\C-r]") 'redo)
(global-set-key (read "[?\\S-\\C-u]") 'undo)


(define-key emacs-lisp-mode-map "\t" 'supertab-handle-tab)
(define-key lisp-mode-map "\t" 'supertab-handle-tab)

;(global-set-key "\C-p" 'tmc-previous-line)
;(global-set-key "\C-n" 'tmc-next-line)
;(global-set-key "\M-v" 'tmc-scroll-down)
;(global-set-key "\C-v" 'tmc-scroll-up)

;(add-to-list 'auto-mode-alist '("\\.cod" . asm-mode))
;(add-to-list 'auto-mode-alist '("\\.CPP" . c++-mode))
;(add-to-list 'auto-mode-alist '("\\.ml[iylp]?$" . caml-mode))
;(add-to-list 'auto-mode-alist '("\\.cs" . csharp-mode))
;(add-to-list 'auto-mode-alist '("\\.dylan\\'" . dylan-mode))
;(add-to-list 'auto-mode-alist '("\\.ij[rstp]" . j-mode))
(add-to-list 'auto-mode-alist '("\\.\\(owl\\|r\\(?:ng\\|ss\\)\\|s\\(?:ch\\|vg\\)\\|x\\(?:html\\|ml\\|s\\(?:d\\|lt\\)\\)\\)\\'" . nxml-mode))

(add-to-list 'auto-mode-alist '("\\.php" . php-mode))

(add-to-list 'auto-mode-alist '("\\.css" . css-mode))
(add-to-list 'auto-mode-alist '("\\.tpl" . html-helper-mode))

;(or noninteractive
;    (progn
;      ;; Disable fascistly forced annoying message.
;      (setq noninteractive 'rms-is-a-stinking-fascist)
;      (defun init-clear-noninteractive () (setq noninteractive nil))
;      (setcdr command-line-args (nconc '("-f" "init-clear-noninteractive")
;                                       (cdr command-line-args)))))

;; (if (null window-system)
;;     (and (fboundp 'menu-bar-mode) (menu-bar-mode -1)))
;(and (fboundp 'menu-bar-mode) (menu-bar-mode -1))
;(and (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
;(and (fboundp 'tool-bar-mode) (tool-bar-mode -1))

;(if window-system (require 'caml-font))

;(defun enable-this-command (&rest args)
;  "Automatically enable any disabled command the first time it's used."
;  (put this-command 'disabled nil)
;  (call-interactively this-command))
;(setq disabled-command-hook 'enable-this-command)

;(show-paren-mode)

(defun zmacs-backward-page (&optional count)
  (interactive "p")
  (backward-page count)
  (recenter 0))

(defun zmacs-forward-page (&optional count)
  (interactive "p")
  (forward-page count)
  (recenter 0))

(global-set-key "\C-x[" 'zmacs-backward-page)
(global-set-key "\C-x]" 'zmacs-forward-page)

(global-set-key [?\C-\M-\(] 'backward-up-list)
(global-set-key [?\C-\M-\)] 'up-list)

(global-set-key "\M-g" 'goto-line) ; no zmacs-style face frob

(defun find-unbalanced-parentheses ()
  "Check the buffer for unbalanced parentheses.  Stops at any that are
unbalanced."
  (interactive)
  (let ((start-point (point)))
    (goto-char (point-min))
    (condition-case e
         (while (/= (point) (point-max))
           (forward-sexp))
      (error
        ;; If this is an extra left paren error, we have to scan backwards to
        ;; find the exact left paren in error
        (cond ((and (eq (car e) 'error)
                    (string-equal (cadr e) "Unbalanced parentheses"))
               ;; left paren error
               (goto-char (point-max))
               (while (/= (point) (point-min))
                 (condition-case e (backward-sexp)
                    (error
                      (error "Probably an extra left parenthesis here.")))))
              (t (error "Probably an extra right parenthesis here.")))))
    (goto-char start-point)
    (message "All parentheses appear balanced.")))

;(defun check-for-unbalanced-parens-on-save ()
;  (interactive)
;  (make-local-hook 'after-save-hook)
;  (add-hook 'after-save-hook 'find-unbalanced-parentheses))

(defun previous-buffer (n)
  "Return the Nth previously selected buffer.  Default is normally 2.
Actually, it is the number of windows plus 1.  That is, no argument
switches to the most recently selected buffer that is not visible.  If
N is 1, repeated calls will cycle through all buffers; -1 cycles the
other way.  If N is greater than 1, the first N buffers on the buffer
list are rotated.  gildea 13 Feb 89"
  (interactive "P")
  (if (not n)
      (other-buffer)
    (let ((buffer-list (buffer-list)))
      (setq n (prefix-numeric-value n))
      (cond ((= n 1)
             (bury-buffer (current-buffer))
             (setq n 2))
            ((< n 0)
             (setq buffer-list (nreverse buffer-list))
             (setq n (- n))))
      (while (and (> n 1) buffer-list)
        (setq n (1- n))
        (setq buffer-list (cdr buffer-list))
        (while (eql (elt (buffer-name (car buffer-list)) 0) ? )
          (setq buffer-list (cdr buffer-list))))
      (if buffer-list
          (car buffer-list)
        (error "There aren't that many buffers")))))

(defun switch-to-previous-buffer (n)
  "Switch to the Nth previously selected buffer.
See documentation for previous-buffer for explanation of values N can take."
  (interactive "P")
  (switch-to-buffer (previous-buffer n)))

(global-set-key "\e\C-l" 'switch-to-previous-buffer)

(defun split-window-vertically-other-buffer (arg)
  "Split current window into two windows, one above the other.
This window becomes the uppermost of the two, and gets
ARG lines.  No arg means split equally.
This selects the (other-buffer) in the other window."
  (interactive "P")
  (split-window-vertically arg)
  (other-window 1)
  (switch-to-buffer (other-buffer))
  )

;(global-set-key "\C-x2" 'split-window-vertically-other-buffer)

;(defun copy-rectangle (start end)
;  (interactive "r")
;  (let ((inhibit-read-only t)
;        (bm (buffer-modified-p)))
;    (kill-rectangle start end)
;    (goto-char start)
;    (yank-rectangle)
;    (goto-char start)
;    (set-buffer-modified-p bm)))

;(defun insert-date ()
;  "Insert date at point."
;  (interactive)
;  (insert (format-time-string "%A, %B %e, %Y %k:%M:%S %z")))

;(defun urinate ()
;  "That hydrant belongs to ME!"
;  (interactive)
;  (insert (format-time-string "%Y-%m-%d, DF")))

;(defun region-length (start end)
;  (interactive "r")
;  (message (format "%d" (- end start))))

;(add-hook 'asm-mode-hook 'turn-on-font-lock)
;(add-hook 'asm-mode-hook '(lambda () (define-key asm-mode-map ":" nil)))

;(add-hook 'c++-mode-hook 'turn-on-font-lock)
;(add-hook 'c++-mode-hook 'turn-on-cwarn-mode)

;(add-hook 'c-mode-hook
;          '(lambda ()
;             (font-lock-mode t)
;	     (c-set-style "K&R")
;             (setq c-basic-offset 4)))

;(add-hook 'c-mode-hook 'turn-on-font-lock)
;(add-hook 'c-mode-hook 'turn-on-cwarn-mode)

;(add-hook 'comint-mode-hook
;          '(lambda ()
;             (define-key comint-mode-map "\ep" 'comint-previous-matching-input-from-input)
;             (define-key comint-mode-map "\en" 'comint-next-matching-input-from-input)
;             (define-key comint-mode-map "\e\C-l" 'switch-to-previous-buffer)))

;(add-hook 'dylan-mode-hook 'turn-on-font-lock)

;(add-hook 'emacs-lisp-mode-hook 'check-for-unbalanced-parens-on-save)
;(add-hook 'emacs-lisp-mode-hook 'turn-on-font-lock)
;(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)

;(add-hook 'hack-local-variables-hook '(lambda ()
;					(save-excursion
;					  (when (search-forward-regexp "^<\\?xml" 6 0)
;					    (nxml-mode)))))

;(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

;(add-hook 'inferior-lisp-mode-hook 'inferior-slime-mode)

;(add-hook 'j-mode-hook '(lambda () (which-func-mode 1)))
;(add-hook 'j-mode-hook 'turn-on-font-lock)

;(add-hook 'java-mode-hook 'turn-on-font-lock)

;(add-hook 'LaTeX-mode-hook 'turn-on-font-lock)

;(add-hook 'lisp-mode-hook '(lambda () (slime-mode t)))
;(add-hook 'lisp-mode-hook '(lambda () (slime-autodoc-mode t)))
;(add-hook 'lisp-mode-hook '(lambda () (set (make-local-variable lisp-indent-function) 'common-lisp-indent-function)))
;(add-hook 'lisp-mode-hook 'check-for-unbalanced-parens-on-save)
;(add-hook 'lisp-mode-hook 'turn-on-font-lock)

;(add-hook 'php-mode-hook 'turn-on-font-lock)

(define-key lisp-mode-map [(control shift ?c)] 'slime-compile-defun)
(define-key lisp-mode-map [(control meta shift ?c)] 'slime-compile-defun)
(define-key lisp-mode-map [(control shift ?e)] 'slime-eval-defun)
(define-key lisp-mode-map [(control shift ?m)] 'slime-macroexpand-1)
(define-key lisp-mode-map [(meta shift ?m)] 'slime-macroexpand-all)



(global-set-key "\C-cs" 'slime-selector)

;(add-hook 'sml-mode-hook 'turn-on-font-lock)

;(add-hook 'text-mode-hook 'turn-on-auto-fill)
;(add-hook 'text-mode-hook 'flyspell-mode)

(defun strip-trailing-whitespace ()
  "Eliminate whitespace at ends of lines."
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (while (re-search-forward "[ \t][ \t]*$" nil t)
      (delete-region (match-beginning 0) (point)))))

;(defun nuke-nroff-bs ()
;  (interactive)
;  (let ((old-modified (buffer-modified-p))
;        (old-point (point)))
;    (beginning-of-buffer)
;    (replace-regexp "\\(.\\)^H\\1^H\\1^H\\1" "\\1")
;    (beginning-of-buffer)
;    (replace-regexp "\\(.\\)^H\\1^H\\1" "\\1")
;    (beginning-of-buffer)
;    (replace-regexp "\\(.\\)^H\\1" "\\1")
;    (beginning-of-buffer)
;    (replace-string "_^H" "")
;    (set-buffer-modified-p old-modified)
;    (goto-char old-point)))

(defun unix-file ()
  (interactive)
  (set-buffer-file-coding-system
   (coding-system-change-eol-conversion buffer-file-coding-system 'unix)))

(defun dos-file ()
  (interactive)
  (set-buffer-file-coding-system
   (coding-system-change-eol-conversion buffer-file-coding-system 'dos)))

;(defun clisp ()
;  (interactive)
;  (run-lisp
;   (let ((root (w32-short-file-name "C:\\Program Files\\CLISP\\clisp-2.33.1\\full\\")))
;     (concat root "lisp.exe"
;	     " -B " root
;	     " -M " root "lispinit.mem"
;	     " -ansi -I -q "
;	     " -i " (w32-short-file-name "~\\elisp\\slime-1.2.1\\swank-loader.lisp")
;	     " -x (swank::create-swank-server' 4005)")))
;  (sleep-for 3)
;  (slime-connect "localhost" 4005))

;(defun allegro ()
;  (interactive)
;  (run-lisp (concat (w32-short-file-name "C:\\Program Files\\acl80\\alisp.exe")
;		    " +cx +B -L "
;		    (w32-short-file-name "~\\elisp\\slime-1.2.1\\swank-loader.lisp")
;		    " -e '(swank::create-swank-server 4005 :spawn (function swank::simple-announce-function) t)'"))
;  (delete-other-windows)
;  (sleep-for 3)
;  (slime-connect "localhost" 4005))

;(defun lispworks ()
;  (interactive)
;  (run-lisp (concat (w32-short-file-name "C:\\Program Files\\Xanalys\\LispWorks\\lispworks-4370-console.exe")
;		    " -init "
;		    (w32-short-file-name "~\\elisp\\slime\\swank-loader.lisp")))
;  (delete-other-windows)
;  (sleep-for 3)
;  (slime-connect "localhost" 4005))

;(defun one-true-style ()
;  (c-set-style "bsd")
;  (setq tab-width 8)
;  (setq c-basic-offset 4)
;  (setq indent-tabs-mode t))

;(defun visual-studio-style ()
;  (c-set-style "bsd")
;  (setq tab-width 4)
;  (setq c-basic-offset 4)
;  (setq indent-tabs-mode t))

;(add-hook 'c-mode-common-hook '(lambda () (c-toggle-auto-hungry-state 1)))
;(add-hook 'c-mode-hook 'one-true-style)
;(add-hook 'objc-mode-hook 'one-true-style)
;(add-hook 'c++-mode-hook 'one-true-style)
;(add-hook 'php-mode-hook 'one-true-style)
;(add-hook 'csharp-mode 'visual-studio-style)

;(load "dired")
;(defun dired-execute-file (&optional arg)
;  "Open files a la Windows, from Howard Melman."
;  (interactive "P")
;  (mapcar #'(lambda (file)
;	      (w32-shell-execute "open" (convert-standard-filename file)))
;	  (dired-get-marked-files nil arg)))

;(define-key dired-mode-map "X" 'dired-execute-file)

;(defun count-words-region (beginning end)
;  "Print number of words in the region."
;  (interactive "r")
;  (message "Counting words in region ... ")
;  ;; 1. Set up appropriate conditions.
;  (save-excursion
;    (let ((count 0))
;      (goto-char beginning)
;      ;; 2. Run the while loop.
;      (while (and (< (point) end)
;                  (re-search-forward "\\w+\\W*" end t))
;        (setq count (1+ count)))
;      ;; 3. Send a message to the user.
;      (cond ((zerop count)
;             (message "The region does NOT have any words."))
;            ((= 1 count)
;             (message "The region has 1 word."))
;            (t
;             (message "The region has %d words." count))))))

;(defun get-next-line ()
;  "Return the next line in the buffer, leaving point following it.
;nil is returned at end-of-buffer."
;  (let (start)
;    (beginning-of-line)
;    (setq start (point))
;    (forward-line 1)
;    (if (equal start (point))
;        nil
;      (buffer-substring start (point)))))

;(defun unique-lines ()
;  "Delete adjacent duplicate lines in the buffer from point to
;end-of-buffer, leaving only the unique lines."
;  (interactive)
;  (let (last-line this-line)
;    (setq last-line (get-next-line))
;    (while last-line
;      (setq this-line (get-next-line))
;      (if (equal last-line this-line)
;          (kill-line -1))
;      (setq last-line this-line))))

;(custom-set-variables
 ;; '(show-paren-delay 0)
 ;; '(show-paren-mode t nil (paren))
 ;; '(show-paren-style (quote expression))
; '(show-trailing-whitespace t))

;(custom-set-faces
 ;; '(show-paren-match-face ((t (:background "gray97"))))
 ;; '(show-paren-mismatch-face ((((class color)) (:background "purple" :foreground "white"))))
; '(trailing-whitespace ((((class color) (background light)) (:background "linen")))))

; paredit keys, use these instead of the paredit minor mode map!

(define-key lisp-mode-map "(" 'paredit-open-list)
(define-key lisp-mode-map ")" 'paredit-close-list)
(define-key lisp-mode-map "\"" 'paredit-doublequote)
(define-key lisp-mode-map (kbd "M-;") 'paredit-comment-dwim) ; maybe this should be on ; ?
(define-key lisp-mode-map (kbd "RET") 'paredit-newline)
(define-key lisp-mode-map (kbd "C-j") 'newline)
(define-key lisp-mode-map (kbd "C-c C-M-l") 'paredit-recentre-on-sexp)
(define-key lisp-mode-map (kbd "M-(")  'paredit-wrap-sexp)
(define-key lisp-mode-map (kbd "M-s")  'paredit-splice-sexp)
(define-key lisp-mode-map (kbd "M-r")  'paredit-raise-sexp)
(define-key lisp-mode-map (kbd "C-)") 'paredit-forward-slurp-sexp)
(define-key lisp-mode-map (kbd "C-}") 'paredit-forward-barf-sexp)
(define-key lisp-mode-map (kbd "C-(") 'paredit-backward-slurp-sexp)
(define-key lisp-mode-map (kbd "C-{") 'paredit-backward-barf-sexp)
;(define-key lisp-mode-map (kbd "M-S") 'paredit-split-sexp) ; whats the diff between this in splice-sexp?

