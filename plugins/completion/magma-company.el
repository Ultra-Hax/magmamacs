;;; magma-company.el -*- lexical-binding: t -*-

;;; Code:

(use-package company
  :commands (company company-global-mode company-mode)
  :defer t
  :hook (prog-mode . company-mode))

(use-package company-box
  :after company
  :commands (company-box-mode)
  :defer t
  :hook (company-mode . company-box-mode))

(provide 'magma-company)
