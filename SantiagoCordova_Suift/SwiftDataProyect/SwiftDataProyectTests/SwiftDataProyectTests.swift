//
//  SwiftDataProyectTests.swift
//  SwiftDataProyectTests
//
//  Created by Santiago Cordova - A01029211 on 25/09/25.
//

import Testing
@testable import SwiftDataProyect

struct SwiftDataProyectTests {

    @Test func example() async throws {
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
        #expect(TravelGoal.isValidName("Cupertino")) // ✅ válido
        #expect(!TravelGoal.isValidName("")) // ❌ vacío
        #expect(!TravelGoal.isValidName(" "))
    }
    
    @Test("Name length boundaries still valid if non-empty")
    func testNameBoundary() {
    #expect(TravelGoal.isValidName("A"))
    #expect(TravelGoal.isValidName(String(repeating: "X", count: 255)))
    }


}
