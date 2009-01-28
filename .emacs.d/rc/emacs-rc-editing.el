
;; comment/uncomment region
(global-set-key "\C-c\C-cr" 'comment-region)
(global-set-key "\C-c\C-ur" 'uncomment-region)

;;
(custom-set-variables
 '(delete-selection-mode t)
 '(fill-column 90)
 ;'(kill-whole-line t)
 '(tab-always-indent t)
 ;'(indent-tabs-mode nil)
 '(transient-mark-mode t)
 '(tab-width 2)
 '(safe-local-variable-values (quote (
                                      (c-file-offsets (substatement-open . 0))
                                      (prompt-to-byte-compile)
                                      (c-indentation-style . k&r)
                                      (indent-tabs-mode . 1)
                                      (folded-file . t))))
 '(use-dialog-box nil)
 '(whitespace-global-mode nil)
 '(whitespace-modes (quote (awk-mode)))
 '(whitespace-silent t)
 '(show-paren-mode t)
 '(next-line-add-newlines t))

(put 'upcase-region 'disabled nil)

;; ;; load misc packages
;; (load "~/.emacs.d/misc/maxframe.el")
;; (require 'maxframe)
;; (global-set-key "\C-c\C-w" 'my-maximize-emacs)

;; iswitchb - enabled
(require 'iswitchb)
(iswitchb-mode 1)

;; enable caching with filecache
;; (require 'filecache)
;; (load "iswitchb-fc")

