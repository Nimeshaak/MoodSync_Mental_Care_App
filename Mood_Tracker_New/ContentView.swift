import SwiftUI

struct SplashScreenView: View {

    @State private var isActive = false
    
    var body: some View {
        if isActive {
            
            GetStarted()
        } else {

            VStack(spacing: 20) {
                
                Text("😊")
                    .font(.system(size: 100))
                    .foregroundColor(.blue)
                
                Text("MoodSync")
                    .font(.custom("Poppins-Bold", size: 40))
                    .foregroundColor(.blue)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            .edgesIgnoringSafeArea(.all)
            .onAppear {

                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation(.easeOut(duration: 0.5)) {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
