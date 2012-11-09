(setq load-path (append load-path (list "/home/santiago/.emacs.d/elisp")))
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;;;(add-to-list 'load-path "~/.emacs.d/vendor")
(setq load-path (append load-path (list "/home/santiago/.emacs.d/vendor")))

;;; Load init files
(require 'init-django)

;;; Python IDE-like
;;; (require 'ipython)
;;; End


;;; Markdown
(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))
;;; END

;;;(load-theme 'deeper-blue t)
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

(load-theme 'tango-dark t)

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
