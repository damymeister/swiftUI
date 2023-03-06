
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("nazwa-zdjecia")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Tytuł zdjęcia")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    Text("Autor zdjęcia")
                        .font(.subheadline)
                        .foregroundColor(.primary)
                }
                Spacer()
            }
            .padding()
            .background(Color.primary.opacity(0.8))
            .cornerRadius(10)
            .padding(.horizontal)
            .padding(.bottom)
        }
    }
}
