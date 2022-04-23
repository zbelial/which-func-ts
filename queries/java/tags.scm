(class_declaration
  name: (identifier) @name) @definition.class

(method_declaration
  name: (identifier) @name) @definition.method

(method_invocation
  name: (identifier) @name
  arguments: (argument_list) @reference.call)

(interface_declaration
  name: (identifier) @name) @definition.interface

(interface_type_list
  (type_identifier) @name) @reference.implementation

(object_creation_expression
  type: (type_identifier) @name) @reference.class

(superclass (type_identifier) @name) @reference.class


;; java method declaration
;; "(class_declaration
;;   name: (identifier) @the-class-name
;;   body: (class_body
;;     (method_declaration
;;       name: (identifier) @the-method-name
;;       parameters: (formal_parameters) @the-method-params)))"


