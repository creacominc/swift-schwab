# swift-schwab

A Swift wrapper for the Schwab brokerage API.

## Installation

You can add swift-schwab to an Xcode project by adding it as a package dependency.

1. From the **File** menu, select **Swift Packages -> Add Package Dependency**
2. Enter "https://github.com/shagler/swift-schwab" into the package repository URL text field.
3. Link "SchwabAPI" to your application target.

## Usage

```swift
import SchwabAPI

let schwab = SchwabAPI(
    clientId: "your_client_id",
    clientSecret: "your_client_secret",
    redirectURI: "your_redirect_uri")

schwab.authenticate { result in
    switch result {
        case .success:
          print("Authentication successful")
        case .failure(let error):
          print("Authentication failed: \(error)")
    }
}
```
