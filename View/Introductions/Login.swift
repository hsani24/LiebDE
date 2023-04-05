//
//  Login.swift
//  LiebDE-1
//
//  Created by Sani I on 21.03.23.
//

import SwiftUI
import FirebaseAuth

class AppViewModel: ObservableObject {
    
    let auth = Auth.auth()
    
    @Published var signedIn = false
    @Published var selectedLanguage: Language1? = nil
    var isSignedIn: Bool {
        return auth.currentUser != nil
    }
    func selectLanguage(language: Language1){
        selectedLanguage = language
    }
    func signIn(email: String, password: String) {
        auth.signIn(withEmail: email, password: password) { [weak self] result, error in
            guard result != nil, error == nil else{
                return
            }
            
            DispatchQueue.main.async {
                self?.signedIn = true
            }
        }
        
    }
    
    func signUp(email: String, password: String){
        auth.createUser(withEmail: email, password: password) { [weak self] result, error in
            guard result != nil, error == nil else{
                return
            }
            
            DispatchQueue.main.async {
                self?.signedIn = true
            }
        }
    }
    func signOut() {
        try? auth.signOut()
        
        self.signedIn = false
    }
    func resetLanguage() {
        selectedLanguage = nil 
    }
}

struct Login: View {
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        // MARK:
        if viewModel.signedIn && viewModel.selectedLanguage != nil {
            HomeTab().navigationBarBackButtonHidden(true)
        } else if viewModel.signedIn {
            Language()
        } else {
            SignInView()
        }
        
    }
}
struct SignInView: View {
    @State var email = ""
    @State var password = ""
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        
        VStack {
            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            
            VStack {
                TextField("Email Address", text: $email)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                
                
                SecureField("Password", text: $password)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                Button(action: {
                    
                    guard !email.isEmpty, !password.isEmpty else{
                        return
                    }
                    viewModel.signIn(email: email, password: password)
                    
                }, label: {
                    Text("Sign In")
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                        .cornerRadius(8)
                })
                // MARK:
//                NavigationLink("Create Account", destination: SignUpView())
//                    .padding()
                Button(action: {

                    guard !email.isEmpty, !password.isEmpty else{
                        return
                    }
                    viewModel.signUp(email: email, password: password)


                }, label: {
                    Text("Create Account")
                        .foregroundColor(Color.blue)
//                        .frame(width: 200, height: 50)
//                        .background(Color.blue)
//                        .cornerRadius(8)
                }).buttonStyle(.plain)
            }
            .padding()
            
            Spacer()
        }
        .navigationTitle("Liebe Düsseldorf")
        
    }
}
/*struct SignUpView: View {
    @State var email = ""
    @State var password = ""
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        if viewModel.isSignedIn {
            Language()
        } else {
            
            
            VStack {
                Image(systemName: "person")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                
                VStack {
                    TextField("Email Address", text: $email)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                    
                    
                    SecureField("Password", text: $password)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                    Button(action: {
                        
                        guard !email.isEmpty, !password.isEmpty else{
                            return
                        }
                        viewModel.signUp(email: email, password: password)
                        
                        
                    }, label: {
                        Text("Create Account")
                            .foregroundColor(Color.white)
                            .frame(width: 200, height: 50)
                            .background(Color.blue)
                            .cornerRadius(8)
                    })
                }
                .padding()
                
                Spacer()
            }
            .navigationTitle("Create Account")
        }
    }
}*/
struct MyPreviewProvider_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
