import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Hello SpartaHack!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 50)
                
                Spacer()

                NavigationLink(destination: LoginView()) {
                    Text("Continue")
                        .foregroundColor(.white)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .backgroundWithSpartaHackGradient()
                        .cornerRadius(10)
                }
                .padding(.horizontal, 40)

                Spacer()
                Spacer()
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
