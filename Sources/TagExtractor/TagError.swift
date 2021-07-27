//
//  File.swift
//  File
//
//  Created by George Elsham on 27/07/2021.
//

import Foundation

/// Error when getting a view's tag.
public enum TagError: Error, CustomStringConvertible {
    case notFound
    case other

    public var description: String {
        switch self {
        case .notFound: return "Not found"
        case .other: return "Other"
        }
    }
}
