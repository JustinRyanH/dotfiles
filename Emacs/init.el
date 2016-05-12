(require 'package)
(package-initialize)
(setq package-enable-at-startup nil)

(setq inhibit-splash-screen t
      inhibit-startup-echo-area-message t
      inhibit-startup-message t)

;; File Backups to One locations
(setq backup-directory-alist
	`((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
	`((".*" ,temporary-file-directory t)))

(add-to-list 'load-path (concat user-emacs-directory "config"))
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))


;; Setup the theme
(load-theme 'idea-darkula t)

(require 'my-company)
(require 'my-evil)
(require 'my-slime)
(require 'my-magit)

(require 'my-powerline)
(require 'my-ibuffer)
(require 'dired-x)
(require 'my-dired)

;; Language Specific Configurations
(require 'my-salt)
(require 'my-golang)
(require 'my-rust)
(require 'my-python)


;; Term Hooks
(add-hook 'term-mode-hook
   (lambda ()
     ;; C-x is the prefix command, rather than C-c
     (term-set-escape-char ?\C-x)
     (define-key term-raw-map "\M-y" 'yank-pop)
     (define-key term-raw-map "\M-w" 'kill-ring-save)))

