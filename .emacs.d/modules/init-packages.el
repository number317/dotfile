(require 'cl)
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			   ("melpa" . "http://elpa.emacs-china.org/melpa/"))))
(defvar my/packages '(
		      spacemacs-theme
		      evil
		      ycmd
		      company
		      company-ycmd
		      flycheck
		      flycheck-ycmd
		      ivy
		      swiper
		      counsel
		      neotree
		      all-the-icons
		      pkgbuild-mode
		      dockerfile-mode
		      yaml-mode
		      markdown-mode
		      gitignore-mode
		      graphviz-dot-mode
		      vimrc-mode
		      ) "Default packages")
(setq package-selected-packages my/packages)
(defun my/packages-installed-p()
  (loop for pkg in my/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))
(unless (my/packages-installed-p)
  (message "%s" "Refreshing package cache...")
  (package-refresh-contents)
  (dolist (pkg my/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; ycmd
(require 'ycmd)
(add-hook 'c-mode-hook 'ycmd-mode)
(setq ycmd-force-semantic-completion t)
(setq ycmd-server-command '("python" "-u" "/home/cheon/Codes/dotfile/.vim/plugged/YouCompleteMe/third_party/ycmd/ycmd"))
(setq ycmd-global-config "/home/cheon/.emacs.d/.ycm_extra_conf.py")
(setq request-backend 'url-retrieve)

;; company
(global-company-mode 1)
(setq company-idle-delay 0.1)
(setq company-minimum-prefix-length 1)
(company-tng-configure-default)
(with-eval-after-load 'company
  (define-key company-active-map (kbd "C-n") (lambda () (interactive) (company-complete-common-or-cycle 1)))
    (define-key company-active-map (kbd "C-p") (lambda () (interactive) (company-complete-common-or-cycle -1))))

;; company ycmd
(require 'company-ycmd)
(company-ycmd-setup)

;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)
(setq flycheck-indication-mode (quote right-fringe))
(setq flycheck-highlighting-mode (quote lines))
(setq flycheck-gcc-args (quote -Wall))
(setq flycheck-gcc-language-standard (quote gnu11))

;; flycheck-ycmd
(require 'flycheck-ycmd)
(flycheck-ycmd-setup)

;; evil
(require 'evil)
(evil-mode 1)

;; neotree
(add-to-list 'load-path "/some/path/neotree")
(require 'neotree)
(setq neo-theme 'icons)
(setq projectile-switch-project-action 'neotree-projectile-action)
(setq neo-smart-open t)
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
(require 'all-the-icons)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

(provide 'init-packages)
