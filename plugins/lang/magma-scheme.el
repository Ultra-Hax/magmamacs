;;; magma-scheme.el -*- lexical-binding: t -*-

(use-package geiser
  :defer t
  :hook (scheme-mode . geiser-mode))

(use-package geiser-chez
  :defer t)

(provide 'magma-scheme)
