(require 'web-mode)
(setq js-indent-level 2)
(setq css-indent-offset 2)

(evil-leader/set-key-for-mode 'tide-mode "d" 'tide-documentation-at-point)
(evil-define-key 'normal tile-mode-map (kbd "K") 'tide-jump-to-definition)

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (company-mode +1)
  )
;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)

(add-hook 'typescript-mode-hook #'setup-tide-mode)

(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "tsx" (file-name-extension buffer-file-name))
              (setup-tide-mode))))

(add-hook 'js2-mode-hook #'setup-tide-mode)



(require 'tide)
(provide 'init/web)
