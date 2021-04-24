;;; magma-centaur-tabs.el -*- lexical-binding: t -*-

(use-package centaur-tabs
  :defer t
  :config
  (setq centaur-tabs-style "rounded")
  (setq centaur-tabs-height 32)
  (setq centaur-tabs-set-icons t)
  (centaur-tabs-headline-match)
  :bind
  ("C-h" . centaur-tabs-backward)
  ("C-l" . centaur-tabs-forward)
  :hook (after-init . centaur-tabs-mode))

(provide 'magma-centaur-tabs)
