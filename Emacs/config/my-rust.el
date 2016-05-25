(require 'rust-mode)
(require 'rustfmt)
(require 'cargo)
(require 'company-racer)

(use-package toml-mode
  :commands (toml-mode)
  :ensure toml-mode
  :demand toml-mode)

;; Enable rustfmt on save
(add-hook 'rust-mode-hook #'rustfmt-enable-on-save)
(add-hook 'rust-mode-hook 'cargo-minor-mode)
;; Racer Configurations
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
;; Completetions 
(global-set-key (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

(evil-define-key 'normal rust-mode-map (kbd "K") 'racer-find-definition)
(evil-leader/set-key-for-mode 'rust-mode "b" 'cargo-process-build)
(evil-leader/set-key-for-mode 'rust-mode "r" 'cargo-process-run)


(provide 'my-rust)
