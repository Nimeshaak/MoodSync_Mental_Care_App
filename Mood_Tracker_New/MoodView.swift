import SwiftUI

struct MoodView: View {
    @Binding var selectedMood: String?
    @State private var additionalNote: String = ""
    @State private var currentMood: String?
    
    var body: some View {
        VStack {

            Text("09-11-2024")
                .font(.title3)
                .fontWeight(.medium)
                .frame(maxWidth: .infinity)
                .padding(.top, 20)
            
            Text("How are you feeling today?")
                .font(.title2)
                .fontWeight(.medium)
                .frame(maxWidth: .infinity)
                .padding(.bottom, 20)
            
            VStack(alignment: .leading, spacing: 20) {
                HStack(spacing: 20) {
                    moodButton(emoji: "😊")
                    moodButton(emoji: "😢")
                    moodButton(emoji: "😡")
                    moodButton(emoji: "😱")
                    moodButton(emoji: "😴")
                }
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(15)
            .padding(.horizontal)
            
            VStack(alignment: .leading) {
                Text("Add Additional Note")
                    .font(.headline)
                    .padding(20)
                
                TextField("Enter your note here", text: $additionalNote)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(5)
                    .padding(.horizontal)
            }

            Button(action: {
                selectedMood = currentMood
            }) {
                Text("Save")
                    .font(.title2)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.top, 20)
            }
            
            Spacer()        }
        .padding(.bottom, 20)     }

    private func moodButton(emoji: String) -> some View {
        Button(action: {
            currentMood = emoji
        }) {
            Text(emoji)
                .font(.largeTitle)
                .padding()
                .background(currentMood == emoji ? Color.blue.opacity(0.3) : Color.gray.opacity(0.2))
                .cornerRadius(10)
        }
    }
}

struct MoodView_Previews: PreviewProvider {
    static var previews: some View {
        MoodView(selectedMood: .constant("😊"))
    }
}
