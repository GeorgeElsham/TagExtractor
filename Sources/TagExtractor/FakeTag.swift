//
//  File.swift
//  File
//
//  Created by George Elsham on 27/07/2021.
//

import Foundation

/// Represents a tag modifier on a view.
///
/// Replicates `SwiftUI.TagValueTraitKey<T>.Value.tagged`,
/// where `T` is the type of the tag which conforms to `Hashable`.
internal enum FakeTag<TagType: Hashable> {
    case tagged(TagType)

    var value: TagType {
        switch self {
        case let .tagged(value): return value
        }
    }
}
