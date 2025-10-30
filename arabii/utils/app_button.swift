import SwiftUI

struct AppButton: View {
    let title: String
    var icon: UIImage? = nil
    var color: Color = .primary
    var textColor: Color = .white
    var borderColor: Color = .gray
    let action: () -> Void
    
    var body: some View {
        Button(action: action,) {
            HStack(spacing: 8) {
                if let icon = icon {
                    Image(uiImage: icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                }
                Text(title)
                    .fontWeight(.semibold)
                    .frame(alignment: .center)
            }
            .foregroundColor(textColor)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 14)
            .background(
                RoundedRectangle(cornerRadius: 26)
                    .fill(color)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 26)
                    .stroke(borderColor, lineWidth: 1)
            )
        }
        .buttonStyle(.plain)
        .navigationBarBackButtonHidden(true)
        .navigationTitle("")
    }
}
