(use-package magit
  :ensure magit
  :config
  (progn
    ;; (evil-set-initial-state 'magit-mode 'normal)
    ;; (evil-set-initial-state 'magit-status-mode 'normal)
    ;; (evil-set-initial-state 'magit-diff-mode 'normal)
    ;; (evil-set-initial-state 'magit-log-mode 'normal)
    ;; (evil-define-key 'normal magit-status-map
    ;;   "q" 'kill-buffer)
    ;; (evil-define-key 'normal magit-mode-map
    ;;   "j" 'magit-go-forward
    ;;   "k" 'magit-go-backward
    ;;   "q" 'kill-buffer)
    ;; (evil-define-key 'normal magit-log-mode-map
    ;;   "j" 'magit-go-forward
    ;;   "k" 'magit-go-backward
    ;;   "q" 'kill-buffer)
    ;; (evil-define-key 'normal magit-diff-mode-map
    ;;   "j" 'magit-go-forward
    ;;   "k" 'magit-go-backward
    ;;   "q" 'kill-buffer)
     )
    )
  (use-package evil-magit
    :ensure evil-magit
    :config
    (progn
      
      (evil-leader/set-key "g" 'magit-status)
      
      )
    )

(provide 'my-magit)
