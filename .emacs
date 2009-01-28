
(load "~/.emacs.d/rc/emacs-rc-slime.el")
(load "~/.emacs.d/rc/emacs-rc-cedet.el")
(load "~/.emacs.d/rc/emacs-rc-ecb.el")
(load "~/.emacs.d/rc/emacs-rc-haskell-mode.el")
(load "~/.emacs.d/rc/emacs-rc-editing.el")

;(load "~/.emacs.d/rc/emacs-rc-misc.el")
;(load "~/.emacs.d/rc/emacs-rc-c-mode.el")

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(delete-selection-mode t)
 '(ecb-compile-window-height 10)
 '(ecb-compile-window-width (quote edit-window))
 '(ecb-options-version "2.32")
 '(ecb-source-path (quote (("/Users/yurikashnikov/.emacs.d/ecb/info-help" "\\") ("/Users/yurikashnikov/hacking/milepost" "milepost") ("/Users/yurikashnikov/hacking/gcc-ici" "gcc-ici") ("/Users/yurikashnikov/hacking/gcc-ici-cvs" "gcc-ici-cvs") ("/Users/yurikashnikov/hacking/unidapt" "unidapt") ("/Users/yurikashnikov/hacking/gcc_source" "gcc-source") ("/Users/yurikashnikov/hacking/peuler" "project-euler"))))
 '(ecb-tip-of-the-day nil)
 '(ecb-tree-buffer-style (quote ascii-guides))
 '(ecb-tree-navigation-by-arrow t)
 '(ecb-wget-setup (quote cons))
 '(ecb-windows-width 0.33)
 '(fill-column 90)
 '(next-line-add-newlines t)
 '(safe-local-variable-values (quote ((c-file-offsets (substatement-open . 0)) (prompt-to-byte-compile) (c-indentation-style . k&r) (indent-tabs-mode . 1) (folded-file . t))))
 '(semantic-idle-scheduler-idle-time 10)
 '(show-paren-mode t)
 '(tab-always-indent t)
 '(tab-width 2)
 '(transient-mark-mode t)
 '(use-dialog-box nil)
 '(whitespace-global-mode nil)
 '(whitespace-modes (quote (awk-mode)))
 '(whitespace-silent t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "White" :foreground "Black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "apple" :family "Monaco")))))













