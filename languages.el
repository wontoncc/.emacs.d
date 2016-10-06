;; Javascript
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(setq-default js2-basic-offset 2)
(setq-default js-indent-level 2)
(setq js2-mode-hook
      '(lambda () (progn (set-variable 'indent-tabs-mode nil))))
(add-hook 'javascript-mode-hook
	  (function (lambda ()
		      (setq evil-shift-width js-indent-level))))
