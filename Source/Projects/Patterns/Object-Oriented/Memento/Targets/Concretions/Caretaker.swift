import MementoAbstractions

class BagManager {
    private var bag: Bag
    private var undoStates: [BagState] = []

    init(bag: Bag = Bag()) {
        self.bag = bag
    }

    var isAbleToUndo: Bool {
        !undoStates.isEmpty
    }

    func undo() {
        guard let lastUndoState = undoStates.popLast() else { return }
        bag.restore(from: lastUndoState)
    }

    func removeProduct(withID id: String) {
        undoStates.append(bag.save())
        bag.removeProduct(withID: id)
    }
}
