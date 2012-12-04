(setq load-path (append load-path (list "/home/santiago/.emacs.d/elisp")))
(add-to-list 'custom-theme-load-path "/home/santiago/.emacs.d/themes")

;;;(add-to-list 'load-path "~/.emacs.d/vendor")
(setq load-path (append load-path (list "/home/santiago/.emacs.d/vendor")))

;;; Load init files
;;;(require 'init-django)
(load-file "/home/santiago/.emacs.d/emacs-for-python/epy-init.el")

(add-to-list 'load-path "/home/santiago/.emacs.d/emacs-for-python/") ;; tell where to load the various files
(require 'epy-setup)      ;; It will setup other loads, it is required!
(require 'epy-python)     ;; If you want the python facilities [optional]
(require 'epy-completion) ;; If you want the autocompletion settings [optional]
(require 'epy-editing)    ;; For configurations related to editing [optional]
(require 'epy-bindings)   ;; For my suggested keybindings [optional]

;;; Python IDE-like
;;; (require 'ipython)
;;; End


;;; Markdown
(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))
;;; END

(load-theme 'deeper-blue t)
(ido-mode 1)
;;;(global-whitespace-mode 1)

(global-set-key (kbd "C-c c")
                      (lambda ()
                        (interactive)
                        (shell-command (concat "compcompile"))))

(global-set-key (kbd "C-c w")
                      (lambda ()
                        (interactive)
                        (shell-command (concat "compwatch"))))

(setq-default show-trailing-whitespace t)

(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <down>") 'windmove-down)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <left>") 'windmove-left)

(global-set-key (kbd "<C-return>") 'dabbrev-expand)

;;;(load-theme 'tango-dark t)

(require 'init-python)

;;; Show full path in window
(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
        '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))


;;; Line numbers
(autoload 'linum-mode "linum" "toggle line numbers on/off" t)
(global-set-key (kbd "C-<f5>") 'linum-mode)

;;;(linum-mode t)

(global-linum-mode t)


(require 'highlight-symbol)

(global-set-key [(control f3)] 'highlight-symbol-at-point)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-prev)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "bf7ed640479049f1d74319ed004a9821072c1d9331bc1147e01d22748c18ebdf" default)))
 '(fringe-mode (quote (nil . 0)) nil (fringe))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 120 :width normal)))))


;;; sudo apt-get install emacs-goodies-el

;;;(add-to-list 'load-path "/usr/share/emacs23/site-lisp/emacs-goodies-el")
;;;(require 'color-theme)
;;;(eval-after-load "color-theme"
;;;  '(progn
;;;     (color-theme-initialize)
;;;     (color-theme-dark-laptop)))

;;;(eval-after-load "color-theme" '(color-theme-dark-laptop))
;;;(eval-after-load "color-theme" '(color-theme-salmon-font-lock))

;;;(set-face-attribute 'default nil :height 120)
;;;(set-face-attribute 'default nil :family "Ubuntu Mono")
