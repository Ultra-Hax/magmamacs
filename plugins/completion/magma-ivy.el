;;;magma-ivy.el -*- lexical-binding: t -*-

(use-package ivy
  :defer 0.1
  ;;:diminish
  :custom
  (ivy-count-format "(%d/%d) ")
  (ivy-use-virtual-buffers t)
  (global-set-key "\C-s" 'swiper)
  (global-set-key (kbd "C-c C-r") 'ivy-resume)
  (global-set-key (kbd "<f6>") 'ivy-resume)
  (global-set-key (kbd "M-x") 'counsel-M-x)
  (global-set-key (kbd "C-x C-f") 'counsel-find-file)
  (global-set-key (kbd "<f1> f") 'counsel-describe-function)
  (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
  (global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
  (global-set-key (kbd "<f1> l") 'counsel-find-library)
  (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
  (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
  (global-set-key (kbd "C-c g") 'counsel-git)
  (global-set-key (kbd "C-c j") 'counsel-git-grep)
  (global-set-key (kbd "C-c k") 'counsel-ag)
  (global-set-key (kbd "C-x l") 'counsel-locate)
  (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
  (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
  
  :config (ivy-mode))

(use-package counsel
  :after ivy
  :config (counsel-mode))

(use-package all-the-icons-ivy-rich
  :after ivy
  :init (all-the-icons-ivy-rich-mode 1))

(use-package ivy-rich
  :after all-the-icons-ivy-rich
  :init
  (ivy-rich-mode 1))
(use-package swiper
  :commands (swiper)
  :after ivy
  :init 
  (define-key evil-normal-state-local-map "/" 'swiper) 
  :bind (("C-s" . swiper)
         ("C-r" . swiper)))

(provide 'magma-ivy)
