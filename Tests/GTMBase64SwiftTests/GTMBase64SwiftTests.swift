import XCTest
import GTMBase64

@testable import GTMBase64Swift

final class GTMBase64SwiftTests: XCTestCase {
    
    func testEncodingDecoding() throws {

        let testString: String = "GTMBase64SwiftTest"
        let testEncodedString: String = "R1RNQmFzZTY0U3dpZnRUZXN0"
        
        guard let testData = testString.data(using: .utf8) else {
            XCTFail("Unable to get Data from testString")
            return
        }
        
        guard let encodedData = GTMBase64.encode(testData) else {
            XCTFail("Unable to encode testData")
            return
        }
        
        XCTAssertEqual(testEncodedString, String(data: encodedData, encoding: .utf8))
        
        guard let decodedData = GTMBase64.decode(encodedData) else {
            XCTFail("Unable to decode encodedData")
            return
        }
       
        guard let decodedString = String(data: decodedData, encoding: .utf8) else {
            XCTFail("Unable to create decodedString from decodedData")
            return
        }
        
        XCTAssertEqual(testString, decodedString)
    }
    
}
