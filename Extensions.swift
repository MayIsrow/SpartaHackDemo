import SwiftUI

extension View {
    func backgroundWithSpartaHackGradient() -> some View {
        self.background(
            LinearGradient(gradient: Gradient(colors: [.pink, .orange]), startPoint: .leading, endPoint: .trailing)
        )
    }

    func foregroundStyleWithSpartaHackGradient() -> some View {
        self.foregroundStyle(
            LinearGradient(gradient: Gradient(colors: [.pink, .orange]), startPoint: .leading, endPoint: .trailing)
        )
        .mask(self)
    }
}
