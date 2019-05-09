(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-engine (quote xetex))
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(custom-enabled-themes (quote (sanityinc-tomorrow-eighties)))
 '(custom-safe-themes
   (quote
    ("f5512c02e0a6887e987a816918b7a684d558716262ac7ee2dd0437ab913eaec6" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "d8f76414f8f2dcb045a37eb155bfaa2e1d17b6573ed43fb1d18b936febc7bbc2" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(exec-path-from-shell-arguments (quote ("-l")))
 '(fci-rule-color "#343d46" t)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(org-babel-load-languages
   (quote
    ((shell . t)
     (python . t)
     (ipython . t)
     (emacs-lisp . t)
     (latex . t)
     (plantuml . t)
     (C . t)
     (matlab . t)
     (ditaa . t)
     (dot . t)
     (calc . t))))
 '(org-preview-latex-process-alist
   (quote
    ((dvipng :programs
             ("latex" "dvipng")
             :description "dvi > png" :message "you need to install the programs: latex and dvipng." :image-input-type "dvi" :image-output-type "png" :image-size-adjust
             (1.0 . 1.0)
             :latex-compiler
             ("latex -interaction nonstopmode -output-directory %o %f")
             :image-converter
             ("dvipng -fg %F -bg %B -D %D -T tight -o %O %f"))
     (dvisvgm :programs
              ("latex" "dvisvgm")
              :description "dvi > svg" :message "you need to install the programs: latex and dvisvgm." :use-xcolor t :image-input-type "dvi" :image-output-type "svg" :image-size-adjust
              (1.7 . 1.5)
              :latex-compiler
              ("latex -interaction nonstopmode -output-directory %o %f")
              :image-converter
              ("dvisvgm %f -n -b min -c %S -o %O"))
     (imagemagick :programs
                  ("latex" "convert")
                  :description "pdf > png" :message "you need to install the programs: latex and imagemagick." :use-xcolor t :image-input-type "pdf" :image-output-type "png" :image-size-adjust
                  (1.0 . 1.0)
                  :latex-compiler
                  ("xelatex -interaction nonstopmode -output-directory %o %f")
                  :image-converter
                  ("convert -density %D -trim -antialias %f -quality 100 %O")))))
 '(package-selected-packages
   (quote
    (zenburn-theme yasnippet-snippets yapfify xterm-color writeroom-mode visual-fill-column wrap-region winum web-mode web-beautify vlf vimrc-mode unfill typit mmt treemacs-projectile treemacs-evil treemacs ht pfuture tagedit symon sudoku string-inflection spaceline-all-the-icons spacegray-theme slim-mode shell-pop selectric-mode scss-mode sass-mode ranger rainbow-mode rainbow-identifiers racket-mode faceup pytest pyim pyim-basedict pyenv-mode py-isort pug-mode prettier-js pippel pipenv pyvenv pip-requirements password-generator pangu-spacing pacmacs ox-reveal ox-ioslide makey overseer org-category-capture org-mime org-edit-latex org-brain ob-ipython nameless multi-term moe-theme magit-svn livid-mode live-py-mode json-navigator hierarchy json-mode json-snatcher json-reformat js2-refactor multiple-cursors js-doc importmagic epc concurrent impatient-mode highlight-thing helm-xref helm-rtags helm-pydoc helm-purpose window-purpose imenu-list helm-org-rifle helm-git-grep helm-dash dash-docs helm-css-scss haml-mode google-c-style gitignore-templates git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter fuzzy flycheck-rtags find-by-pinyin-dired evil-org transient evil-lion evil-goggles evil-cleverparens paredit ess-R-data-view ctable ess julia-mode eshell-z eshell-prompt-extras esh-help emmet-mode ein skewer-mode polymode deferred websocket js2-mode simple-httpd editorconfig dracula-theme doom-modeline shrink-path disaster diff-hl dash-at-point dactyl-mode cython-mode csv-mode company-web web-completion-data company-tern dash-functional tern company-rtags rtags company-c-headers company-auctex company-anaconda color-theme-sanityinc-tomorrow color-identifiers-mode clang-format chinese-conv centered-cursor-mode cdlatex browse-at-remote auctex anaconda-mode pythonic all-the-icons-dired all-the-icons memoize ace-pinyin pinyinlib lv font-lock+ dotenv-mode youdao-dictionary names chinese-word-at-point 2048-game wgrep smex smeargle reveal-in-osx-finder pbcopy osx-trash osx-dictionary orgit org-projectile org-present org org-pomodoro alert log4e gntp org-download mwim mmm-mode markdown-toc markdown-mode magit-gitflow launchctl ivy-hydra htmlize helm-gitignore helm-company helm-c-yasnippet gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md flyspell-correct-ivy flyspell-correct-helm flyspell-correct flycheck-pos-tip pos-tip flycheck evil-magit magit magit-popup git-commit with-editor counsel-projectile counsel swiper ivy company-statistics company auto-yasnippet yasnippet auto-dictionary ac-ispell auto-complete ws-butler window-numbering which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide ido-vertical-mode hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump f s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed dash aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async quelpa package-build spacemacs-theme)))
 '(paradox-github-token "55081df8914db94e7a85b9ab8e2ed241fddec5a4")
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(powerline-default-separator (quote curve))
 '(racket-pretty-lambda t)
 '(racket-program "/Applications/Racket v6.8/bin/racket")
 '(racket-racket-program "/Applications/Racket v6.8/bin/racket")
 '(racket-raco-program "/Applications/Racket v6.8/bin/raco")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#bf616a")
     (40 . "#DCA432")
     (60 . "#ebcb8b")
     (80 . "#B4EB89")
     (100 . "#89EBCA")
     (120 . "#89AAEB")
     (140 . "#C189EB")
     (160 . "#bf616a")
     (180 . "#DCA432")
     (200 . "#ebcb8b")
     (220 . "#B4EB89")
     (240 . "#89EBCA")
     (260 . "#89AAEB")
     (280 . "#C189EB")
     (300 . "#bf616a")
     (320 . "#DCA432")
     (340 . "#ebcb8b")
     (360 . "#B4EB89"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(all-the-icons-dired-dir-face ((t (:foreground "gray"))))
 '(iedit-occurrence ((t (:inherit region)))))
