(setq org-mode-websrc-directory  "C:/rahuketu/programming/static-site/rahuketu86.github.io/src" )
(setq org-mode-publishing-directory  "C:/rahuketu/programming/static-site/rahuketu86.github.io" )

(setq org-publish-project-alist
      '(
        ("website" :components ("orgfiles"))
        ("orgfiles"
         :base-directory  "C:/rahuketu/programming/static-site/rahuketu86.github.io/src" 
         :base-extension "org"
         :publishing-directory  "C:/rahuketu/programming/static-site/rahuketu86.github.io"
         :exclude "*/excluded/*" 
         :recursive t
         :publishing-function org-twbs-publish-to-html
         :headline-levels 3
         :with-toc nil
        )
        )
      )
;; Setting up html-postamble
(setq org-html-postamble-format  "Published on %d. Last modified on %C")

(defun blog-site-dir()
  (interactive)
  (dired org-mode-websrc-directory))

(defun blog-elisp()
  (interactive)
  (find-file (concat org-mode-websrc-directory  "/elisp/blog.el")))


(provide 'blog)


