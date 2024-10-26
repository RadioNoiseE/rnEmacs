;; overall theming

(use-package ef-themes
  :hook (after-init . (lambda () (ef-themes-select 'ef-tritanopia-light)))
  :init (setq ef-themes-disable-other-themes t
              ef-themes-mixed-fonts t
              ef-themes-variable-pitch-ui nil
              ef-themes-headings '((0 variable-pitch 1.7)
                                   (1 variable-pitch 1.5)
                                   (2 variable-pitch 1.4)
                                   (3 variable-pitch 1.3)
                                   (4 variable-pitch 1.2)
                                   (5 variable-pitch 1.2)
                                   (6 variable-pitch 1.2)
                                   (7 variable-pitch 1.1)
                                   (t variable-pitch 1.1))))

(defun ef-themes-mode-line-patch ()
  (ef-themes-with-colors
    (custom-set-faces
     `(mode-line ((,c :background ,bg-mode-line :foreground ,fg-mode-line :box (:line-width 1 :color ,fg-dim))))
     `(mode-line-inactive ((,c :box (:line-width 1 :color ,bg-active)))))))

(add-hook 'ef-themes-post-load-hook #'ef-themes-mode-line-patch)

(mapc #'disable-theme custom-enabled-themes)

(provide '10-theme)
