;;; magma-dashboard.el -*- lexical-binding: t -*-

(use-package dashboard
  :commands (dashboard-setup-startup-hook)
  :defer t
  :config
  (setq dashboard-items '((recents  . 5)
                        (bookmarks . 5)
                        (projects . 5)
                        (registers . 5)))
  (setq dashboard-banner-logo-title "Welcome to Magmamacs")
  (setq dashboard-startup-banner "~/Downloads/emacs-e.svg")
  (setq dashboard-center-content t)
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t)
  (setq dashboard-set-init-info t)
  (setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))
  :hook (after-init . dashboard-setup-startup-hook))

(provide 'magma-dashboard)
