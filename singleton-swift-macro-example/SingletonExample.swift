//
//  SingletonExample.swift
//  singleton-swift-macro-example
//
//  Created by Michael Papp on 11/23/25.
//

import Foundation
import Singleton


@Singleton
public final class SwiftTestClass {
	var testStr = "This is a Singleton macro class"
	
	func returnString1() -> String {
		return testStr
	}
	
	func privateInit() {
	}
}


@Singleton
public struct SwiftTestStruct {
	var testStr = "This is a Singleton macro struct"
	
	func returnString2() -> String {
		return testStr
	}
	
	func privateInit() {
	}
}

@Singleton
public final actor SwiftTestActor {
	var testStr = "This is a Singleton macro struct"
	
	func returnString3() -> String {
		return testStr
	}
	
	func privateInit() {
	}
}

@MainActor
public class TesttheSwiftTestClass {
	
	public init() {}
	
	public func trytheclass() -> String {
		let returnStr = SwiftTestClass.shared.returnString1()
		return returnStr
	}
	
	public func trythestruct() -> String {
		let returnStr = SwiftTestStruct.shared.returnString2()
		return returnStr
	}
	
	public func trytheactor() async -> String {
		let returnStr = await SwiftTestActor.shared.returnString3()
		return returnStr
	}

}
