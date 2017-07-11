;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;  last_update.el -- 
;;;	author: nakai <bigswim.atom@gmail.com>
;;;	create day: Thu Sep 26 16:42:55 2002    
;;;     last updated: Tue Jul 11 12:20:57 2017
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun lastupdate-file nil
  "last Update: "
  (interactive)
  (let ((tostr (concat "last updated: " (current-time-string))))
    (save-excursion
      (goto-char (point-min))
      (while (re-search-forward
              "\\last update\\([A-Za-z0-9: ]*\\)?$" nil t)
        (replace-match tostr nil t)))))
(add-hook 'write-file-hooks 'lastupdate-file)
