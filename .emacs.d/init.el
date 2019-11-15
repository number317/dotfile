
; global user
(setq user-full-name "cheon")
(setq user-mail-address "cheon0112358d@gmail.com")

;; ui
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)
(global-linum-mode t)
(global-hl-line-mode t)
;(show-paren-mode t)
;(column-number-mode t)
(set-frame-font "SF Mono 16")

;; tab
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(defvaralias 'c-basic-offset 'tab-width)

;; debug
(setq debug-on-error t
      debug-on-signal nil
      debug-on-quit nil)

;; fold
(add-hook 'c-mode-common-hook   'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook       'hs-minor-mode)
(add-hook 'ess-mode-hook        'hs-minor-mode)
(add-hook 'perl-mode-hook       'hs-minor-mode)
(add-hook 'sh-mode-hook         'hs-minor-mode)

;; backup
(setq make-backup-files nil)

;; clipboard
(setq-default interprogram-cut-function nil
              interprogram-paste-function nil
              x-select-enable-primary nil
              x-select-enable-clipboard t)
(unless window-system
  (when (getenv "DISPLAY")
    ;; Callback for when user cuts
    (defun xsel-cut-function (text &optional push)
      ;; Insert text to temp-buffer, and "send" content to xsel stdin
      (with-temp-buffer
        (insert text)
        ;; I prefer using the "clipboard" selection (the one the
        ;; typically is used by c-c/c-v) before the primary selection
        ;; (that uses mouse-select/middle-button-click)
        (call-process-region (point-min) (point-max) "xsel" nil 0 nil "--clipboard" "--input")))
    ;; Call back for when user pastes
    (defun xsel-paste-function()
      ;; Find out what is current selection by xsel. If it is different
      ;; from the top of the kill-ring (car kill-ring), then return
      ;; it. Else, nil is returned, so whatever is in the top of the
      ;; kill-ring will be used.
      (let ((xsel-output (shell-command-to-string "xsel --clipboard --output")))
        (unless (string= (car kill-ring) xsel-output)
          xsel-output )))
    ;; Attach callbacks to hooks
    (setq interprogram-cut-function 'xsel-cut-function)
    (setq interprogram-paste-function 'xsel-paste-function)
    ;; Idea from
    ;; http://shreevatsa.wordpress.com/2006/10/22/emacs-copypaste-and-x/
    ;; http://www.mail-archive.com/help-gnu-emacs@gnu.org/msg03577.html
    ))

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

;; package manager
(load "package")
(package-initialize)
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			 ("melpa" . "http://elpa.emacs-china.org/melpa/")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(erc-nick "cheon")
 '(erc-server "chat.freenode.net")
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (all-the-icons neotree graphviz-dot-mode flycheck-ycmd flycheck vimrc-mode gitignore-mode company-ycmd ycmd markdown-mode yaml-mode dockerfile-mode pkgbuild-mode company use-package evil spacemacs-theme))))

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

;; flycheck-ycmd
(use-package flycheck-ycmd
  :ensure t
  :init
  (flycheck-ycmd-setup))

;; flycheck
(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode)
  :config
  (setq flycheck-indication-mode (quote right-fringe))
  (setq flycheck-highlighting-mode (quote lines))
  (setq flycheck-gcc-args (quote -Wall))
  (setq flycheck-gcc-language-standard (quote gnu11)))


;; neotree
(use-package neotree
  :bind
  ("C-c n" . neotree-toggle)
  :config
  (setq neo-theme 'icons)
  (setq projectile-switch-project-action 'neotree-projectile-action))

(add-hook 'neotree-mode-hook
          (lambda ()
            (evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
            (evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
            (evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
            (evil-define-key 'normal neotree-mode-map (kbd "r") 'neotree-refresh)
            (evil-define-key 'normal neotree-mode-map (kbd "v") 'neotree-enter-vertical-split)
            (evil-define-key 'normal neotree-mode-map (kbd "h") 'neotree-enter-horizontal-split)
            (evil-define-key 'normal neotree-mode-map (kbd "j") 'neotree-next-line)
            (evil-define-key 'normal neotree-mode-map (kbd "k") 'neotree-previous-line)
            (evil-define-key 'normal neotree-mode-map (kbd "A") 'neotree-stretch-toggle)
            (evil-define-key 'normal neotree-mode-map (kbd "I") 'neotree-hidden-file-toggle)))

;; all-the-icons
(use-package all-the-icons)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
