import Foundation

class DogFactService {
    func getDogFacts(numberOfFacts: Int, completion: @escaping ([DogFact]) -> Void) {
        guard let url = URL(string: "https://dog-api.kinduff.com/api/facts?number=\(numberOfFacts)") else {
            print("Invalid URL")
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                print("Network error: \(error?.localizedDescription ?? "Unknown error")")
                return
            }

            do {
                let response = try JSONDecoder().decode(DogFactResponse.self, from: data)
                let dogFacts = response.facts.map { DogFact(fact: $0) }
                DispatchQueue.main.async {
                    completion(dogFacts)
                }
            } catch {
                print("JSON error: \(error.localizedDescription)")
            }
        }

        task.resume()
    }
}
