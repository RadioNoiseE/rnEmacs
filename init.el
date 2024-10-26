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
