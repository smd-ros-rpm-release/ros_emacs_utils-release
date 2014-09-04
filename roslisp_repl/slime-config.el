
(require 'rosemacs-config)

(require 'slime-autoloads)
(setq slime-backend "swank-loader.lisp")
(add-hook 'inferior-lisp-mode-hook (lambda () (inferior-slime-mode 1)))

(setq inferior-lisp-program "/usr/bin/sbcl --dynamic-space-size 4096")
(setq slime-lisp-implementations nil)

(setq slime-contribs '(slime-repl
                       slime-autodoc
                       ;; slime-c-p-c
                       slime-editing-commands
                       slime-fancy-inspector
                       slime-fancy-trace
                       slime-fuzzy
                       slime-presentations
                       slime-scratch
                       slime-references
                       slime-package-fu
                       slime-fontifying-fu
                       slime-trace-dialog
                       ;;
                       slime-asdf
                       slime-indentation
                       slime-xref-browser
                       slime-highlight-edits
                       slime-ros))

(setq slime-complete-symbol-function 'slime-fuzzy-complete-symbol)

(provide 'slime-config)
