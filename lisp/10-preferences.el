;; better defaults

(global-auto-revert-mode t)
(delete-selection-mode t)
(electric-pair-mode t)
(pixel-scroll-precision-mode t)

(scroll-bar-mode -1)
(tool-bar-mode -1)

(add-hook 'text-mode-hook #'visual-line-mode)

(setq-default indent-tabs-mode nil)

(setq dired-use-ls-dired nil)

(setq inhibit-startup-message t)
(setq enable-recursive-minibuffers t)
(setq word-wrap-by-category t)

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(setq read-extended-command-predicate #'command-completion-default-include-p)

(provide '10-preferences)
