;; (use-package company-jedi
;;   :ensure company-jedi
;;   :demand company-jedi
;;   :config
;;   (progn
;;     (add-hook 'python-mode-hook (lambda()
;; 				  (set (make-local-variable 'company-backends) '(company-jedi))
;; 				  (company-mode)))
;;     )
;;   )
(use-package virtualenvwrapper
  :ensure virtualenvwrapper
  :demand virtualenvwrapper
  :config
  (progn
    (setq venv-location "~/.virtualenvs/")
    (venv-initialize-interactive-shells)
    (setq eshell-prompt-function
	  (lambda ()
	    (concat venv-current-name " $ ")
	    )
	  )
    )
  )

(provide 'my-python)
