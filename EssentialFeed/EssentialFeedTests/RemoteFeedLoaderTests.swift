//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Juan Francisco Bazan Carrizo on 16/05/2025.
//

import XCTest


class RemoteFeedLoader {
    func load() {
        HTTPClient.shared.requestedURL = URL(string: "http://some.com")
    }
}

class HTTPClient {
    
    static let shared =  HTTPClient()
    private init() {}
    
    var requestedURL: URL?
}

final class RemoteFeedLoaderTests: XCTestCase {

    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient.shared
        _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }
    
    func test_loac_requestDataFromURL() {
        let client = HTTPClient.shared
        let sut = RemoteFeedLoader()
        
        sut.load()
        XCTAssertNotNil(client.requestedURL)
    }
    
    

}
