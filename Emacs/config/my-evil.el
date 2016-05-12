;; Evil Mode Configuration
(use-package evil-leader
  :commands (evil-leader-mode)
  :ensure evil-leader
  :demand evil-leader
  :init
  (global-evil-leader-mode)
  :config
  (progn
    (evil-leader/set-leader ",")
    (evil-leader/set-key "J" 'evil-join)
    (evil-leader/set-key "w" 'save-buffer)
    (evil-leader/set-key "q" 'kill-buffer-and-window)
    (evil-leader/set-key "h" 'dired-jump)
    (evil-leader/set-key "v" 'split-window-right)
    (evil-leader/set-key "," 'other-window)
    (evil-leader/set-key "b" 'ibuffer)
    )
  )

(use-package evil
  :commands (evil-mode)
  :ensure evil
  :demand evil
  :init
  (evil-mode 1)
  :config
  (progn
    (define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
    (define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
    (define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
    (define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)
    (define-key evil-normal-state-map (kbd "J") 'pop-tag-mark)
    )
  )

(provide 'my-evil)
