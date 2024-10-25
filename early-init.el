;;; early-init.el -*- lexical-binding: t -*-

;; This file optimizes the startup procedure, before
;; the bootstrapper comes into play.

(let ((normal-gc-cons-threshold (* 24 1024 1024)))
  (setq gc-cons-threshold most-positive-fixnum)
  (add-hook 'emacs-startup-hook
            (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))

;;; early-init.el ends here
