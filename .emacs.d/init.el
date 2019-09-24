; global user
(setq user-full-name "cheon")
(setq user-mail-address "cheon0112358d@gmail.com")

;; ui
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)
(global-linum-mode t)
(column-number-mode t)
(show-paren-mode t)
(global-hl-line-mode t)
(set-default-font "SFMono Nerd Font Mono 16")

;; backup
(setq make-backup-files nil)

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

;; package manager
(load "package")
(package-initialize)
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			 ("melpa" . "http://elpa.emacs-china.org/melpa/")))

;; auto generate
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (vimrc-mode gitignore-mode company-ycmd ycmd markdown-mode yaml-mode dockerfile-mode pkgbuild-mode company use-package evil spacemacs-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; ====================ALL THE PLUGINS====================

;; use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))
(setq use-package-always-ensure t)

;; theme
(load-theme 'spacemacs-dark)

;; evil
(use-package evil
  :ensure t
  :config
  (evil-mode t))

;; company
(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 3))

;; ycmd
(use-package ycmd
  :init
  (add-hook 'c-mode-hook 'ycmd-mode)
  (add-hook 'c++-mode-hook 'ycmd-mode)
  (add-hook 'objc-mode-hook 'ycmd-mode)
  :config
  (setq ycmd-force-semantic-completion t)
  (setq ycmd-server-command '("python" "-u" "/home/cheon/Codes/dotfile/.vim/plugged/YouCompleteMe/third_party/ycmd/ycmd"))
  (setq ycmd-global-config "/home/cheon/.emacs.d/.ycm_extra_conf.py")
  (setq request-backend 'url-retrieve)
  )

;; company-ycmd
(use-package company-ycmd
  :init
  (company-ycmd-setup))
