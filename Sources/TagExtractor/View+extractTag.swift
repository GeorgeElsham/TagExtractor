//
//  File.swift
//  File
//
//  Created by George Elsham on 27/07/2021.
//

import SwiftUI

public extension View {
    /// Extracts the tag of the view. This can be used as a view modifier where
    /// the closure contains the tag's value. See `getTag()` for documentation.
    ///
    /// Example usage:
    ///
    ///     Text("Hello world!")
    ///         .tag("some tag")
    ///         .extractTag { (getTag: () throws -> String) in
    ///             // Method #1
    ///             do {
    ///                 let tag = try getTag()
    ///                 print("tag: \(tag)")
    ///             } catch {
    ///                 print("Error extracting tag: \(error)")
    ///             }
    ///
    ///             // Method #2
    ///             let tag = try? getTag()
    ///             print("tag: \(tag)")
    ///         }
    ///
    /// - Returns: Self.
    func extractTag<TagType: Hashable>(_ closure: (() throws -> TagType) -> Void) -> Self {
        closure(getTag)
        return self
    }
}
