//
//  SharedTestHelpers.swift
//  EssentialFeed
//
//  Created by Juan Bazan on 05/10/2025.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}
