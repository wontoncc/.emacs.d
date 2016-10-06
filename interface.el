(defadvice undo-tree-visualize (around undo-tree-split-side-by-side activate)
  "Split undo-tree side-by-side"
  (let ((split-height-threshold nil)
	(split-width-threshold 0))
   ad-do-it))

(add-to-list 'default-frame-alist '(width . 120))

(fset 'yes-or-no-p 'y-or-n-p)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(show-paren-mode 1)
(global-linum-mode t)
(global-hl-line-mode t)
(setq linum-format "%4d \u2502")
(set-default 'truncate-lines t)

(load-theme 'leuven t)

(add-to-list 'default-frame-alist '(font . "Iosevka"))
(set-fontset-font t 'han (font-spec :family "Microsoft Yahei"))
