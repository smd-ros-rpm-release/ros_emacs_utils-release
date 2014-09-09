
;;; General configuration
(customize-set-variable 'indent-tabs-mode nil)
(setq default-tab-width 2)
(global-font-lock-mode t)
(setq query-replace-highlight t)
(setq search-highlight t)
(show-paren-mode 1)
(global-set-key '[delete] 'delete-char)
(setq minibuffer-max-depth nil)
(setq auto-mode-alist
      (append '(("\\.C$"       . c++-mode)
                ("\\.cc$"      . c++-mode)
                ("\\.c$"       . c-mode)
                ("\\.h$"       . c++-mode)
                ("makefile$"   . makefile-mode)
                ("Makefile$"   . makefile-mode)
                ("\\.asd"      . lisp-mode)
                ("\\.launch"   . xml-mode)) auto-mode-alist))
(autoload 'mwheel-install "mwheel" "Enable mouse wheel support.")

;;; Start slime
(require 'slime-config)
(slime)

;;; Footer
(provide 'repl-config)
