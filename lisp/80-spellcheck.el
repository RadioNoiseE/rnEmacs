;; spell checking

(use-package flyspell
  :hook (text-mode . (lambda () (flyspell-mode 1))))

(provide '80-spellcheck)
