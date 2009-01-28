(add-to-list 'load-path "~/.emacs.d/ecb")
(require 'cl)
(require 'ecb)


;;; Functions
(defun my-ecb-toggle-windows ()
  (interactive)
  (if ecb-active
      (ecb-toggle-ecb-windows)
    (ecb-activate)))


;;; Hooks
(add-hook 'ecb-activate-hook #'(lambda ()
                                 (setq ecb-active t)))

(add-hook 'ecb-deactivate-hook #'(lambda ()
                                   (setq ecb-active nil)))

;; (add-hook 'ecb-directories-buffer-after-create-hook
;;           #'(lambda ()
;;               (local-set-key (kbd "C-c C-d") #'ecb-dired-directory)))


;;; Bindings
;; (global-set-key (kbd "")    #'ecb-toggle-enlarged-compilation-window)
(global-set-key (kbd "\C-c\C-w\C-c")  #'ecb-goto-window-compilation)
(global-set-key (kbd "\C-c\C-w\C-d")  #'ecb-goto-window-directories)
(global-set-key (kbd "\C-c\C-w\C-s")  #'ecb-goto-window-sources)
(global-set-key (kbd "\C-c\C-w\C-t")    #'my-ecb-toggle-windows)
(global-set-key (kbd "\C-c\C-w\C-e")  #'ecb-goto-window-edit1)

;;(global-set-key (kbd "\C-c\C-e\C-tw")    #'ecb-goto-toggle-windows)

(global-set-key "\C-c\C-e\C-a" 'ecb-activate)
(global-set-key "\C-c\C-e\C-d" 'ecb-deactivate)
(global-set-key "\C-c\C-e\C-u" 'ecb-customize)


;(setq ecb-options-version "2.32")
;(setq-default ecb-tip-of-the-day nil)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.32")
 '(ecb-source-path (quote (("/Users/yurikashnikov/.emacs.d/ecb/info-help" "\\") ("/Users/yurikashnikov/hacking/milepost" "milepost") ("/Users/yurikashnikov/hacking/GCC-ICI-1.0" "GCC-ICI") ("/Users/yurikashnikov/hacking/gcc-ici" "gcc-ici"))))
 '(ecb-tree-buffer-style (quote ascii-guides))
 '(ecb-tree-navigation-by-arrow t)
 '(ecb-wget-setup (quote cons))
 '(semantic-idle-scheduler-idle-time 10))
;; (custom-set-faces
;;   ;; custom-set-faces was added by Custom.
;;   ;; If you edit it by hand, you could mess it up, so be careful.
;;   ;; Your init file should contain only one such instance.
;;   ;; If there is more than one, they won't work right.
;;  )







