import SwiftUI

struct HabitCreationView: View {
    @State private var habitName: String = ""
    @State private var habitDescription: String = ""
    @State private var selectedDay: String = "Monday"
    @State private var selectedTime: Date = Date()
    
    let daysOfWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    var body: some View {
        Form {
            Section(header: Text("Habit Details")) {
                TextField("Enter habit name", text: $habitName)
                TextField("Enter description", text: $habitDescription)
                
                Picker("Select Day", selection: $selectedDay) {
                    ForEach(daysOfWeek, id: \.self) { day in
                        Text(day)
                    }
                }
                
                DatePicker("Select Time", selection: $selectedTime, displayedComponents: .hourAndMinute)
            }
            
            Button("Save Habit") {
                saveHabit()
            }
        }
        .navigationTitle("Create Habit")
    }
    
    func saveHabit() {
        // Save habit data (to Core Data or UserDefaults)
        // After saving, schedule the notification.
    }
}

struct HabitCreationView_Previews: PreviewProvider {
    static var previews: some View {
        HabitCreationView()
    }
}
