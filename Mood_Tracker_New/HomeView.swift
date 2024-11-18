import SwiftUI

struct HomeView: View {
    @State private var selectedMood: String?
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HStack {
                    Text("Home")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                    NavigationLink(destination: Text("Notifications Page")) {
                        Image(systemName: "bell")
                            .font(.title)
                            .foregroundColor(.primary)
                    }
                }
                .padding(.horizontal)
                .padding(.top, 20)
                
                if selectedMood == nil {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("09-11-2024")
                            .font(.title2)
                            .fontWeight(.medium)
                            .foregroundColor(Color(red: 0.1, green: 0.2, blue: 0.1))
                            .padding(.bottom, 8)
                            .padding(.leading, 16)

                        Text("How are You Feeling Today?")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.leading, 16)
                            .foregroundColor(.primary)
                        HStack(spacing: 12) {
                            moodButton(emoji: "😊")
                            moodButton(emoji: "😢")
                            moodButton(emoji: "😡")
                            moodButton(emoji: "😱")
                            moodButton(emoji: "😴")
                        }
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(15)
                    }
                } else {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("09-11-2024")
                            .font(.title2)
                            .fontWeight(.medium)
                            .foregroundColor(Color(red: 0.1, green: 0.2, blue: 0.1))
                            .padding(.bottom, 8)
                            .padding(.leading, 16)

                        Text("How are You Feeling Today?")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.leading, 16)
                            .foregroundColor(.primary)
                        
                        Text("Today's Mood: \(selectedMood!)")
                            .font(.headline)
                            .foregroundColor(.blue)
                            .padding(.top, 20)
                            .padding(.leading, 16)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(15)
                }

                HStack {
                    Image(systemName: "bell.fill")
                        .foregroundColor(.orange)
                    Text("You have 3 new notifications")
                        .font(.body)
                        .foregroundColor(.primary)
                    Spacer()
                    NavigationLink(destination: Text("Notifications Page")) {
                        Text("View All")
                            .font(.body)
                            .foregroundColor(.blue)
                    }
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(15)
                .padding(.horizontal)

                VStack(alignment: .leading, spacing: 10) {
                    Text("Motivational Quotes")
                        .font(.title2)
                        .fontWeight(.medium)
                    
                    Text("“The only way to do great work is to love what you do.” – Steve Jobs")
                        .font(.body)
                        .italic()
                        .foregroundColor(.secondary)
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(15)
                .padding(.horizontal)
                .frame(height: 150)
    
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        NavigationLink(destination: DeepBreathingView()) {
                            BoxView(imageName: "IMG1", size: CGSize(width: 160, height: 160))
                        }
                        
                        NavigationLink(destination: DeepBreathingView()) {
                            BoxView(imageName: "IMG2", size: CGSize(width: 160, height: 160))
                        }
                        
                        NavigationLink(destination: DeepBreathingView()) {
                            BoxView(imageName: "IMG3", size: CGSize(width: 160, height: 160))
                        }
                    }
                    .padding()
                }
                .background(Color.gray.opacity(0.1))
                .background(Color.white)
                .cornerRadius(15)
                .padding(.horizontal)
                
                Spacer()
            }
            .navigationBarHidden(true)
            .background(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.2), Color.green.opacity(0.3)]), startPoint: .top, endPoint: .bottom))
        }
    }
    
    private func moodButton(emoji: String) -> some View {
        NavigationLink(
            destination: MoodView(selectedMood: $selectedMood),
            label: {
                Text(emoji)
                    .font(.largeTitle)
                    .padding()
                    .background(selectedMood == emoji ? Color.blue.opacity(0.3) : Color.gray.opacity(0.2))
                    .cornerRadius(10)
            })
    }
}

struct BoxView: View {
    let imageName: String
    let size: CGSize
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: size.width, height: size.height)
                .clipped()
                .cornerRadius(10)
                .shadow(radius: 6)
        }
        .frame(width: size.width, height: size.height)
        .clipped()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
