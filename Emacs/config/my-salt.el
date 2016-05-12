(use-package yaml-mode
  :commands (yaml-mode)
  :ensure yaml-mode
  :demand yaml-mode
  :config
  (progn
    (define-derived-mode saltstack-mode yaml-mode "Saltstack"
	"Minimal Saltstack mode, based on `yaml-mode'."
	(setq tab-width 2
	      indent-tabs-mode nil))
    (add-to-list 'auto-mode-alist '("\\.sls\\'" . saltstack-mode))
    )
  )
(require 'yaml-mode)
(provide 'my-salt)


