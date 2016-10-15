(setq inhibit-startup-screen t)

(prefer-coding-system 'utf-8)

(setq backup-by-copying t)
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(load "~/.emacs.d/packages.el")
(load "~/.emacs.d/interface.el")
(load "~/.emacs.d/languages.el")
(load "~/.emacs.d/kbds.el")
