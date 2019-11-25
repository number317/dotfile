(require 'cl)
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			   ("melpa" . "http://elpa.emacs-china.org/melpa/"))))
(defvar my/packages '(
		      spacemacs-theme
		      hungry-delete
		      smartparens
		      company
		      swiper
		      counsel
		      neotree
		      all-the-icons
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
;; plugin config
(global-company-mode 1)
(setq company-idle-delay 0.1)
(setq company-minimum-prefix-length 1)
(company-tng-configure-default)
(with-eval-after-load 'company
  (define-key company-active-map (kbd "C-n") (lambda () (interactive) (company-complete-common-or-cycle 1)))
    (define-key company-active-map (kbd "C-p") (lambda () (interactive) (company-complete-common-or-cycle -1))))

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

(require 'hungry-delete)
(global-hungry-delete-mode 1)

(require 'smartparens-config)
(smartparens-global-mode 1)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

(provide 'init-packages)
