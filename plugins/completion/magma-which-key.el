;;; magma-which-key.el -*- lexical-binding: t -*-

(use-package which-key
  :commands (which-key-mode)
  :defer t
  :hook (after-init . which-key-mode)
  :init
  (setq which-key-idle-delay 1.0)
  (setq which-key-allow-evil-operators t))
  

(provide 'magma-which-key)
