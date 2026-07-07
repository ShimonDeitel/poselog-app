import Foundation

struct PositionEntry: Identifiable, Codable, Equatable {
    var id: UUID = UUID()
    var createdAt: Date = Date()
    var position: String // Back/Side/Stomach
    var soreness: Int // 1-5

    init(id: UUID = UUID(), createdAt: Date = Date(), position: String = "Side", soreness: Int = 1) {
        self.id = id
        self.createdAt = createdAt
        self.position = position
        self.soreness = soreness
    }
}
