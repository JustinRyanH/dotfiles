(require 'rust-mode)
(require 'rustfmt)
(require 'cargo)
(require 'company-racer)

;; Enable rustfmt on save
(add-hook 'rust-mode-hook #'rustfmt-enable-on-save)

;; Racer Configurations
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
;; Completetions 
(global-set-key (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)
 
(evil-define-key 'normal rust-mode-map (kbd "K") 'racer-find-definition)


(provide 'my-rust)
