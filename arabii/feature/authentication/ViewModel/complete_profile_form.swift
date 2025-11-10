import SwiftUI
import FormValidator

class CompleteProfileForm: ObservableObject {
    // 2
     @Published
    var manager = FormManager(validationType: .deferred)

     // 3
     @FormField(validator: NonEmptyValidator(message: "This field is required!"))
     var firstName: String = ""

     // 4
     lazy var firstNameValidation = _firstName.validation(manager: manager)
}
