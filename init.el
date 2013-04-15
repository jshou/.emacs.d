(add-to-list 'load-path "~/.emacs.d/site-lisp")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'tron t)

;; install multi-term
(setq multi-term-program "/bin/zsh")
(require 'multi-term)

;; use melpa for package management
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

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
(if window-system (tool-bar-mode -1))

;; start ido
(require 'ido)
(ido-mode t)

(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x C-b") 'buffer-menu)

;; set ruby indentation to something sensible
(setq ruby-deep-indent-paren nil)

;; set javascript indent
(setq js-indent-level 2)

(show-paren-mode 1)

;; add keybindings to term-mode
(add-to-list 'term-bind-key-alist '("<M-backspace>" . term-send-raw-meta))
(add-to-list 'term-bind-key-alist '("C-w" . term-send-backward-kill-word))
(add-to-list 'term-bind-key-alist '("M-d" . term-send-forward-kill-word))
(add-to-list 'term-bind-key-alist '("C-y" . term-paste))

;; set space mode
(setq-default indent-tabs-mode nil)
;; remove trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; set default lisp
(setq inferior-lisp-program "sbcl")


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(term-color-blue ((t (:background "deep sky blue" :foreground "deep sky blue")))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-default-tracking-name-function (quote magit-default-tracking-name-branch-only))
 '(magit-status-buffer-switch-function (quote switch-to-buffer)))
