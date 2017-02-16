/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: unittest_swift_extension.proto
 *
 */

//  Protos/unittest_swift_extension.proto - test proto
// 
//  This source file is part of the Swift.org open source project
// 
//  Copyright (c) 2014 - 2016 Apple Inc. and the Swift project authors
//  Licensed under Apache License v2.0 with Runtime Library Exception
// 
//  See http://swift.org/LICENSE.txt for license information
//  See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
// 
//  -----------------------------------------------------------------------------
// /
// / Test handling of extensions to deeply nested messages.
// /
//  -----------------------------------------------------------------------------

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _1: SwiftProtobuf.ProtobufAPIVersion_1 {}
  typealias Version = _1
}

struct ProtobufUnittest_Extend_Foo: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  static let protoMessageName: String = "Foo"
  static let protoPackageName: String = "protobuf_unittest.extend"
  static let _protobuf_fieldNames = FieldNameMap()

  var unknown = SwiftProtobuf.UnknownStorage()

  struct Bar: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
    static let protoMessageName: String = "Bar"
    static let protoPackageName: String = "protobuf_unittest.extend"
    static let _protobuf_fieldNames = FieldNameMap()

    var unknown = SwiftProtobuf.UnknownStorage()

    struct Baz: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf.ExtensibleMessage, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
      static let protoMessageName: String = "Baz"
      static let protoPackageName: String = "protobuf_unittest.extend"
      static let _protobuf_fieldNames: FieldNameMap = [
        1: .same(proto: "a"),
      ]

      var unknown = SwiftProtobuf.UnknownStorage()

      private var _a: Int32? = nil
      var a: Int32 {
        get {return _a ?? 0}
        set {_a = newValue}
      }
      var hasA: Bool {
        return _a != nil
      }
      mutating func clearA() {
        return _a = nil
      }

      public var isInitialized: Bool {
        if !_extensionFieldValues.isInitialized {return false}
        return true
      }

      mutating func _protoc_generated_decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
          try decodeField(decoder: &decoder, fieldNumber: fieldNumber)
        }
      }

      mutating func _protoc_generated_decodeField<D: SwiftProtobuf.Decoder>(decoder: inout D, fieldNumber: Int) throws {
        switch fieldNumber {
        case 1: try decoder.decodeSingularInt32Field(value: &_a)
        default: if (100 <= fieldNumber && fieldNumber < 1001) {
            try decoder.decodeExtensionField(values: &_extensionFieldValues, messageType: Baz.self, fieldNumber: fieldNumber)
          }
        }
      }

      func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
        if let v = _a {
          try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt32.self, value: v, fieldNumber: 1)
        }
        try visitor.visitExtensionFields(fields: _extensionFieldValues, start: 100, end: 1001)
        unknown.traverse(visitor: visitor)
      }

      func _protoc_generated_isEqualTo(other: ProtobufUnittest_Extend_Foo.Bar.Baz) -> Bool {
        if _a != other._a {return false}
        if unknown != other.unknown {return false}
        if _extensionFieldValues != other._extensionFieldValues {return false}
        return true
      }

      private var _extensionFieldValues = SwiftProtobuf.ExtensionFieldValueSet()

      mutating func setExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, Baz>, value: F.ValueType) {
        _extensionFieldValues[ext.fieldNumber] = ext.set(value: value)
      }

      mutating func clearExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, Baz>) {
        _extensionFieldValues[ext.fieldNumber] = nil
      }

      func getExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, Baz>) -> F.ValueType {
        if let fieldValue = _extensionFieldValues[ext.fieldNumber] as? F {
          return fieldValue.value
        }
        return ext.defaultValue
      }

      func hasExtensionValue<F: SwiftProtobuf.ExtensionField>(ext: SwiftProtobuf.MessageExtension<F, Baz>) -> Bool {
        return _extensionFieldValues[ext.fieldNumber] is F
      }
      func _protobuf_fieldNames(for number: Int) -> FieldNameMap.Names? {
        return Baz._protobuf_fieldNames.fieldNames(for: number) ?? _extensionFieldValues.fieldNames(for: number)
      }
    }

    mutating func _protoc_generated_decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        try decodeField(decoder: &decoder, fieldNumber: fieldNumber)
      }
    }

    mutating func _protoc_generated_decodeField<D: SwiftProtobuf.Decoder>(decoder: inout D, fieldNumber: Int) throws {
    }

    func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
      unknown.traverse(visitor: visitor)
    }

    func _protoc_generated_isEqualTo(other: ProtobufUnittest_Extend_Foo.Bar) -> Bool {
      if unknown != other.unknown {return false}
      return true
    }
  }

  mutating func _protoc_generated_decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      try decodeField(decoder: &decoder, fieldNumber: fieldNumber)
    }
  }

  mutating func _protoc_generated_decodeField<D: SwiftProtobuf.Decoder>(decoder: inout D, fieldNumber: Int) throws {
  }

  func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    unknown.traverse(visitor: visitor)
  }

  func _protoc_generated_isEqualTo(other: ProtobufUnittest_Extend_Foo) -> Bool {
    if unknown != other.unknown {return false}
    return true
  }
}

struct ProtobufUnittest_Extend_C: SwiftProtobuf.Message, SwiftProtobuf.Proto2Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf.ProtoNameProviding {
  static let protoMessageName: String = "C"
  static let protoPackageName: String = "protobuf_unittest.extend"
  static let _protobuf_fieldNames: FieldNameMap = [
    999: .same(proto: "c"),
  ]

  var unknown = SwiftProtobuf.UnknownStorage()

  ///        extensions 10 to 20;
  private var _c: Int64? = nil
  var c: Int64 {
    get {return _c ?? 0}
    set {_c = newValue}
  }
  var hasC: Bool {
    return _c != nil
  }
  mutating func clearC() {
    return _c = nil
  }

  mutating func _protoc_generated_decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      try decodeField(decoder: &decoder, fieldNumber: fieldNumber)
    }
  }

  mutating func _protoc_generated_decodeField<D: SwiftProtobuf.Decoder>(decoder: inout D, fieldNumber: Int) throws {
    switch fieldNumber {
    case 999: try decoder.decodeSingularInt64Field(value: &_c)
    default: break
    }
  }

  func _protoc_generated_traverse(visitor: SwiftProtobuf.Visitor) throws {
    if let v = _c {
      try visitor.visitSingularField(fieldType: SwiftProtobuf.ProtobufInt64.self, value: v, fieldNumber: 999)
    }
    unknown.traverse(visitor: visitor)
  }

  func _protoc_generated_isEqualTo(other: ProtobufUnittest_Extend_C) -> Bool {
    if _c != other._c {return false}
    if unknown != other.unknown {return false}
    return true
  }
}

let ProtobufUnittest_Extend_Extensions_b = SwiftProtobuf.MessageExtension<OptionalExtensionField<SwiftProtobuf.ProtobufString>, ProtobufUnittest_Extend_Foo.Bar.Baz>(
  fieldNumber: 100,
  fieldNames: .same(proto: "protobuf_unittest.extend.b"),
  defaultValue: ""
)

let ProtobufUnittest_Extend_Extensions_c = SwiftProtobuf.MessageExtension<OptionalGroupExtensionField<ProtobufUnittest_Extend_C>, ProtobufUnittest_Extend_Foo.Bar.Baz>(
  fieldNumber: 101,
  fieldNames: .same(proto: "protobuf_unittest.extend.C"),
  defaultValue: ProtobufUnittest_Extend_C()
)

extension ProtobufUnittest_Extend_Foo.Bar.Baz {
  var ProtobufUnittest_Extend_b: String {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend_Extensions_b) ?? ""}
    set {setExtensionValue(ext: ProtobufUnittest_Extend_Extensions_b, value: newValue)}
  }
  var hasProtobufUnittest_Extend_b: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extend_Extensions_b)
  }
  mutating func clearProtobufUnittest_Extend_b() {
    clearExtensionValue(ext: ProtobufUnittest_Extend_Extensions_b)
  }
}

extension ProtobufUnittest_Extend_Foo.Bar.Baz {
  var ProtobufUnittest_Extend_c: ProtobufUnittest_Extend_C {
    get {return getExtensionValue(ext: ProtobufUnittest_Extend_Extensions_c) ?? ProtobufUnittest_Extend_C()}
    set {setExtensionValue(ext: ProtobufUnittest_Extend_Extensions_c, value: newValue)}
  }
  var hasProtobufUnittest_Extend_c: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_Extend_Extensions_c)
  }
  mutating func clearProtobufUnittest_Extend_c() {
    clearExtensionValue(ext: ProtobufUnittest_Extend_Extensions_c)
  }
}

let ProtobufUnittest_Extend_UnittestSwiftExtension_Extensions: SwiftProtobuf.ExtensionSet = [
  ProtobufUnittest_Extend_Extensions_b,
  ProtobufUnittest_Extend_Extensions_c
]
