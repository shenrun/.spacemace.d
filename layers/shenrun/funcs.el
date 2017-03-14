(defvar frame-alpha-active-walk-step 2)
(defvar frame-alpha-inactive-walk-step 1)
(defvar frame-alpha-default (list 100 50))

(defconst frame-alpha-original-lower-limit 20)

(setq frame-alpha-lower-limit 10)
(defvar frame-alpha-max 100)
(defvar frame-alpha-min frame-alpha-lower-limit)

(defun frame-alpha-initialize ()
  (set-frame-parameter nil 'alpha (or (frame-parameter nil 'alpha) frame-alpha-default)))
;; important
(frame-alpha-initialize)

(defun frame-alpha-set-active (arg)
  (cond ((> arg frame-alpha-max)
     (dolist (f (frame-list))
       (set-frame-parameter f 'alpha (list frame-alpha-max (second (frame-parameter nil 'alpha))))))
    ((< arg frame-alpha-min)
     (dolist (f (frame-list))
       (set-frame-parameter f 'alpha (list frame-alpha-min (second (frame-parameter nil 'alpha))))))
    (t
     (dolist (f (frame-list))
       (set-frame-parameter f 'alpha (list arg (second (frame-parameter nil 'alpha))))))))
(defun frame-alpha-get-active ()
  (first (frame-parameter nil 'alpha)))

(defun frame-alpha-set-inactive (arg)
  (cond ((> arg frame-alpha-max)
     (dolist (f (frame-list))
       (set-frame-parameter f 'alpha (list (first (frame-parameter nil 'alpha)) frame-alpha-max))))
    ((< arg frame-alpha-min)
     (dolist (f (frame-list))
       (set-frame-parameter f 'alpha (list (first (frame-parameter nil 'alpha)) frame-alpha-min))))
    (t
     (dolist (f (frame-list))
       (set-frame-parameter f 'alpha (list (first (frame-parameter nil 'alpha)) arg))))))
(defun frame-alpha-get-inactive ()
  (second (frame-parameter nil 'alpha)))

(defun frame-alpha-set-all (arg)
  (if (and (list arg)
       (list (cdr arg))
       (null (cddr arg))
       (numberp (first arg))
       (numberp (second arg)))
      (progn
    (frame-alpha-set-active (first arg))
    (frame-alpha-set-inactive (second arg)))
    (message "%s in not a valid parameter like (100 80)" arg)))
(defun frame-alpha-get-all ()
  (frame-parameter nil 'alpha))

(defun frame-alpha-active-increase ()
  (interactive)
  (frame-alpha-set-active (+ (frame-alpha-get-active) frame-alpha-active-walk-step)))
(defun frame-alpha-active-decrease ()
  (interactive)
  (frame-alpha-set-active (- (frame-alpha-get-active) frame-alpha-active-walk-step)))
(defun frame-alpha-inactive-increase ()
  (interactive)
  (frame-alpha-set-inactive (+ (frame-alpha-get-inactive) frame-alpha-inactive-walk-step)))
(defun frame-alpha-inactive-decrease ()
  (interactive)
  (frame-alpha-set-inactive (- (frame-alpha-get-inactive) frame-alpha-inactive-walk-step)))
(defun frame-alpha-all-increase ()
  (frame-alpha-active-increase)
  (frame-alpha-inactive-increase))
(defun frame-alpha-all-decrease ()
  (frame-alpha-active-decrease)
  (frame-alpha-inactive-decrease))

(defun frame-alpha-get ()
  (interactive)
  (message "%s" (frame-parameter (selected-frame) 'alpha)))
(defun frame-alpha-reset ()
  (interactive)
  (set-frame-parameter (selected-frame) 'alpha frame-alpha-default))



;;;###autoload
(defun peek (arg)
  "Temporary set transparent to arg seconds."
  (interactive "p")
  (let ((alpha (car (frame-alpha-get-all)))
        (time (1+ (log (+ 1 (abs arg)) 4))))
    (when (< 50 alpha)
      (frame-alpha-set-active 33)
      (message "%d" time)
      (sleep-for (abs time) 500)
      (frame-alpha-set-active alpha))))

;;;###autoload
(defun perspective ()
  "be transparent until a key stroke
2013-06-06 Thursday 22:45:58 by Scinart"
  (interactive)
  (let ((active-alpha (frame-alpha-get-active))
        (inactive-alpha (frame-alpha-get-inactive)))
    (frame-alpha-set-active frame-alpha-min)
    (frame-alpha-set-inactive frame-alpha-min)
    (read-event)
    (when last-input-event
      (frame-alpha-set-active active-alpha)
      (frame-alpha-set-inactive inactive-alpha)
      (setq unread-command-events (list last-input-event)))))

;; TODO I don't know how to use advice :P
(defadvice make-frame-command (after same-transparency activate compile)
  "Create a new frame with the same transparency."
  (if (display-graphic-p)
      (make-frame (list (cons 'alpha (frame-parameter (selected-frame) 'alpha))))))
