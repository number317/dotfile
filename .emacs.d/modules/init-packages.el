(eval-when-compile (require 'use-package))
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))

;; evil
(use-package evil
  :ensure t
  :defer t
  :hook (after-init . evil-mode))

;; all-the-icons
(use-package all-the-icons
  :defer 1
  :commands neotree-toggle)

;; flycheck
(use-package flycheck
  :ensure t
  :defer 1
  :hook (after-init . global-flycheck-mode)
  :init
  (setq flycheck-indication-mode (quote left-fringe)
        flycheck-highlighting-mode (quote lines)
        flycheck-c/c++-gcc-executable "gcc"
        flycheck-gcc-args "-Wall"
        flycheck-gcc-language-standard "gnu11"
        flycheck-javascript-eslint-executable   "/opt/lsp/node_modules/eslint/bin/eslint.js"
        flycheck-python-pylint-executable "/opt/lsp/bin/pylint")
  :config
  (flycheck-add-mode 'javascript-eslint 'web-mode))

;; yasnippet
(use-package yasnippet
  :ensure t
  :defer 1
  :hook (after-init . yas-global-mode))

;; neotree
(use-package neotree
  :ensure t
  :commands neotree-toggle
  :defer 1
  :init
  (setq neo-theme 'icons)
  (setq neo-smart-open t)
  :commands neotree-toggle
  :config
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
              (evil-define-key 'normal neotree-mode-map (kbd "I") 'neotree-hidden-file-toggle))))

;; emmet-mode
(use-package emmet-mode
  :ensure t
  :defer 1
  :config
  (setq emmet-indent-after-insert nil)
  (setq emmet-expand-jsx-className? t)
  :hook ((css-mode html-mode web-mode) . emmet-mode))

;; web-mode
(use-package web-mode
  :ensure t
  :defer 1
  :init
  (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.js?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.jsx?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
  :config
  (setq web-mode-markup-indent-offset 2
        web-mode-css-indent-offset 2
        web-mode-code-indent-offset 2
        web-mode-style-padding 0
        web-mode-script-padding 0))

(use-package ivy
  :ensure t
  :defer 1
  :init
  (ivy-mode t)
  ;; (setq ivy-use-virtual-buffers t
  ;;       enable-recursive-minibuffers t)
  :hook (after-init . ivy-mode))

;; lsp
(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :defer 1
  :hook ((c-mode c++-mode python-mode js-mode css-mode web-mode sh-mode) . lsp-deferred)
  :init
  (setq lsp-prefer-flymake nil
        lsp-clients-clangd-executable "/opt/clang+llvm-9.0.0-x86_64-pc-linux-gnu/bin/clangd"
        lsp-vetur-server-command "/opt/lsp/node_modules/vue-language-server/bin/vls"
        lsp-clients-javascript-typescript-server "/opt/lsp/node_modules/typescript-language-server/lib/cli.js"
        lsp-clients-typescript-server "/opt/lsp/node_modules/typescript-language-server/lib/cli.js"))

;; lsp ui
;; (use-package lsp-ui
;;   :ensure t
;;   :config
;;   (setq lsp-ui-doc-enable t
;;         lsp-ui-doc-use-childframe t
;;         lsp-ui-doc-position 'top
;;         lsp-ui-doc-include-signature t
;;         lsp-ui-sideline-enable nil
;;         lsp-ui-flycheck-enable t
;;         lsp-ui-flycheck-list-position 'underline
;;         lsp-ui-flycheck-live-reporting t
;;         lsp-ui-peek-enable t
;;         lsp-ui-peek-list-width 60
;;         lsp-ui-peek-peek-height 25
;;         )
;;   :hook (lsp-deferred)
;;   :commands lsp-ui-mode)

;; company
(use-package company
  :ensure t
  :init
  (setq company-idle-delay 0.5)
  (setq company-minimum-prefix-length 1)
  (setq company-show-numbers nil)
  ;; (company-tng-configure-default)
  :config
  (global-company-mode)
  (with-eval-after-load 'company
    (define-key company-active-map (kbd "C-n") (lambda () (interactive) (company-complete-common-or-cycle 1)))
    (define-key company-active-map (kbd "C-p") (lambda () (interactive) (company-complete-common-or-cycle -1)))))

;; company lsp
(use-package company-lsp
  :ensure t
  :defer 1
  :init
  (push 'company-lsp company-backends)
  :commands company-lsp)

(provide 'init-packages)

;;; init-packages.el ends here
