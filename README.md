# TagExtractor

Extract tag value from SwiftUI views. Tags are usually added to a view with the `.tag(_:)` modifier.


## Usage

The documentation on the methods explain how to use this more in-depth, but here is an overview of 2 examples.

### Example #1

```swift
let view = Text("Hello world!").tag("some tag")

// Method #1
do {
    let tag: String = try view.getTag()
    print("tag: \(tag)")
} catch {
    fatalError("Tag error: \(error)")
}

// Method #2
let tag: String? = try? view.getTag()
print("tag: \(tag)")
```

### Example #2

```swift
Text("Hello world!")
    .tag("some tag")
    .extractTag { (getTag: () throws -> String) in
        // Method #1
        do {
            let tag = try getTag()
            print("tag: \(tag)")
        } catch {
            print("Tag error: \(error)")
        }
    
        // Method #2
        let tag = try? getTag()
        print("tag: \(tag)")
    }
```
