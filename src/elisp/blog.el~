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

(defun blog-site-dir()
  (interactive)
  (dired org-mode-websrc-directory))

(defun blog-elisp()
  (interactive)
  (find-file "C:/rahuketu/programming/static-site/rahuketu86.github.io/src/elisp/blog.el"))


(provide 'blog)

;;; blog.el ends here
