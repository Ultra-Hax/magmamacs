;;; magma-flycheck.el -*- lexical-binding: t -*-

(use-package flycheck
  :demand t
  :defer t
  :config
  (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
  :hook (prog-mode . flycheck-mode))

(provide 'magma-flycheck)
