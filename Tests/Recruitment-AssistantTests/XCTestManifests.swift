import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Recruitment_AssistantTests.allTests),
    ]
}
#endif
