// generated by codegen/codegen.py
import codeql.swift.elements.decl.GenericTypeDecl
import codeql.swift.elements.decl.IterableDeclContext
import codeql.swift.elements.type.Type

class NominalTypeDeclBase extends @nominal_type_decl, GenericTypeDecl, IterableDeclContext {
  Type getType() {
    exists(Type x |
      nominal_type_decls(this, x) and
      result = x.resolve()
    )
  }
}