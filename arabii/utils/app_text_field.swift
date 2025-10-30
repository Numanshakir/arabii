import SwiftUI

struct AppTextField: View {
    let title: String
    @Binding var text: String
    var icon: String? = nil
    var borderColor: Color = .gray
    var backgroundColor: Color = .white
    var textColor: Color = .black

    var body: some View {
        HStack {
            if let icon = icon {
                Image(systemName: icon)
                    .foregroundColor(.gray)
            }
            TextField(title, text: $text)
                .foregroundColor(textColor)
        }
        .padding()
        .background(backgroundColor)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(borderColor, lineWidth: 1)
        )
    }
}
