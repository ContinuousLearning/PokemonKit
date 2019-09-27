import PokemonKit
import Foundation

extension PokeAPI {
    var capitalizedDescription: String {
        let startIndex = self.description.startIndex
        let nextIndex = self.description.index(after: startIndex)
        let firstLetter = self.description[startIndex].uppercased()
        var capitalized = self.description
        capitalized.replaceSubrange(startIndex..<nextIndex, with: firstLetter)
        return capitalized
    }

    var fetchFunction: String {
        let resultType = "Result<\(self.type), Error>"
        let capitalized = self.capitalizedDescription

        if !self.hasParameter {
            return """

/// Fetch \(capitalized)
///
/// - parameter completion: \(resultType)
///
/// Error is either a DecodingError or URLError
public func fetch\(capitalized)(_ completion: @escaping (\(resultType)) -> Void) {
    fetch(api: .\(self.description), completion: completion)
}

"""
        } else {
            return """

/// Fetch \(capitalized)
///
/// - parameter id: identifies the \(self.description)
/// - parameter completion: \(resultType)
///
/// Error is either a DecodingError or URLError
public func fetch\(capitalized)(id: String, _ completion: @escaping (\(resultType)) -> Void) {
    fetch(api: .\(self.description)(id: id), completion: completion)
}

"""
        }
    }
}

if CommandLine.arguments.contains("parameterPromises") {

    let parameterPromises = PokeAPI.allCases
        .filter({ $0.hasParameter })
        .map({ "EraseSuccessId(id: \"1\", fn: fetch\($0.capitalizedDescription))," })
        .sorted()
        .joined(separator: "\n")
    
    print(parameterPromises)

} else if CommandLine.arguments.contains("listPromises") {

    let listPromises = PokeAPI.allCases
        .filter({ !$0.hasParameter })
        .map({ "EraseSuccess(fn: fetch\($0.capitalizedDescription))," })
        .sorted()
        .joined(separator: "\n")
    
    print(listPromises)
    
} else if CommandLine.arguments.contains("generate") {
    let fetchFunctions = PokeAPI.allCases
        .map({ $0.fetchFunction })
        .sorted()
        .reduce("", +)
    
    let manager = FileManager()
    manager.createFile(atPath: "./Functions.swift", contents: fetchFunctions.data(using: .unicode), attributes: nil)
    print(manager.currentDirectoryPath)
    
}

exit(EXIT_SUCCESS)
