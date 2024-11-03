(defun remove-time-markers (start end)
  "Remove all mm:ss time markers from the selected region or entire buffer.
If a region is selected, process only that region; otherwise, process the whole buffer."
  (interactive "r")
  (save-excursion
    (goto-char (or start (point-min)))
    (let ((end (or end (point-max))))
      (while (re-search-forward "\\b[0-5]?[0-9]:[0-5][0-9]\\b" end t)
        (replace-match "")))))

(defun remove-blank-lines (start end)
  "Remove all blank lines in the selected region or entire buffer.
If a region is selected, process only that region; otherwise, process the whole buffer."
  (interactive "r")
  (save-excursion
    (goto-char (or start (point-min)))
    (let ((end (or end (point-max))))
      (while (re-search-forward "^[ \t]*\n" end t)
        (replace-match "")))))

