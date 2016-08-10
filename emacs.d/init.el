(defvar user-lisp-directory
  (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path user-lisp-directory)


(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
(set-keyboard-coding-system nil)

(require 'init/appearance)
(require 'init/essential)
(require 'init/search)
(require 'init/go)
(require 'init/web)

;; Emacs server
(require 'server)
(unless (server-running-p)
  (server-start))
