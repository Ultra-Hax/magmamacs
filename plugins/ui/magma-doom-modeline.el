;;; magma-doom-modeline.el -*- lexical-binding: t; -*-

(use-package doom-modeline
	:commands (doom-modeline-mode)	
	:defer t	
	:hook (after-init . doom-modeline-mode))

(provide 'magma-doom-modeline)
