;;; test-scala.el --- Test the Scala checker -*- lexical-binding: t; -*-

;; Copyright (c) 2013 Sebastian Wiesner <lunaryorn@gmail.com>
;;
;; Author: Sebastian Wiesner <lunaryorn@gmail.com>
;; URL: https://github.com/lunaryorn/flycheck

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

(require 'ert)
(require 'flycheck)

(require 'scala-mode2 nil :no-error)

(ert-deftest checker-scala-syntax-error ()
  :expected-result (flycheck-testsuite-fail-unless-checker 'scala)
  (flycheck-testsuite-should-syntax-check
   "checkers/scala-syntax-error.scala" 'scala-mode nil
   '(3 nil "identifier expected but '{' found." error)))

;; Local Variables:
;; coding: utf-8
;; End:

;;; test-scala.el ends here
