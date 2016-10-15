(require 'evil)
(evil-mode 1)

(use-package evil-surround
  :diminish evil-surround-mode
  :config
  (global-evil-surround-mode))

(use-package which-key
  :ensure t
  :diminish which-key-mode
  :config
  (which-key-mode))

(use-package telephone-line
  :config
  (setq telephone-line-primary-left-separator telephone-line-cubed-left)
  (setq telephone-line-secondary-left-separator telephone-line-cubed-hollow-left)
  (setq telephone-line-primary-right-separator telephone-line-cubed-right)
  (setq telephone-line-lhs
        '((evil   . (telephone-line-evil-tag-segment))
          (accent . (telephone-line-process-segment))
	  (nil    . (telephone-line-minor-mode-segment
		     telephone-line-buffer-segment))))
  (setq telephone-line-rhs
	'((nil    . (telephone-line-misc-info-segment))
          (accent . (telephone-line-major-mode-segment))
          (evil   . (telephone-line-airline-position-segment))))
  (telephone-line-mode 1))

(use-package recentf
  :config
  (recentf-mode 1))

(use-package ivy
  :diminish ivy-mode
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  :bind (("\C-s" . swiper)
	 ("M-x" . counsel-M-x)
	 ("C-x C-f" . counsel-find-file)
	 ("<f5>" . ivy-switch-buffer)
	 ("\C-x\ \C-r" . counsel-recentf)))

(use-package company
  :diminish company-mode
  :config
  (add-hook 'after-init-hook 'global-company-mode)
  (add-to-list 'company-backends 'company-tern))

(use-package aggressive-indent
  :diminish aggressive-indent-mode
  :config
  (add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)
  (add-hook 'clojure-mode-hook #'aggressive-indent-mode))

(use-package rainbow-delimiters
  :diminish
  :config
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

(use-package projectile
  :config
  (projectile-global-mode 1)
  (setq projectile-completion-system 'ivy)
  (setq projectile-mode-line '(:eval (format "[%s]" (projectile-project-name)))))

(use-package tern
  :diminish tern-mode 
  :config
  (add-hook 'js-mode-hook #'tern-mode))

(use-package undo-tree
  :ensure t
  :diminish undo-tree-mode)

(use-package browse-kill-ring
  :config
  (browse-kill-ring-default-keybindings))

(use-package ace-window
  :bind ("M-p" . ace-window))

(use-package smartparens
  :diminish smartparens-mode
  :config 
  (add-hook 'js-mode-hook #'smartparens-mode)
  (add-hook 'emacs-lisp-mode-hook #'smartparens-mode))

(use-package hungry-delete
  :diminish hungry-delete-mode
  :config
  (global-hungry-delete-mode))
