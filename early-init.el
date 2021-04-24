;;; early-init.el --- earliest birds               -*- no-byte-compile: t lexical-binding: t -*-


;; Disable GC until gcmh-mode is loaded
(setq gc-cons-threshold most-positive-fixnum)

;; Inhibit resizing frame greatly improving performace
(setq frame-inhibit-implied-resize t)

;;(setq load-prefer-newer t)


;; Disable deffered compilation for Emacs native comp since straight.el compiles packages ahead of time.
(setq comp-deferred-compilation nil)

;; Enable deffered compilation
;;(setq comp-deferred-compilation t)

;; Prevent Emacs from pinging things that look like domain names.
(setq ffap-machine-p-known 'reject)

;; Disable gui elements before they are initialized.
(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)

(when (featurep 'ns)
    (push '(ns-transparent-titlebar . t) default-frame-alist))

;;Force plugins dir at head to reduce startup time.
(defun update-load-path (&rest _)
    "Update `load-path'."
      (dolist (dir '("plugins"))
	    (push (expand-file-name dir user-emacs-directory) load-path)))

;; Add plugins dir to load path.
(let ((default-directory  "~/.emacs.d/plugins/"))
    (normal-top-level-add-subdirs-to-load-path))


;; Prevent package.el from loading
(setq package-enable-at-startup nil)



;; Local Variables:
;; no-byte-compile: t
;; End:
;;; early-init.el ends here
