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

;; yes and no
(defalias 'yes-or-no-p 'y-or-n-p)

;; follow link
(setq vc-follow-symlinks t)

;; show start time
(defvar init-time 'nil)
(defun display-benchmark()
  (message "Mage loaded %s packages in %.03fs"
	   (length package-activated-list)
	   (or init-time
	       (setq init-time
		     (float-time (time-subtract (current-time) before-init-time))))))
(add-hook 'emacs-startup-hook #'display-benchmark)

;; auto pair
(electric-pair-mode 1)

(provide 'init-defaults)
