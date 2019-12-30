;; ui
(setq debug-on-error t)
(setq inhibit-splash-screen 0)
(setq inhibit-startup-screen 0)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)
(global-linum-mode t)
(set-frame-font "SF Mono 16")
(setq-default cursor-type 'bar)

(setq-default mode-line-format
              (list

               (propertize " size: %I" 'face 'font-lock-constant-face)

               ;; the buffer name; the file name as a tool tip
               '(:eval (propertize (let ((change (buffer-modified-p)))
                                     (if change "  %b*" "  %b"))
                                   'face 'font-lock-doc-face
                                   'help-echo (buffer-file-name)))

               (setcdr (assq 'vc-mode mode-line-format)
                       '((:eval (propertize (replace-regexp-in-string "^ Git:" "  " vc-mode) 'face 'font-lock-builtin-face))))

               ;; the current major mode
               (propertize "  [" 'face 'font-lock-reference-face)
               (propertize "%m" 'face 'font-lock-type-face)
               (propertize "]" 'face 'font-lock-reference-face)
               ;;minor-mode-alist

               ;; spaces to align right
               '(:eval (propertize
                        " " 'display
                        `((space :align-to (- (+ right right-fringe right-margin)
                                              ,(+ 25 (string-width mode-name)))))))

               ;; line and column
               (propertize "%l" 'face 'font-lock-string-face) ","
               (propertize "%c" 'face 'font-lock-string-face)
               '(:eval (propertize
                        " " 'display
                        `((space :align-to (- (+ right right-fringe right-margin)
                                              ,(+ 3 (string-width mode-name)))))))

               ;; relative position, size of file
               (propertize "%p" 'face 'font-lock-variable-name-face) ;; % above top
               ))

(provide 'init-ui)
;;; init-ui.el ends here
