;;; init.el -*- no-byte-compile: t lexical-binding: t -*-

;;; Code:

(require 'magma-core)
(require 'magma-core-ui)
(require 'magma-doom-themes)
(require 'magma-doom-modeline)
;;(require 'magma-space-line)
(require 'magma-evil)
(require 'magma-general)
(require 'magma-ivy)
(require 'magma-company)
(require 'magma-esup)
(require 'magma-projectile)
(require 'magma-flycheck)
(require 'magma-rainbow-delimiters)
(require 'magma-smartparens)
(require 'magma-solaire-mode)
(require 'magma-dashboard)
(require 'magma-scheme)
(require 'magma-org)
(require 'magma-which-key)
(require 'magma-ligature)
;;(require 'magma-centaur-tabs)
;;(load-theme 'doom-solarized-dark t)
;;(load-theme 'doom-one t)
(load-theme 'doom-moonlight t)
(add-to-list 'default-frame-alist '(font . "Monoid Nerd Font Mono-10" ))
(set-face-attribute 'default t :font "Monoid Nerd Font Mono-10" )

;;(add-to-list 'default-frame-alist '(font . "JetBrainsMono Nerd Font Mono"))
;;(set-face-attribute 'default t :font "JetBrainsMono Nerd Font Mono")
;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:

