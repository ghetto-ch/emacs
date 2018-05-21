;;; This fixed garbage collection, makes emacs start up faster ;;;;;;;

;; ghetto commented

;;(setq gc-cons-threshold 402653184
;;      gc-cons-percentage 0.6)

;;(defvar startup/file-name-handler-alist file-name-handler-alist)
;;(setq file-name-handler-alist nil)
;;
;;(defun startup/revert-file-name-handler-alist ()
;;  (setq file-name-handler-alist startup/file-name-handler-alist))
;;
;;(defun startup/reset-gc ()
;;  (setq gc-cons-threshold 16777216
;;	gc-cons-percentage 0.1))
;;
;;(add-hook 'emacs-startup-hook 'startup/revert-file-name-handler-alist)
;;(add-hook 'emacs-startup-hook 'startup/reset-gc)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; END ghetto commented


;;; This is all kinds of necessary
(require 'package)
(setq package-enable-at-startup nil)

;;; remove SC if you are not using sunrise commander and org if you like outdated packages
(setq package-archives '(("ELPA"  . "http://tromey.com/elpa/")
			 ("gnu"   . "http://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("org"   . "https://orgmode.org/elpa/")
			 ;;("SC"    . "http://joseito.republika.pl/sunrise-commander/")
			 ))
(package-initialize)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Bootstrapping use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;; This is the actual config file. It is omitted if it doesn't exist so emacs won't refuse to launch.
(when (file-readable-p "~/.emacs.d/config.org")
  (org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))

;; ghetto commented

;;; Experimental email stuff.
;;(when (file-readable-p "~/.email/email.org")
;;ys  (org-babel-load-file (expand-file-name "~/.email/email.org")))

;; END ghetto commented

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(geiser-chez-binary "chez")
 '(geiser-guile-binary "guile")
 '(minimap-mode nil)
 '(package-selected-packages
   (quote
    (platformio-mode highlight-indent-guides pyenv-mode slime-company slime company-irony company-c-headers flycheck-clang-analyzer elpy py-autopep8 company-shell company-jedi yasnippet-snippets yasnippet spaceline helm symon multiple-cursors golden-ratio paredit geiser diminish ox-twbs org-bullets htmlize sudo-edit company popup-kill-ring zzz-to-char expand-region rainbow-delimiters rainbow-mode beacon avy linum-relative swiper which-key ivy dashboard projectile zerodark-theme use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
