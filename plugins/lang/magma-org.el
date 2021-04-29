;;; magma-org.el -*- lexical-binding:t -*-

(use-package org-mode
  :defer 4
  :mode "\\.org$"
  :config
  (progn
    (setq org-log-done 'time)
    (setq org-confirm-babel-evaluate nil)
    (setq org-export-babel-evaluate nil)
    (setq org-html-validation-link nil)))

(provide 'magma-org)
