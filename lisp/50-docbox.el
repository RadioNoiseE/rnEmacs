;; eldoc in a child frame

(use-package eldoc-box
  :hook ((eglot-managed-mode . eldoc-box-hover-mode)
         (eldoc-mode . eldoc-box-hover-mode))
  :config (setq eldoc-box-max-pixel-width 520
                eldoc-box-max-pixel-height 200))

(provide '50-docbox)
