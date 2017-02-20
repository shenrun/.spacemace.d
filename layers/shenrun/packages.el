;;; packages.el --- shenrun layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: MacBook Air <macbookair@chenrundeMacBook-Air.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentathe Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `shenrun-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `shenrun/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `shenrun/pre-init-PACKAGE' and/or
;;   `shenrun/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code

(defconst shenrun-packages
  '(company
    ))

(defun shenrun/post-init-company()
  (setq company-idle-delay 0.08
        company-minimum-prefix-length 1)
  )
;;; packages.el ends here
