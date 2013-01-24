(add-to-list 'load-path "~/.emacs.d/site-lisp")
(load-theme 'wombat)

;; install multi-term
(setq multi-term-program "/bin/zsh")
(require 'multi-term)

;; use utf-8 for everything
;(setq locale-coding-system 'utf-8)
;(set-terminal-coding-system 'utf-8)
;(set-keyboard-coding-system 'utf-8)
;(set-selection-coding-system 'utf-8)
;(prefer-coding-system 'utf-8)

;; Use Emacs terminfo, not system terminfo
(setq system-uses-terminfo nil)

;; set emacs font size
(set-face-attribute 'default nil :height 100)

;; show line numbers
(global-linum-mode t)
(setq linum-format "%d ")

;; hide toolbars
(menu-bar-mode -1)

;; start ido
(require 'ido)
(ido-mode t)

(global-set-key "M-/" 'hippie-expand)
