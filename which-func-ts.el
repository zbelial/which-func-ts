;;; which-func-ts.el --- implement which-func using tree-sitter -*- lexical-binding: t -*-

;; Author: Gene Zhao <zjyzhaojiyang@gmail.com>
;; Maintainer: Gene Zhao <zjyzhaojiyang@gmail.com>
;; Version: 0.1
;; Package-Requires: (tree-sitter)
;; Homepage: https://github.com/zbelial/which-func-ts
;; Keywords: which-func Emacs tree-sitter


;; This file is not part of GNU Emacs

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.


;;; Commentary:

;; commentary

;;; Code:
(require 'tsc)

(defun which-func-ts--get-match-nodes (match-rule)
  (ignore-errors
    (let* ((query (tsc-make-query tree-sitter-language match-rule))
           (root-node (tsc-root-node tree-sitter-tree))
           (captures (mapcar #'cdr (tsc-query-captures query root-node #'tsc--buffer-substring-no-properties))))
      (mapcar #'tsc-node-text captures)))
  )

(provide 'which-func-ts)

;;; which-func-ts.el ends here
