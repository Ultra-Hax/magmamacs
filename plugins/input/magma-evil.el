;;; magma-evil.el -*- lexical-binding: t -*-

(use-package evil 
  :defer t
  :init
  (setq evil-want-keybinding nil)	
  :hook (after-init . evil-mode))

(use-package evil-collection
	:after evil
  	:defer t 
  	:config
  	(evil-collection-init))
(use-package undo-tree
  :after evil
  :diminish
  :config
  (evil-set-undo-system 'undo-tree)
  (global-undo-tree-mode 1))

(provide 'magma-evil)
