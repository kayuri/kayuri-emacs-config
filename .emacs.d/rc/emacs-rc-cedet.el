
(load-file "~/.emacs.d/cedet/common/cedet.el")

(semantic-load-enable-code-helpers)
(global-semantic-idle-completions-mode 1)
(semantic-load-enable-guady-code-helpers)

(setq senator-minor-mode-name "SN")
(setq semantic-imenu-auto-rebuild-directory-indexes nil)
;(global-srecode-minor-mode 1)
(global-semantic-mru-bookmark-mode 1)

;; gcc setup
;(require 'semantic-gcc)
;(semantic-gcc-setup "gcc")

;; smart complitions
(require 'semantic-ia)
:
(setq-mode-local c-mode semanticdb-find-default-throttle
                 '(project unloaded system recursive))
(setq-mode-local c++-mode semanticdb-find-default-throttle
                 '(project unloaded system recursive))
(setq-mode-local erlang-mode semanticdb-find-default-throttle
                 '(project unloaded system recursive))

(load-file "~/.emacs.d/misc/eassist.el")
(require 'eassist)

;; customisation of modes
(defun my-cedet-hook ()
; (local-set-key "\C-c/" 'semantic-ia-complete-symbol)
  (local-set-key [(control return)] 'semantic-ia-complete-symbol)
  (local-set-key "\C-c/" 'semantic-ia-complete-symbol-menu)
  (local-set-key "\C-c." 'senator-complete-symbol)
  ;;
  (local-set-key "\C-c>" 'semantic-complete-analyze-inline)
  (local-set-key "\C-c=" 'semantic-decoration-include-visit)
  
  (local-set-key "\C-cj" 'semantic-ia-fast-jump)
  (local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle)
	(local-set-key "\C-c\C-c\C-c" 'compile)
  )
(add-hook 'c-mode-common-hook 'my-cedet-hook)
(add-hook 'lisp-mode-hook 'my-cedet-hook)

(defun my-c-mode-cedet-hook ()
; (local-set-key "." 'semantic-complete-self-insert)
; (local-set-key ">" 'semantic-complete-self-insert)
  (local-set-key "\C-ct" 'eassist-switch-h-cpp)
  (local-set-key "\C-xt" 'eassist-switch-h-cpp)
  )


(add-hook 'c-mode-common-hook 'my-c-mode-cedet-hook)

;;
(setq-default semanticdb-default-save-directory "~/tmp/semantic")

;(semantic-add-system-include "~/exp/include" 'c++-mode)
;(semantic-add-system-include "~/exp/include" 'c-mode)

(custom-set-variables
 '(semantic-idle-scheduler-idle-time 10)
)

;; (semantic-load-enable-all-exuberent-ctags-support)
;; (semantic-enable-exuberent-ctags 'c-mode)
;; (semantic-enable-exuberent-ctags 'c++-mode)

;;; ede customization
;(require 'semantic-lex-spp)
;(global-ede-mode t)

;; cpp-tests project definition
;(ede-cpp-root-project "cpp-tests" :file "~/projects/lang-exp/cpp/CMakeLists.txt"
;                      :system-include-path '("/home/ott/exp/include"
;                                             "/home/ott/exp/include/boost-1_37"))
;(ede-cpp-root-project "text-categorization" :file "~/projects/text-categorization/CMakeLists.txt"
;                      :system-include-path '("/home/ott/exp/include"
;                                             "/home/ott/exp/include/boost-1_37"))
;(ede-cpp-root-project "wfilter" :file "~/projects/wfilter/README"
;                      :system-include-path '("/home/ott/exp/include"
;                                             "/home/ott/exp/include/boost-1_37"))

;;; emacs-rc-cedet.el ends here


