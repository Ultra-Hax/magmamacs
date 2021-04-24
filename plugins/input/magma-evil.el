;;; magma-evil.el -*- lexical-binding: t -*-

(use-package evil 
  	:init
  	(setq evil-want-keybinding nil)	
	:config (evil-mode))

(use-package evil-collection
	:after evil
  	:defer 1 
  	:config
  	(evil-collection-init))

(provide 'magma-evil)
