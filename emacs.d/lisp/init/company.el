(autoload 'company-mode "company" nil t)

(global-company-mode)
(eval-after-load 'global-company-mode
  (progn
    (company-quickhelp-mode 1)
    )
  )


(provide 'init/company)
