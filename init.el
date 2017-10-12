;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are in
   ;; with a suppo
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (csv octavedefault 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Space
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-ninotesl layers w List of additional paths where to for
   ;; configuration layers. Paths must have a tradictionary()iling slash (
   dotspacemacs-configuration-layer-path '()
   ;; List
   dotspacemacs-configuration-layers
   '(
     ess
     csv
     (colors :variables
             colors-enable-nyan-cat-progress-bar t)
     html
     vimscript
     (latex :variables
            latex-enable-folding t
            latex-build-command "LaTeX")
     (version-control :variables
                      version-control-global-margin t)
     racket
     c-c++
     selectric
     javascript
     games
     ipython-notebook
     python
     (ranger :variables ranger-show-preview t)
     ivy
     helm
     auto-completion
     (better-defaults :variables better-defaults-move-to-end-of-code-first t)
     emacs-lisp
     git
     markdown
     pdf-tools
     osx
     (org :variables org-enable-reveal-js-support t)
     shenrun
     dash
     imenu-list
     (chinese :variables
              chinese-enable-youdao-dict t)
     (shell :variables
            shell-default-shell 'ansi-term
            shell-default-height 30
            shell-default-position 'bottom
            shell-enable-smart-eshell t)
     spell-checking
     syntax-checking
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(all-the-icons
                                      all-the-icons-dired
                                      cdlatex
                                      wrap-region
                                      color-theme-sanityinc-tomorrow
                                      vlf
                                      ob-ipython
                                      spaceline-all-the-icons
                                      org-edit-latex
                                      ox-ioslide
                                      highlight-thing)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the

   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'hybrid
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 10)
                                (projects . 10))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacegray
                         zenburn
                         dracula
                         moe
                         spacemacs-dark
                         spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.08
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers t
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'trailing
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  (setq-default dotspacemacs-startup-banner '"~/Pictures/5183_render_logo_code_gease.png")
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  (setcdr evil-insert-state-map nil)
  (define-key evil-insert-state-map [escape] 'evil-normal-state)
  (setq powerline-default-separator 'arrow)
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  (with-eval-after-load 'org
    (require 'ob-ipython)
    (setq org-confirm-babel-evaluate nil)   ;don't prompt me to confirm everytime I want to evaluate a block

;;; display/update images in the buffer after I evaluate
    (add-hook 'org-babel-after-execute-hook 'org-display-inline-images 'append)

    (setq org-plantuml-jar-path
          (expand-file-name "/usr/local/opt/plantuml/libexec/plantuml.jar"))
    (setq org-ditaa-jar-path
          (expand-file-name "/usr/local/opt/ditaa/libexec/ditaa0_10.jar"))

    (setq org-directory "~/Documents/MobileOrg")
    (setq org-mobile-directory "~/Documents/MobileOrg")
    (setq org-mobile-inbox-for-pull "~/Documents/MobileOrg/inbox.org")
    (setq org-capture-templates
          '(("t" "Todo" entry (file+headline "~/Documents/MobileOrg/gtd.org" "Tasks")
             "* TODO [#B] %?\n  %i\n"
             :empty-lines 1)
            ("n" "Notes" entry (file+datetree "~/Desktop/Notes/notes.org")
             "* %?\nEntered on %U\n"))
          )
    ;; Remove the markup characters, i.e., "/text/" becomes (italized) "text"
    (setq org-hide-emphasis-markers t)

    (add-hook 'org-mode-hook 'org-edit-latex-mode)
    (add-hook 'org-mode-hook 'turn-on-org-cdlatex)

    ;; Turn on visual-line-mode for Org-mode only
    ;; Also install "adaptive-wrap" from elpa
    (add-hook 'org-mode-hook 'turn-on-visual-line-mode)
    (require 'org-edit-latex)
    (require 'ox-ioslide)
    (require 'ox-ioslide-helper)
    (setq org-reveal-root "file:///Users/macbookair/reveal.js")

    ;;org-mode export to latex
    (require 'ox-latex)
    (setq org-latex-listings 'minted)
    ;; (setq org-export-latex-listings t)

    ;; ;;org-mode source code setup in exporting to latex
    ;; (add-to-list 'org-latex-listings '("" "listings"))
    ;; (add-to-list 'org-latex-listings '("" "color"))
    (add-to-list 'org-latex-packages-alist '("newfloat" "minted"))

    (add-to-list 'org-latex-packages-alist
                 '("" "xcolor" t))
    (add-to-list 'org-latex-packages-alist
                 '("" "listings" t))
    (add-to-list 'org-latex-packages-alist
                 '("" "fontspec" t))
    (add-to-list 'org-latex-packages-alist
                 '("" "indentfirst" t))
    (add-to-list 'org-latex-packages-alist
                 '("" "xunicode" t))
    (add-to-list 'org-latex-packages-alist
                 '("" "geometry"))
    (add-to-list 'org-latex-packages-alist
                 '("" "float"))
    (add-to-list 'org-latex-packages-alist
                 '("" "longtable"))
    (add-to-list 'org-latex-packages-alist
                 '("" "tikz"))
    (add-to-list 'org-latex-packages-alist
                 '("" "fancyhdr"))
    (add-to-list 'org-latex-packages-alist
                 '("" "textcomp"))
    (add-to-list 'org-latex-packages-alist
                 '("" "amsmath"))
    (add-to-list 'org-latex-packages-alist
                 '("" "tabularx" t))
    (add-to-list 'org-latex-packages-alist
                 '("" "booktabs" t))
    (add-to-list 'org-latex-packages-alist
                 '("" "grffile" t))
    (add-to-list 'org-latex-packages-alist
                 '("" "wrapfig" t))
    (add-to-list 'org-latex-packages-alist
                 '("normalem" "ulem" t))
    (add-to-list 'org-latex-packages-alist
                 '("" "amssymb" t))
    (add-to-list 'org-latex-packages-alist
                 '("" "capt-of" t))
    (add-to-list 'org-latex-packages-alist
                 '("figuresright" "rotating" t))
    (add-to-list 'org-latex-packages-alist
                 '("Lenny" "fncychap" t))

    (add-to-list 'org-latex-classes
                 '("yanming-org-book"
                   "\\documentclass{book}
\\usepackage[slantfont, boldfont]{xeCJK}
% chapter set
\\usepackage{titlesec}
\\usepackage{hyperref}

[NO-DEFAULT-PACKAGES]
[PACKAGES]



\\setCJKmainfont{楷体-简} % 设置缺省中文字体
\\setCJKsansfont{WenQuanYi Micro Hei}
\\setCJKmonofont{WenQuanYi Micro Hei Mono}

\\setmainfont{Bodoni 72} % 英文衬线字体
\\setsansfont{Arial} % 英文无衬线字体
\\setmonofont{DejaVu Sans Mono}
%\\setmainfont{WenQuanYi Micro Hei} % 设置缺省中文字体
%\\setsansfont{WenQuanYi Micro Hei}
%\\setmonofont{WenQuanYi Micro Hei Mono}

%如果没有它，会有一些 tex 特殊字符无法正常使用，比如连字符。
\\defaultfontfeatures{Mapping=tex-text}

% 中文断行
\\XeTeXlinebreaklocale \"zh\"
\\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt

% 代码设置
\\lstset{numbers=left,
numberstyle= \\tiny,
keywordstyle= \\color{ blue!70},commentstyle=\\color{red!50!green!50!blue!50},
frame=shadowbox,
breaklines=true,
rulesepcolor= \\color{ red!20!green!20!blue!20}
}

[EXTRA]
"
                 ("\\chapter{%s}" . "\\chapter*{%s}")
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

  (add-to-list 'org-latex-classes
               '("yanming-org-article"
                 "\\documentclass{article}
\\usepackage[slantfont, boldfont]{xeCJK}
\\usepackage{titlesec}
\\usepackage{hyperref}
\\usepackage{mathrsfs}

[NO-DEFAULT-PACKAGES]
[PACKAGES]

\\parindent 2em

%\\setCJKmainfont{楷体-简} % 设置缺省中文字体
%\\setCJKsansfont{WenQuanYi Micro Hei}
%\\setCJKmonofont{WenQuanYi Micro Hei Mono}

%\\setmainfont{Bodoni 72} % 英文衬线字体
%\\setmainfont{WenQuanYi Micro Hei} % 设置缺省中文字体
%\\setsansfont{WenQuanYi Micro Hei}
%\\setmonofont{WenQuanYi Micro Hei Mono}

%如果没有它，会有一些 tex 特殊字符无法正常使用，比如连字符。
\\defaultfontfeatures{Mapping=tex-text}

% 中文断行
\\XeTeXlinebreaklocale \"zh\"
\\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt

% 代码设置
\\lstset{numbers=left,
numberstyle= \\tiny,
keywordstyle= \\color{ blue!70},commentstyle=\\color{red!50!green!50!blue!50},
frame=shadowbox,
breaklines=true,
rulesepcolor= \\color{ red!20!green!20!blue!20}
}

[EXTRA]
"
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

  (add-to-list 'org-latex-classes
               '("yanming-org-beamer"
                 "\\documentclass{beamer}
\\usepackage[slantfont, boldfont]{xeCJK}
% beamer set
\\usepackage[none]{hyphenat}
\\usepackage[abs]{overpic}

[NO-DEFAULT-PACKAGES]
[PACKAGES]

\\setCJKmainfont{楷体-简} % 设置缺省中文字体
\\setCJKsansfont{WenQuanYi Micro Hei}
\\setCJKmonofont{WenQuanYi Micro Hei Mono}

\\setmainfont{Bodoni 72} % 英文衬线字体
\\setsansfont{Arial} % 英文无衬线字体
\\setmonofont{DejaVu Sans Mono}
%\\setmainfont{WenQuanYi Micro Hei} % 设置缺省中文字体
%\\setsansfont{WenQuanYi Micro Hei}
%\\setmonofont{WenQuanYi Micro Hei Mono}

%如果没有它，会有一些 tex 特殊字符无法正常使用，比如连字符。
\\defaultfontfeatures{Mapping=tex-text}

% 中文断行
\\XeTeXlinebreaklocale \"zh\"
\\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt

% 代码设置
\\lstset{numbers=left,
numberstyle= \\tinyframe=shadowbox,
breaklines=true,
rulesepcolor= \\color{ red!20!green!20!blue!20}
}

[EXTRA]
"
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

  (setq org-latex-pdf-process
        '("xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
          ;;"biber %b" "xelatex -interaction nonstopmode -output-directory %o %f"
          "bibtex %b"
          "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
          "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
;; (setq org-latex-pdf-process
;;       '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
;;         "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
;;         "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

(setq org-latex-create-formula-image-program 'imagemagick)
(spacemacs/set-leader-keys "cx" 'org-toggle-latex-fragment)
)

(add-hook 'doc-view-mode-hook 'auto-revert-mode)
(spacemacs/set-leader-keys "oy" 'youdao-dictionary-search-at-point+)
;; (pdf-tools-install)
;; set pdf viewer on OSX and Linux
(with-eval-after-load 'latex
  (setq TeX-auto-save t)
  (setq TeX-parse-self t)
  (setq-default TeX-master nil)
  (add-hook 'LaTeX-mode-hook 'turn-on-cdlatex)   ; with AUCTeX LaTeX mode
  (add-hook 'LaTeX-mode-hook 'visual-line-mode)
  (add-hook 'LaTeX-mode-hook 'flyspell-mode)
  (add-hook 'Latex-mode-hook 'LaTeX-math-mode)
  (add-hook 'LaTeX-mode-hook 'turn-on-reftex)
  (setq reftex-plug-into-AUCTeX t)
  (setq TeX-PDF-mode t)

  ;; Use Skim as viewer, enable source <-> PDF sync
  ;; make latexmk available via C-c C-c
  ;; Note: SyncTeX is setup via ~/.latexmkrc (see below)
  (add-hook 'LaTeX-mode-hook (lambda ()
                               (push
                                '("latexmk" "latexmk -shell-escape -pdf %s" TeX-run-TeX nil t
                                  :help "Run latexmk on file")
                                TeX-command-list)))
  (add-hook 'TeX-mode-hook '(lambda () (setq TeX-command-default "latexmk")))

  ;; use Skim as default pdf viewer
  ;; Skim's displayline is used for forward search (from .tex to .pdf)
  ;; option -b highlights the current line; option -g opens Skim in the background

  ;; enable PDF-LaTeX synchronization press SPC m v to highlight line in PDF
  ;; press shift cmd and click in PDF to show line in sourcecode
  (setq TeX-source-correlate-mode t)
  (setq TeX-source-correlate-start-server t)
  (setq TeX-source-correlate-method 'synctex)
  (setq TeX-view-program-selection '((output-pdf "PDF Viewer")))
  (setq TeX-view-program-list '(("PDF Viewer" "/Applications/Skim.app/Contents/SharedSupport/displayline -b -g %n %o %b"))))

(setq ns-use-srgb-colorspace nil)
;;解决自动复制的问题
(add-hook 'spacemacs-buffer-mode-hook (lambda ()
                                        (set (make-local-variable 'mouse-1-click-follows-link) nil)))
(wrap-region-mode t)
(wrap-region-add-wrapper "$" "$")
(wrap-region-add-wrapper "\\ (" "\\ )" "=")
(global-hungry-delete-mode t)
(global-centered-cursor-mode t)
(global-aggressive-indent-mode t)
(require 'yasnippet)
(yas-global-mode 1)
;; Remove Yasnippet's default tab key binding
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
;; Alternatively use Control-c + tab
(define-key yas-minor-mode-map (kbd "C-q") 'yas-expand)
(global-auto-highlight-symbol-mode t)
(highlight-indentation-mode t)
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

;; (global-highlight-thing-mode t)
;; (setq highlight-thing-what-thing 'symbol)
;; (setq highlight-thing-delay-seconds 0.1)
;; (setq highlight-thing-limit-to-defun t)
;; (setq highlight-thing-case-sensitive-p t)

(require 'color-theme-sanityinc-tomorrow)
(setq linum-format "%d ")
(spacemacs/toggle-transparency)

;; (eval-after-load "auto-complete" '(progn (ac-ispell-setup))) (add-hook
;;   'git-commit-mode-hook 'ac-ispell-ac-setup) (add-hook 'org-mode-hook
;;   'ac-ispell-ac-setup)

(spacemacs/set-leader-keys "ov" 'spacemacs/toggle-transparency)
(require 'vlf-setup)

(use-package spaceline-all-the-icons
  :after spaceline
  :config (spaceline-all-the-icons-theme))
)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(setq custom-file (expand-file-name "custom.el" dotspacemacs-directory))
(load custom-file 'no-error 'no-message)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (youdao-dictionary names chinese-word-at-point 2048-game wgrep smex smeargle reveal-in-osx-finder pbcopy osx-trash osx-dictionary orgit org-projectile org-present org org-pomodoro alert log4e gntp org-download mwim mmm-mode markdown-toc markdown-mode magit-gitflow launchctl ivy-hydra htmlize helm-gitignore helm-company helm-c-yasnippet gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md flyspell-correct-ivy flyspell-correct-helm flyspell-correct flycheck-pos-tip pos-tip flycheck evil-magit magit magit-popup git-commit with-editor counsel-projectile counsel swiper ivy company-statistics company auto-yasnippet yasnippet auto-dictionary ac-ispell auto-complete ws-butler window-numbering which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide ido-vertical-mode hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump f s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed dash aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async quelpa package-build spacemacs-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
  )
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (define-word zenburn-theme youdao-dictionary yapfify xterm-color ws-butler wrap-region winum which-key wgrep web-mode web-beautify volatile-highlights vimrc-mode vi-tilde-fringe uuidgen use-package unfill typit toc-org tagedit sudoku spaceline spacegray-theme smex smeargle slim-mode shell-pop selectric-mode scss-mode sass-mode reveal-in-osx-finder restart-emacs ranger rainbow-mode rainbow-identifiers rainbow-delimiters racket-mode pyvenv pytest pyenv-mode py-isort pug-mode popwin pip-requirements persp-mode pdf-tools pcre2el pbcopy paradox pangu-spacing pacmacs ox-reveal ox-ioslide osx-trash osx-dictionary orgit org-projectile org-present org-pomodoro org-edit-latex org-download org-bullets open-junk-file neotree mwim multi-term move-text moe-theme mmm-mode markdown-toc magit-gitflow macrostep lorem-ipsum livid-mode live-py-mode linum-relative link-hint less-css-mode launchctl json-mode js2-refactor js-doc ivy-purpose ivy-hydra info+ indent-guide hy-mode hungry-delete htmlize hl-todo highlight-thing highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-pydoc helm-purpose helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag google-translate golden-ratio gnuplot gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gh-md fuzzy flyspell-correct-ivy flyspell-correct-helm flycheck-pos-tip flx-ido find-by-pinyin-dired fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help emmet-mode elisp-slime-nav ein dumb-jump dracula-theme disaster diff-hl dash-at-point dactyl-mode cython-mode counsel-projectile counsel-dash company-web company-tern company-statistics company-c-headers company-auctex company-anaconda column-enforce-mode color-theme-sanityinc-tomorrow color-identifiers-mode coffee-mode cmake-mode clean-aindent-mode clang-format chinese-pyim cdlatex auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile all-the-icons-dired aggressive-indent adaptive-wrap ace-window ace-pinyin ace-link ace-jump-helm-line ac-ispell 2048-game))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ))
