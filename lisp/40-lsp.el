;; language server intergration

(use-package eglot
  :hook ((c-ts-mode . eglot-ensure)
         (c++-ts-mode . eglot-ensure)
         (LaTeX-mode . eglot-ensure)
         (plain-TeX-mode . (lambda ()
                             (put 'plain-TeX-mode 'eglot-language-id "plain")
                             (eglot-ensure)))
         (AmSTeX-mode . (lambda ()
                          (put 'AmSTeX-mode 'eglot-language-id "plain")
                          (eglot-ensure))))
  :config (with-eval-after-load 'eglot (dolist (mode-server '((plain-TeX-mode . ("digestif"))
                                                              (AmSTeX-mode . ("digestif"))
                                                              (LaTeX-mode . ("texlab"))
                                                              (c-ts-mode . ("clangd" "--header-insertion=never"))
                                                              (c++-ts-mode . ("clangd" "--header-insertion=never"))))
                                         (add-to-list 'eglot-server-programs mode-server))))

(provide '40-lsp)
