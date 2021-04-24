;;; magma-core.el -*- lexical-binding: t -*-

;;; Code:

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
            (bootstrap-version 5))
    (unless (file-exists-p bootstrap-file)
          (with-current-buffer
            (url-retrieve-synchronously
               "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
                'silent 'inhibit-cookies)
	          (goto-char (point-max))
   	        (eval-print-last-sexp)))
      (load bootstrap-file nil 'nomessage))

(setq straight-check-for-modifications nil)
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)
;; Use essential packages 


(use-package dash
	:defer t)

;; Needed for many packages
(require 'subr-x)
(require 'cl-lib)

;; GCMH does GC when the user is idle.
(use-package gcmh
  :defer 5 
  :init
  (setq gcmh-idle-delay 5
	gcmh-high-cons-threshold (* 16 1024 1024))  ; 16mb
	:config (gcmh-mode))

;;Slow down the UI being updated to improve performance
(setq idle-update-delay 1.1)

;; Prevent Emacs from polluting init.el with those pesky custom-set-variables.
(setq custom-file (concat user-emacs-directory "/custom.el"))

;; Disable scratch buffer
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message user-login-name
      inhibit-default-init t
      ;; Starting scratch buffer in fundamental mode rather then org mode improves performance.
      initial-major-mode 'fundamental-mode
      initial-scratch-message nil)

;; Inhibit fontification while receiving input which
;; can improve performance.
(setq redisplay-skip-fontification-on-input t)

;; Prevent Emacs from rendering lines on non focused windows.

(setq-default cursor-in-non-selected-windows nil)
(setq highlight-nonselected-windows nil)



;; Disable bidirectional text rendering to improve performance
(setq-default bidi-display-reordering 'left-to-right
              bidi-paragraph-direction 'left-to-right)

(provide 'magma-core)
