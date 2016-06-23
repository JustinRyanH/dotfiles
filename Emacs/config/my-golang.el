(require 'company-go)
(require 'go-mode)

;; Enviornment Variables
(setenv "GOPATH" "/Users/justin/Work/katamari/go")
(setq gofmt-command "goimports")


(defun my-go-mode-hook ()
  (add-hook 'before-save-hook 'gofmt-before-save)
  (add-hook 'go-mode-hook (lambda ()
                      (set (make-local-variable 'company-backends) '(company-go))
		      (company-mode))))


(evil-define-key 'normal go-mode-map (kbd "K") 'godef-jump)
(evil-leader/set-key "k" 'godef-jump-other-window)
(provide 'my-golang)
