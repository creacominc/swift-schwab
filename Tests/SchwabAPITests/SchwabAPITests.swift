import XCTest
@testable import SchwabAPI

final class SchwabAPITests: XCTestCase {
    func testFetchAccountData() {
        let apiClient = APIClient(clientId: "test", clientSecret: "test", redirectURI: "test")
        let expectation = self.expectation(description: "Fetching account data")
        
        apiClient.fetchAccountData { result in
            switch result {
            case .success(let accountData):
                XCTAssertNotNil(accountData)
            case .failure(let error):
                XCTFail("Error: \(error)")
            }
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
}
