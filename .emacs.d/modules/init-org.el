;; (require 'org)
(setq org-src-fontify-natively t)

(with-eval-after-load 'org
  (add-to-list 'org-export-backends 'md))

(defun cheon/org-mode-hook()
  (setq truncate-lines nil)
  (company-mode -1))
(add-hook 'org-mode-hook 'cheon/org-mode-hook)

(provide 'init-org)
