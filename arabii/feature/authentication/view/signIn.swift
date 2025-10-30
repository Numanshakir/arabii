

import SwiftUI

struct SignIn: View {
    
    var body: some View {
        VStack(alignment: .leading,) {
            Button(action: {
                print("Icon tapped!")
            }){
                Image(uiImage: .close)
            }.padding(.leading,20)

        
            Spacer().frame(height: 20)
           Divider()
            Spacer().frame(height: 20)
            Text("Sign in to unlock your learning journey")
                .font(.system(size: 28,weight: .bold))
                .foregroundColor(.darkText)
                .padding(.leading,20)
            Spacer()
            Image(uiImage: .loginBg)
            Spacer()
            // Usage
            AppButton(title: "Sign in with google", icon: .google,) {
                print("Login tapped")
            }.padding(.horizontal,20)


             
        }
        
        
  
    }
}

