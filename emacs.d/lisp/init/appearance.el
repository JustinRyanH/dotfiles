(menu-bar-mode -1)
(tool-bar-mode -1)

(setq inhibit-splash-screen t
      inhibit-startup-echo-area-message t
      inhibit-startup-message t)

(require 'powerline)
(progn
  (powerline-center-evil-theme)
  )
(provide 'init/appearance)
