 (add-to-list 'auto-mode-alist '("\\.el" . emacs-lisp-mode))
 (add-to-list 'auto-mode-alist '("\\.gnus$" . emacs-lisp-mode))
 (add-to-list 'auto-mode-alist '("\\.emacs$" . emacs-lisp-mode))

 (defun my-lisp-mode-hook ()
        (setq tab-width 2
              indent-tabs-mode t)
        (abbrev-mode 1)
        (auto-fill-mode 1)
        (local-set-key [return] 'newline-and-indent)
        (define-key c-mode-base-map "\C-m" 'newline-and-indent)
        (local-set-key "\C-c:" 'uncomment-region)
        (local-set-key "\C-c;" 'comment-region)
        (local-set-key "\C-c\C-c" 'comment-region)
        )
 (add-hook 'lisp-mode-hook 'my-lisp-mode-hook)

 (require 'info-look)
 (info-lookup-add-help
  :mode 'lisp-mode
  :regexp "[^][()'\" \t\n]+"
  :ignore-case t
  :doc-spec '(("(ansicl)Symbol Index" nil nil nil)))

;;; SLIME 
(require 'inf-lisp)
 (setq inferior-lisp-program "/opt/local/bin/sbcl")
 (add-to-list 'load-path "~/.emacs.d/slime/")
 (require 'slime)
 (slime-setup)
 (add-hook 'lisp-mode-hook 
    (lambda () 
     (slime-mode t)))

 (add-hook 'inferior-lisp-mode-hook 
     (lambda () 
       (inferior-slime-mode t)))

 ;(add-hook 'slime-mode-hook (lambda () (slime-autodoc-mode t)))
 ;(add-hook 'slime-connected-hook 'slime-ensure-typeout-frame)

 (eval-after-load "slime"
   '(progn
      (add-to-list 'load-path "~/emacs/slime/contrib")
     (slime-setup '(slime-fancy slime-asdf slime-banner))
     (setq slime-complete-symbol*-fancy t)
     (setq slime-complete-symbol-function 'slime-fuzzy-complete-symbol)))

;; ;;; emacs-rc-slime.el ends here
