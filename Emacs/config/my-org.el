(use-package evil-org
  :commands (evil-org-mode)
  :ensure evil-org
  :demand evil-org
)
(setq org-log-done t)

(find-file "~/.notes/todo.org")

(provide 'my-org)
