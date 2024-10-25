;;; init.el -*- lexical-binding: t -*-

;; This file bootstraps the configuration, which is divided into
;; a number of other files.

(mapc (lambda (dir)
        (add-to-list 'load-path (expand-file-name dir user-emacs-directory)))
      '("lisp" "core"))

(require '0-melpa)
(require '0-package)
(require '0-darwin)
(require '10-font)
(require '10-preferences)
(require '10-theme)
(require '10-splash)
(require '10-modeline)
(require '20-minimap)
(require '20-treesitter)
(require '30-whichkey)
(require '40-lsp)
(require '40-autocomp)
(require '40-progenv)
(require '50-docbox)
(require '50-markup)
(require '50-literate)
(require '60-git)
(require '70-cjk)
(require '80-spellcheck)

(provide 'init)

;;; init.el ends here

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("bbb13492a15c3258f29c21d251da1e62f1abb8bbd492386a673dcfab474186af" default))
 '(package-selected-packages '(use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
