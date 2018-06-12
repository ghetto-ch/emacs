;;; This is all kinds of necessary
(require 'package)
(setq package-enable-at-startup nil)

(setq package-archives '(("ELPA"  . "http://tromey.com/elpa/")
			 ("gnu"   . "http://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("org"   . "https://orgmode.org/elpa/")
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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (evil-paredit evil exec-path-from-shell diminish ox-twbs org-bullets htmlize sudo-edit magit paredit geiser company-shell slime-company slime pyenv-mode py-autopep8 company-irony company-c-headers flycheck-clang-analyzer platformio-mode highlight-indent-guides company flycheck yasnippet-snippets yasnippet popup-kill-ring zzz-to-char expand-region rainbow-delimiters rainbow-mode multiple-cursors avy helm-swoop helm which-key symon spaceline dashboard projectile async zenburn-theme use-package)))
)
