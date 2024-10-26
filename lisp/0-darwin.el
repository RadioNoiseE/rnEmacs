;; darwin compatibility

(defun load-env-file (file)
  (if (null (file-exists-p file))
      (signal 'file-error
              (list "File not found" file
                    "run `emacs --script ~/.emacs.d/bootstrap.el`."))
    (with-temp-buffer
      (insert-file-contents file)
      (when-let (env (read (current-buffer)))
        (let ((tz (getenv-internal "TZ")))
          (setq-default
           process-environment
           (append env (default-value 'process-environment))
           exec-path
           (append (split-string (getenv "PATH") path-separator t)
                   (list exec-directory))
           shell-file-name
           (or (getenv "SHELL")
               (default-value 'shell-file-name)))
          (when-let (newtz (getenv-internal "TZ"))
            (unless (equal tz newtz)
              (set-time-zone-rule newtz))))
        env))))

(add-hook 'after-init-hook (apply-partially #'load-env-file "~/.emacs.d/core/darwin-env.el"))

(provide '0-darwin)
