(menu-bar-mode -1)
(tool-bar-mode -1)

(setq inhibit-splash-screen t
      inhibit-startup-echo-area-message t
      inhibit-startup-message t)

(require 'powerline)

(load-theme 'labburn t)
(set-face-attribute 'mode-line nil
                    :foreground "white"
                    :background "DarkOrange"
                    :box nil)
(setq powerline-arrow-shape 'curve)
(progn
  (powerline-center-evil-theme)
  )
(provide 'init/appearance)
