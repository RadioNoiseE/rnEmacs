;; better defaults

(pixel-scroll-precision-mode t)

(setq inhibit-startup-message t)

(defun pref-setup ()
  (global-auto-revert-mode t)
  (delete-selection-mode t)
  (electric-pair-mode t)
  (add-hook 'text-mode-hook #'visual-line-mode)
  (setq-default indent-tabs-mode nil)
  (setq dired-use-ls-dired nil)
  (setq enable-recursive-minibuffers t)
  (setq word-wrap-by-category t)
  (setq backup-directory-alist
        `((".*" . ,temporary-file-directory)))
  (setq auto-save-file-name-transforms
        `((".*" ,temporary-file-directory t)))
  (setq read-extended-command-predicate #'command-completion-default-include-p)
  (let ((hl-line-hooks '(text-mode-hook prog-mode-hook)))
    (mapc (lambda (hook) (add-hook hook 'hl-line-mode)) hl-line-hooks)))

(add-hook 'after-init-hook 'pref-setup)

(provide '10-preferences)
