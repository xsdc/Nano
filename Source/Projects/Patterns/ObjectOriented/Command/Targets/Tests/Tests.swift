import Foundation
import Testing
import CommandMocks

@testable import CommandConcretions

struct Tests {    
    @Test func testMultipleInvokers() async {
        let viewModel = CarouselViewModel(imagePaths: ["image1", "image2", "image3", "image4"])
        let view = CarouselView(viewModel: viewModel)

        // Tap invoker
        
        #expect(viewModel.currentIndex == 0)

        view.rightArrowButtonTapped()  // Increment carousel index
        
        #expect(viewModel.currentIndex == 1)
        
        view.leftArrowButtonTapped() // Decrement carousel index
        
        #expect(viewModel.currentIndex == 0)
        
        view.buttonTappedForIndex(1)// Set carousel index to 1
        
        #expect(viewModel.currentIndex == 1)

        // Keyboard invoker

        view.rightArrowKeyPressed() // Increment carousel index
        
        #expect(viewModel.currentIndex == 2)
        
        view.leftArrowKeyPressed() // Decrement carousel index
        
        #expect(viewModel.currentIndex == 1)

        // Timer invoker

        view.simulateTimerStart() // Increments carousel index every 5 seconds
    }
}
