import SwiftUI

struct DogFactsView: View {
    @State private var dogFacts = [DogFact]()
    @State private var numberOfFacts: Double = 1
    private let service = DogFactService()

    var body: some View {
        NavigationView {
            VStack {
                Slider(value: $numberOfFacts, in: 1...10, step: 1)
                    .padding()
                    .onChange(of: numberOfFacts) { _ in
                        loadDogFacts()
                    }
                
                Text("Number of facts: \(Int(numberOfFacts))")
                    .padding(.bottom)

                List(dogFacts, id: \.id) { fact in
                    Text(fact.fact)
                }

                Button(action: loadDogFacts) {
                    Text("Refresh Facts")
                        .foregroundColor(.white)
                        .padding()
                        .backgroundWithSpartaHackGradient()
                        .cornerRadius(8)
                }
                .padding()
            }
            .navigationBarTitle("Dog Facts")
            .onAppear(perform: loadDogFacts)
        }
    }

    private func loadDogFacts() {
        service.getDogFacts(numberOfFacts: Int(numberOfFacts)) { facts in
            self.dogFacts = facts
        }
    }
}

struct DogFactsView_Previews: PreviewProvider {
    static var previews: some View {
        DogFactsView()
    }
}
