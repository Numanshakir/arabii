

import SwiftUI

struct SignIn: View {
    
    @EnvironmentObject var navigator: Navigator
    
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
                .padding(.horizontal,20)
            Spacer().frame(height: 8)
            Text("Access your personalized study plan, Barakah points, and streak progress — all synced across your devices.")
                .font(.system(size: 14,weight: .regular))
                .foregroundColor(.lightText)
                .padding(.horizontal,20)
            Spacer()
            Image(uiImage: .loginBg)
            Spacer()
            // Usage
            AppButton(title: "Sign in with google", icon: .google,color: .bg,textColor: .darkText) {
                print("Login tapped")
                navigator.navigate(to:Route.completeProfile)
            
            }.padding(.horizontal,20)
                Spacer().frame(height: 20)
            AppButton(title: "Sign in with Apple", icon: .apple,color: .bg,textColor: .darkText) {
                    print("Login tapped")
                    navigator.navigate(to:Route.completeProfile)
                }.padding(.horizontal,20)
               
        }
        
        
  
    }
}

