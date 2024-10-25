;; font misc

(defun font-inject ()
  (when (display-graphic-p)
    (set-face-attribute 'default nil :family "Cascadia Code")
    (set-face-attribute 'fixed-pitch nil :family "IBM 3270")
    (add-to-list 'face-font-rescale-alist '("IBM 3270" . 1.14))))

(add-hook 'window-setup-hook #'font-inject)
(add-hook 'server-after-make-frame-hook #'font-inject)

(use-package ligature
  :config
  (ligature-set-ligatures 'prog-mode
                          '(("=" (rx (+ (or ">" "<" "|" "/" "~" ":" "!" "="))))
                            (";" (rx (+ ";")))
                            ("&" (rx (+ "&")))
                            ("!" (rx (+ (or "=" "!" "\." ":" "~"))))
                            ("?" (rx (or ":" "=" "\." (+ "?"))))
                            ("%" (rx (+ "%")))
                            ("|" (rx (+ (or ">" "<" "|" "/" ":" "!" "}" "\]"
                                            "-" "=" ))))
                            ("\\" (rx (or "/" (+ "\\"))))
                            ("+" (rx (or ">" (+ "+"))))
                            (":" (rx (or ">" "<" "=" "//" ":=" (+ ":"))))
                            ("/" (rx (+ (or ">"  "<" "|" "/" "\\" "\*" ":" "!"
                                            "="))))
                            ("\." (rx (or "=" "-" "\?" "\.=" "\.<" (+ "\."))))
                            ("-" (rx (+ (or ">" "<" "|" "~" "-"))))
                            ("*" (rx (or ">" "/" ")" (+ "*"))))
                            ("w" (rx (+ "w")))
                            ("<" (rx (+ (or "\+" "\*" "\$" "<" ">" ":" "~"  "!"
                                            "-"  "/" "|" "="))))
                            (">" (rx (+ (or ">" "<" "|" "/" ":" "=" "-"))))
                            ("#" (rx (or ":" "=" "!" "(" "\?" "\[" "{" "_(" "_"
                                         (+ "#"))))
                            ("~" (rx (or ">" "=" "-" "@" "~>" (+ "~"))))
                            ("_" (rx (+ (or "_" "|"))))
                            ("0" (rx (and "x" (+ (in "A-F" "a-f" "0-9")))))
                            "Fl"  "Tl"  "fi"  "fj"  "fl"  "ft"
                            "{|"  "[|"  "]#"  "(*"  "}#"  "$>"  "^="))
  (global-ligature-mode t))

(provide '10-font)
