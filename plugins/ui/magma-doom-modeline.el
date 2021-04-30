;;; magma-doom-modeline.el -*- lexical-binding: t; -*-

(use-package doom-modeline
	:commands (doom-modeline-mode)	
	:defer t	
	:init
	(setq doom-modeline-major-mode-color-icon t)
	(setq doom-modeline-lsp t)
	(setq doom-modeline-modal-icon t)
	(setq doom-modeline-major-mode-icon t)
	(setq doom-modeline-github t)
	
	:hook (after-init . doom-modeline-mode))
(provide 'magma-doom-modeline)
