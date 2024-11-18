import Foundation
import CoreData


extension Mood {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Mood> {
        return NSFetchRequest<Mood>(entityName: "Mood")
    }

    @NSManaged public var moodType: String?
    @NSManaged public var timestamp: Date?
    @NSManaged public var additionalNote: String?

}

extension Mood : Identifiable {

}
