

import SwiftUI
import FormValidator

struct CompleteProfile: View {

    @StateObject private var form = CompleteProfileForm()
    @EnvironmentObject var navigator: Navigator

    @State private var dob = ""
    @State private var showPicker = false
    @State private var selectedDate = Date()
    var body: some View {
    
//        Form{
        VStack(alignment: .leading,) {
         
                
                Button(action: {
                    print("Icon tapped!")
                    navigator.pop()
                }){
                    Image(uiImage: .close)
                }.padding(.leading,20)
                
                

            Divider().padding(.vertical,20)

            VStack(alignment: .leading,) {
             
          
                Text("Complete Profile")
                    .font(.system(size: 28,weight: .bold))
                    .foregroundColor(.darkText)
      
                Spacer().frame(height: 8)
                Text("Don't lose track of your hard work! Syncing your progress across devices requires a few details.")
                    .font(.system(size: 14,weight: .regular))
                    .foregroundColor(.lightText)
                    .padding(.bottom,24)
           
         
                
                
                AppTextField(
                    label :"Full Name",
                    title: "Enter full name",
                    text:  $form.firstName,
                
            
                )
                .validation(form.firstNameValidation)
                Spacer().frame(height: 16)
            
            AppTextField(
                label :"Date of birth",
                title: "Enter date of birth",
                text: $dob,
                readOnly: true
             
             

            )
                {
                                print("Action performed!")
                    showPicker.toggle()
                            }
            
                .sheet(isPresented:  $showPicker ){
                    VStack {
                    DatePicker(
                        "",
                        selection: $selectedDate,
                        in: ...Date(), // optional: restrict to past dates
                        displayedComponents: [.date] // only date, no time
                    )
                    .datePickerStyle(.graphical)// or .wheel, .graphical
                }
                    .presentationDetents([.height(400)])
                    
                }
              
                Spacer()
        
               
                AppButton(title: "Continue",) {
                    print("Login tapped")
                    let valid = form.manager.triggerValidation()
                     // Validation result.
                     print("Form valid: \(valid)")
                }
                
                
            }
            .padding(.horizontal,20)
     
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        
        
  
    }
}

