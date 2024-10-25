;; markup language enhancements

(use-package htmlize
  :defer t)

(setq org-html-doctype "html5"
      org-html-html5-fancy t)

(use-package tex
  :ensure auctex
  :defer t
  :init (set-default 'preview-scale-function 0.72))

(with-eval-after-load 'font-latex
  (add-hook 'LaTeX-mode-hook 'ltx/expl3-font-lock)
  (add-hook 'docTeX-mode-hook 'ltx/expl3-font-lock)
  (defun ltx/expl3-font-lock ()
    (let ((signatures "NncVvoxefTFpwD")
          (vartypes '("clist" "dim" "fp" "int" "muskip" "seq" "skip"
                      "str" "tl" "bool" "box" "coffin" "flag" "fparray"
                      "intarray" "ior" "iow" "prop" "regex")))
      (font-lock-add-keywords nil
                              `((,(concat "\\(\\\\\\(?:@@_\\|\\(?:__\\)?[a-zA-Z]+_\\)[a-zA-Z_]+\\)"
                                          "\\(:[" signatures "]*\\)")
                                 . ((1 'font-lock-keyword-face)
                                    (2 'font-lock-type-face)))
                                (,(concat "\\(\\\\[lgc]_[a-zA-Z@_]+"
                                          "_\\(?:" (mapconcat #'identity vartypes "\\|") "\\)\\_>"
                                          "\\)")
                                 1 'font-lock-variable-name-face))))))

(setq org-preview-latex-default-process 'dvisvgm
      org-format-latex-options '(:scale 1.14))

(setq TeX-view-program-selection '((output-pdf "Preview"))
      TeX-view-program-list '(("Preview" "open -a Preview.app %o")))

(use-package markdown-mode
  :defer t)

(provide '50-markup)
