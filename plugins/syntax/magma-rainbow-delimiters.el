;;; magma-rainbow-delimiters.el -*- lexical-binding: t -*-

(use-package rainbow-delimiters
  :commands (rainbow-delimiters-mode)
  :defer t
  :hook (prog-mode . rainbow-delimiters-mode))

(provide 'magma-rainbow-delimiters)
