import XCTest

import CoffeeTests

var tests = [XCTestCaseEntry]()
tests += CoffeeTests.allTests()
XCTMain(tests)
