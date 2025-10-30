

import SwiftUI

struct CompleteProfile: View {

    
    @EnvironmentObject var navigator: Navigator
    @State private var email = ""
    var body: some View {
    
        
        VStack(alignment: .leading,) {
   
                
            Button(action: {
                print("Icon tapped!")
                navigator.pop()
            }){
                Image(uiImage: .close)
            }.padding(.leading,20)
            
            
            Spacer().frame(height: 20)
            Divider()
            Spacer().frame(height: 20)
            Text("Complete Profile")
                .font(.system(size: 28,weight: .bold))
                .foregroundColor(.darkText)
                .padding(.leading,20)
            Spacer().frame(height: 8)
            Text("Don't lose track of your hard work! Syncing your progress across devices requires a few details.")
                .font(.system(size: 14,weight: .regular))
                .foregroundColor(.lightText)
                .padding(.leading,20)
            Spacer()
    

            AppTextField(
                title: "Enter email",
                text: $email,
                icon: "envelope",
                borderColor: .blue,
                backgroundColor: .gray.opacity(0.1)
            )

            Spacer()
            // Usage
            AppButton(title: "Continue",) {
                print("Login tapped")
            }.padding(.horizontal,20)
            
            
            
     
    }
        
        
  
    }
}

