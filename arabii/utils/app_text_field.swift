import SwiftUI

struct AppTextField: View {
    var label: String?
    let title: String
    @Binding var text: String
    var icon: String? = nil
    var borderColor: Color = .border
    var backgroundColor: Color = .white
    var textColor: Color = .black
    var readOnly = false
    var onTap: (() -> Void)?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            if label?.isEmpty == false {
                Text(label!)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.darkText)
                    .padding(.bottom, 6)
            }

            HStack {
                if let icon = icon {
                    Image(systemName: icon)
                        .foregroundColor(.gray)
                }
                
                if readOnly {
                    // Use a Text for read-only mode
                    Text(text.isEmpty ? title : text)
                        .foregroundColor(text.isEmpty ? .gray : textColor)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .onTapGesture {
                            onTap?() // call the callback
                        }
                } else {
                    TextField(title, text: $text)
                        .foregroundColor(textColor)
                }
            }
            .padding()
            .background(backgroundColor)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(borderColor, lineWidth: 1)
            )
        }
    }
}
