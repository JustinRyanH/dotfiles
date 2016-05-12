(use-package company-quickhelp
  :commands (company-quickhelp-mode)
  :ensure company-quickhelp
  :demand company-quickhelp
  :init
  (company-quickhelp-mode 1)
  :config
  (progn
    )
  )

;; Company mode configuration
(use-package company
  :commands (company-mode)
  :ensure company
  :demand company
  :init
  (company-mode 1)
  :config
  (progn
    (add-hook 'after-init-hook 'global-company-mode)
    )
  )

(provide 'my-company)
