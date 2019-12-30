;; global user
(setq user-full-name "cheon")
(setq user-mail-address "cheon0112358d@gmail.com")

;; common setting
(setq make-backup-files nil)
(setq auto-save-default nil)

;; (require 'recentf)
;; (recentf-mode 1)
;; (setq recentf-max-menu-item 50)

(delete-selection-mode 1)
(global-hl-line-mode 1)
(load-theme 'spacemacs-dark 1)

;; enhance complete
(setq hippie-expand-try-function-list '(try-expand-debbrev
					try-expand-debbrev-all-buffers
					try-expand-debbrev-from-kill
					try-complete-file-name-partially
					try-complete-file-name
					try-expand-all-abbrevs
					try-expand-list
					try-expand-line
					try-complete-lisp-symbol-partially
					try-complete-lisp-symbol))

;; tab
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(defvaralias 'c-basic-offset 'tab-width)

;; yes and no
(defalias 'yes-or-no-p 'y-or-n-p)

;; follow link
(setq vc-follow-symlinks t)

;; show start time
(defvar init-time 'nil)
(defun display-benchmark()
  (message "Loaded %s packages in %.03fs"
	   (length package-activated-list)
	   (or init-time
	       (setq init-time
		     (float-time (time-subtract (current-time) before-init-time))))))
(add-hook 'emacs-startup-hook #'display-benchmark)

;; auto pair
(electric-pair-mode 1)
(add-hook 'after-init-hook 'show-paren-mode)

;; fold config
(add-hook 'c-mode-common-hook   'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook       'hs-minor-mode)
(add-hook 'ess-mode-hook        'hs-minor-mode)
(add-hook 'perl-mode-hook       'hs-minor-mode)
(add-hook 'sh-mode-hook         'hs-minor-mode)

(provide 'init-defaults)
;;; init-defaults ends here
