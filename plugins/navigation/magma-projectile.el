;;; magma-projectile.el -*- lexical-binding: t -*-

(use-package projectile
  :defer t
  :init
  (projectile-mode +1)
  :config
)

(use-package counsel-projectile
  :after projectile
  :config
  (counsel-projectile-mode)
  (general-define-key
  :states 'normal
  "fp" 'projectile-find-file
  "fb" 'projectile-find-file-other-window))
(provide 'magma-projectile)
