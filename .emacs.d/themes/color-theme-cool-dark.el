(defvar cool-fg       "#ffffff") 
(defvar cool-bg       "#18191B")
(defvar cool-green-0  "#95ff94")
(defvar cool-green-1  "#25492D")
(defvar cool-yellow-0 "#f9fe8a")
(defvar cool-yellow-1 "#fec952")
(defvar cool-red-0    "#f5666d")
(defvar cool-pink-0   "#F74D97")
(defvar cool-pink-1   "#FA519A")
(defvar cool-pink-2   "#FD8DBD")
(defvar cool-purple-0 "#a8799c")
(defvar cool-blue-0   "#a3beff")
(defvar cool-blue-1   "#9cd4fc")
(defvar cool-blue-2   "#8ca0fd")
(defvar cool-blue-3   "#42331F")

(defun color-theme-cool-dark ()
  "Cool Dark Theme"
  (interactive)
  (color-theme-install
   (append
    (list 'color-theme-cool-dark
	  `((background-color . ,cool-bg)
	    (background-mode . light)
	    (border-color . ,cool-bg)
	    (cursor-color . ,cool-green-0)
	    (foreground-color . ,cool-fg)
	    (mouse-color . "black"))
	  `(fringe ((t (:background ,cool-bg))))
	  `(mode-line ((t (:foreground ,cool-pink-1 :background "black"))))
	  ;; `(mode-line-buffer-id ((t (:bold t :foreground ,cool-yellow-1))))
	  `(mode-line-inactive ((t (:foreground ,cool-green-0 :background "black"))))
	  `(minibuffer-prompt ((t (:foreground ,cool-blue-1 :bold t))))
	  `(region ((t (:background ,cool-blue-3))))

	  `(font-lock-builtin-face ((t (:bold t :foreground ,cool-red-0))))
	  `(font-lock-comment-face ((t (:foreground ,cool-yellow-0))))
          `(font-lock-constant-face ((t (:foreground ,cool-red-0))))
	  `(font-lock-doc-face ((t (:foreground ,cool-yellow-0))))
	  `(font-lock-function-name-face ((t (:foreground ,cool-blue-0))))
	  `(font-lock-keyword-face ((t (:bold t :foreground ,cool-yellow-1))))
          `(font-lock-preprocessor-face ((t (:foreground ,cool-fg))))
	  `(font-lock-string-face ((t (:foreground ,cool-pink-2))))
	  `(font-lock-type-face ((t (:foreground ,cool-pink-0 :bold t))))
	  `(font-lock-variable-name-face ((t (:foreground ,cool-blue-2))))
	  `(font-lock-warning-face ((t (:foreground ,cool-red-0 :bold t))))

	  `(erc-action-face ((t (:foreground ,cool-red-0))))
          `(erc-button ((t (:foreground ,cool-purple-0))))
          `(erc-current-nick-face ((t (:foreground ,cool-pink-2))))
          `(erc-error-face ((t (:foreground ,cool-red-0 :bold t))))
          `(erc-input-face ((t (:foreground ,cool-fg))))
          `(erc-keyword-face ((t (:foreground ,cool-red-0))))
          `(erc-my-nick-face ((t (:foreground ,cool-blue-0))))
          `(erc-nick-default-face ((t (:bold t :foreground ,cool-pink-1))))
          `(erc-notice-face ((t (:foreground ,cool-blue-2))))
          `(erc-prompt-face ((t (:foreground ,cool-fg))))
          `(erc-timestamp-face ((t (:foreground ,cool-green-0))))

	  `(magit-log-sha1 ((t (:foreground "#cf6a4c"))))
	  `(magit-log-head-label-local ((t (:foreground "#3387cc"))))
	  `(magit-log-head-label-remote ((t (:foreground "#65b042"))))
	  `(magit-branch ((t (:bold t :foreground ,cool-yellow-1))))
	  `(magit-section-title ((t (:bold t :foreground ,cool-pink-0))))
	  `(magit-item-highlight ((t (:background "#1f1f1f"))))
	  `(magit-diff-add ((t (:bold t :foreground ,cool-green-0))))
	  `(magit-diff-del ((t (:bold nil :foreground ,cool-red-0))))

	  `(gnus-group-mail-1-empty ((t (:foreground ,cool-pink-1))))
	  `(gnus-group-mail-1 ((t (:bold t :foreground ,cool-pink-1))))
	  `(gnus-group-mail-3-empty ((t (:foreground ,cool-blue-0))))
	  `(gnus-group-mail-3 ((t (:bold t :foreground ,cool-pink-1))))
	  `(gnus-group-news-3-empty ((t (:foreground ,cool-blue-2))))
	  `(gnus-group-news-3 ((t (:bold t :foreground ,cool-green-0))))

	  `(w3m-anchor ((t (:bold t :foreground ,cool-pink-1))))
	  ))))
(provide 'color-theme-cool-dark)
