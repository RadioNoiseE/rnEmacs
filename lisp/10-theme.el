;; overall theming

(use-package spacemacs-theme
  :hook (after-init . (lambda () (load-theme 'spacemacs-light t)))
  :init (setq spacemacs-theme-comment-bg nil
              spacemacs-theme-comment-italic t))

(provide '10-theme)
