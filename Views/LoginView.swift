import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 120)
                .padding(.top, 50)
                .foregroundStyleWithSpartaHackGradient()

            Text("Welcome to SpartaHack!")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top, 20)

            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 40)
                .padding(.top, 20)

            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 40)
                .padding(.top, 10)

            Button(action: {
                // Login action
            }) {
                Text("Login")
                    .foregroundColor(.white)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .backgroundWithSpartaHackGradient()
                    .cornerRadius(10)
            }
            
            .padding(.horizontal, 40)
            .padding(.top, 20)
            

            Spacer()

            HStack {
                Text("Forgot your password?")
                Button(action: {
                    print("I forgot my password!")
                }) {
                    Text("Click here")
                        .foregroundColor(.blue)
                }
            }
            .padding(.bottom, 20)

            HStack {
                Text("Don't have an account?")
                Button(action: {
                    print("Sign me up!")
                }) {
                    Text("Sign Up")
                        .foregroundColor(.blue)
                }
            }
            .padding(.bottom, 20)
            
            HStack {
                Text("Want some cool dog facts?")
                NavigationLink(destination: DogFactsView()) {
                    Text("Click here")
                        .foregroundColor(.blue)
                }
            }
            .padding(.bottom, 50)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
