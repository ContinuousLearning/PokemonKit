//
//  IntegerOperators.swift
//  ObjectMapper
//
//  Created by Suyeol Jeon on 17/02/2017.
//
//  The MIT License (MIT)
//
//  Copyright (c) 2014-2018 Tristan Himmelman
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import Foundation

// MARK: - Signed Integer

/// SignedInteger mapping
public func <- <T: SignedInteger>(left: inout T, right: Map) {
	switch right.mappingType {
	case .fromJSON where right.isKeyPresent:
		let value: T = toSignedInteger(right.currentValue) ?? 0
		FromJSON.basicType(&left, object: value)
	case .toJSON:
		left >>> right
	default: ()
	}
}

/// Optional SignedInteger mapping
public func <- <T: SignedInteger>(left: inout T?, right: Map) {
	switch right.mappingType {
	case .fromJSON where right.isKeyPresent:
		let value: T? = toSignedInteger(right.currentValue)
		FromJSON.basicType(&left, object: value)
	case .toJSON:
		left >>> right
	default: ()
	}
}

// Code targeting the Swift 4.1 compiler and below.
#if !(swift(>=4.1.50) || (swift(>=3.4) && !swift(>=4.0)))
/// ImplicitlyUnwrappedOptional SignedInteger mapping
public func <- <T: SignedInteger>(left: inout T!, right: Map) {
	switch right.mappingType {
	case .fromJSON where right.isKeyPresent:
		let value: T! = toSignedInteger(right.currentValue)
		FromJSON.basicType(&left, object: value)
	case .toJSON:
		left >>> right
	default: ()
	}
}
#endif


// MARK: - Unsigned Integer

/// UnsignedInteger mapping
public func <- <T: UnsignedInteger>(left: inout T, right: Map) {
	switch right.mappingType {
	case .fromJSON where right.isKeyPresent:
		let value: T = toUnsignedInteger(right.currentValue) ?? 0
		FromJSON.basicType(&left, object: value)
	case .toJSON:
		left >>> right
	default: ()
	}
}


/// Optional UnsignedInteger mapping
public func <- <T: UnsignedInteger>(left: inout T?, right: Map) {
	switch right.mappingType {
	case .fromJSON where right.isKeyPresent:
		let value: T? = toUnsignedInteger(right.currentValue)
		FromJSON.basicType(&left, object: value)
	case .toJSON:
		left >>> right
	default: ()
	}
}

// Code targeting the Swift 4.1 compiler and below.
#if !(swift(>=4.1.50) || (swift(>=3.4) && !swift(>=4.0)))
/// ImplicitlyUnwrappedOptional UnsignedInteger mapping
public func <- <T: UnsignedInteger>(left: inout T!, right: Map) {
	switch right.mappingType {
	case .fromJSON where right.isKeyPresent:
		let value: T! = toUnsignedInteger(right.currentValue)
		FromJSON.basicType(&left, object: value)
	case .toJSON:
		left >>> right
	default: ()
	}
}
#endif

// MARK: - Casting Utils

/// Convert any value to `SignedInteger`.
private func toSignedInteger<T: SignedInteger>(_ value: Any?) -> T? {
	guard
		let value = value,
		case let number as NSNumber = value
	else {
		return nil
	}

	if T.self ==   Int.self, let x = Int(exactly: number.int64Value) {
		return T.init(x)
	}
	if T.self ==  Int8.self, let x = Int8(exactly: number.int64Value) {
		return T.init(x)
	}
	if T.self == Int16.self, let x = Int16(exactly: number.int64Value) {
		return T.init(x)
	}
	if T.self == Int32.self, let x = Int32(exactly: number.int64Value) {
		return T.init(x)
	}
	if T.self == Int64.self, let x = Int64(exactly: number.int64Value) {
		return T.init(x)
	}

	return nil
}

/// Convert any value to `UnsignedInteger`.
private func toUnsignedInteger<T: UnsignedInteger>(_ value: Any?) -> T? {
	guard
		let value = value,
		case let number as NSNumber = value
	else {
		return nil
	}

	if T.self == UInt.self, let x = UInt(exactly: number.uint64Value) {
		return T.init(x)
	}
	if T.self == UInt8.self, let x = UInt8(exactly: number.uint64Value) {
		return T.init(x)
	}
	if T.self == UInt16.self, let x = UInt16(exactly: number.uint64Value) {
		return T.init(x)
	}
	if T.self == UInt32.self, let x = UInt32(exactly: number.uint64Value) {
		return T.init(x)
	}
	if T.self == UInt64.self, let x = UInt64(exactly: number.uint64Value) {
		return T.init(x)
	}

	return nil
}
