(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)
(eval-after-load 'haskell-mode
  '(define-key haskell-mode-map [f8] 'haskell-navigate-imports))

(let ((my-nix-bin-path (expand-file-name "~/.nix-profile/bin")))
  (setenv "PATH" (concat my-nix-bin-path path-separator (getenv "PATH")))
  (add-to-list 'exec-path my-nix-bin-path))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages (quote (haskell-mode)))
 '(haskell-tags-on-save t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
