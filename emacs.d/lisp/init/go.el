(defun go-mode-setup ()
  ;; Setup compile comand Ctrl-c Ctrl-C
  (setq compile-command "dev-go build -i")
  (define-key (current-local-map) (kbd "C-c C-c") 'compile)
  ;; Gofmt on save
  (setq gofmt-command "goimports")
  ;; Set eldoc Setup
  (go-eldoc-setup)
  (add-hook 'before-save-hook 'gofmt-before-save)
  ;; Evil jump to `k`
  (evil-leader/set-key-for-mode 'go-mode "k" 'godef-jump-other-window)
  )

(evil-define-key 'normal go-mode-map (kbd "K") 'godef-jump)
(add-hook 'go-mode-hook 'go-mode-setup)
(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (company-mode)))

(setenv "GOATH" "/Users/justin/Work/katamari/go")

(provide 'init/go)
