;;; magma-smartparens.el -*- lexical-binding: t -*-

(use-package smartparens
  :commands (smartparens-mode smartparens-strict-mode)
  :defer t
  :hook (prog-mode . smartparens-mode))

(provide 'magma-smartparens)
