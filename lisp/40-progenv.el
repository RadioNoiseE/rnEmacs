;; programming language

(use-package tuareg
  :defer t)

(use-package haskell-mode
  :defer t)

(use-package proof-general
  :defer t
  :init (setq proof-splash-enable nil
              proof-delete-empty-windows t))

(provide '40-progenv)
