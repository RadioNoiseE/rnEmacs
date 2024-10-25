;;; bootstrap.el -*- lexical-binding: t -*-

;; This file initializes the environment,
;; for which emacs is bootstraped.

(defun gen-env-file (path)
  "Read environment variables to PATH."
  (let ((dirname (file-name-directory path)))
    (make-directory dirname t))
  (with-temp-file path
    (setq-local coding-system-for-write 'utf-8-unix)
    (insert
     ";; -*- mode: emacs-lisp -*-\n"
     ";; This file was automatically dumped by `bootstrap.el` and may be overwritten.\n\n")
    (insert (pp-to-string process-environment))))

(gen-env-file "~/.emacs.d/core/darwin-env.el")
