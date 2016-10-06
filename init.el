(setq inhibit-startup-screen t)

(setq backup-by-copying t)
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(load "~/.emacs.d/packages.el")
(load "~/.emacs.d/interface.el")
(load "~/.emacs.d/languages.el")
(load "~/.emacs.d/kbds.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (which-key web-mode use-package telephone-line spaceline rainbow-delimiters projectile powerline-evil nlinum markdown-mode leuven-theme js2-mode hydandata-light-theme evil-nerd-commenter dired-rainbow counsel company-tern browse-kill-ring async ample-theme aggressive-indent ace-window ac-cider))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
