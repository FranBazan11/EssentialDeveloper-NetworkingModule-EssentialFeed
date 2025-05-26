//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Juan Francisco Bazan Carrizo on 19/05/2025.
//

import Foundation

public class RemoteFeedLoader {
    private let url: URL
    private let client: HTTPClient
    
    public init(url: URL, client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    public func load(completion: @escaping (Error) -> Void) {
        client.get(from: url) { error in
            completion(.connectivity)
        }
    }
    
    public enum Error: Swift.Error {
        case connectivity
    }
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (Error) -> Void)
}
