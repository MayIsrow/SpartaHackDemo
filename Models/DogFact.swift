import Foundation

struct DogFactResponse: Codable {
    let facts: [String]
    let success: Bool
}

struct DogFact: Identifiable {
    let id = UUID()
    let fact: String
}
