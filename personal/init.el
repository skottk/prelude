;;; init.el --- Summary
;;; (global-set-key (kbd "C-x C-f") 'helm-find-files)

;;; Commentary:


;;; Code:
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ))

(setq cider-pprint-fn 'puget)

(require 'clj-refactor)

(defun my-clojure-mode-hook ()
  (clj-refactor-mode 1)
  (add-hook 'cider-mode-hook #'eldoc-mode)
  (yas-minor-mode 1) ; for adding require/use/import
  (cljr-add-keybindings-with-prefix "C-c C-m"))

(add-hook 'clojure-mode-hook #'my-clojure-mode-hook)
(add-hook 'haskell-mode-hook 'intero-mode)


(require 'yesql-ghosts)

(setq cider-cljs-lein-repl "(do (use 'figwheel-sidecar.repl-api) (start-figwheel!) (cljs-repl))")


(provide 'init)
;;; init.el ends here
