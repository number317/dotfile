;; global user
(setq user-full-name "cheon")
(setq user-mail-address "cheon0112358d@gmail.com")

;; common setting
(setq make-backup-files nil)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 50)

(delete-selection-mode 1)
(global-hl-line-mode 1)
(load-theme 'spacemacs-dark 1)

(provide 'init-defaults)
