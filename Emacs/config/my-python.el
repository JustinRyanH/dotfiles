(use-package company-jedi
  :ensure company-jedi
  :demand company-jedi
  :config
  (progn
    (add-hook 'python-mode-hook (lambda()
				  (set (make-local-variable 'company-backends) '(company-jedi))
				  (company-mode)))
    )
  )
(provide 'my-python)
