;;;
;;;
;;;				NO WARRANTY
;;;
;;; This software is distributed free of charge and is in the public domain.
;;; Anyone may use, duplicate or modify this program.  Thinking Machines
;;; Corporation does not restrict in any way the use of this software by
;;; anyone.
;;; 
;;; Thinking Machines Corporation provides absolutely no warranty of any kind.
;;; The entire risk as to the quality and performance of this program is with
;;; you.  In no event will Thinking Machines Corporation be liable to you for
;;; damages, including any lost profits, lost monies, or other special,
;;; incidental or consequential damages arising out of the use of this program.
;;;
;;; 10/21/1987
;;;

;;;
;;; This file fixes emacs paging behavior that has been broken forever!  
;;; If you do a Control-v followed by a Meta-v, you inevitably end up on a 
;;; different position in the code.  This is most annoying when you were just 
;;; trying to get a peek at some nearby code.  If you want the same fix for 
;;; 3600's just send a message to bug-lispm@think.com.
;;;


(defvar last-movement-goal-col 0)

(defun tmc-next-line (amount)
  (interactive "p")
  (setq this-command 'next-line)
  (cond ((or (eq last-command 'next-line) (eq last-command 'scroll))
	 (setq goal-column last-movement-goal-col)
	 (next-line amount)
	 (setq goal-column nil))
	(t (setq last-movement-goal-col (current-column))
	   (next-line amount)))
  )

(defvar how-many-is-ten 8)

(defun down-ten-lines (arg)
  (interactive "p")
  (tmc-next-line (* arg (- how-many-is-ten))))

(defun up-ten-lines (arg)
  (interactive "p")
  (tmc-next-line (* how-many-is-ten arg))
  )

(defun tmc-previous-line (arg)
  (interactive "p")
  (tmc-next-line (- arg))
  )

(defvar last-scroll-goal-row 0)

(defun window-line ()
  ;;; This is not accurate in view of continuation lines
  (max 0 (1- (count-lines (window-start (selected-window)) (point)))))

(defun goto-window-pos (row col)
  (vertical-motion row)
  (move-to-column col)
  )

(defun tmc-scroll-internal (arg down-p)
  (setq this-command 'scroll)
  (cond ((eq last-command 'next-line)
	 (setq last-scroll-goal-row (window-line)))
	((not (eq last-command 'scroll))
	 (setq last-scroll-goal-row (window-line))
	 (setq last-movement-goal-col (current-column))))
  (if down-p
      (progn (scroll-down arg)
	     (goto-char (window-start (selected-window))))
    (scroll-up arg))
  (goto-window-pos last-scroll-goal-row last-movement-goal-col)
  )

(defun tmc-scroll-down (arg)
  (interactive "P")
  (tmc-scroll-internal arg t)
  )

(defun tmc-scroll-up (arg)
  (interactive "P")
  (tmc-scroll-internal arg nil)
  )


