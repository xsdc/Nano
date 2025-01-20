import SwiftUI
import MapKit

struct ContentView: View {
    
    @State var animate: Bool = false
    
    var body: some View {
        Map(
            initialPosition: .camera(
                MapCamera(
                    centerCoordinate: CLLocationCoordinate2D(
                        latitude: 35.8800,
                        longitude: 76.5150
                    ),
                    distance: 30000,
                    heading: 0,
                    pitch: 45
                )
            ),
            bounds:
                MapCameraBounds(
                    centerCoordinateBounds: MKCoordinateRegion(
                        center: CLLocationCoordinate2D(
                            latitude: 35.8800,
                            longitude: 76.5150
                        ),
                        span: MKCoordinateSpan(
                            latitudeDelta: 1,
                            longitudeDelta: 1
                        )
                    )
                ),
            interactionModes: .all
        ) {
            
        }
        .mapStyle(
            .standard(
                elevation: .realistic,
                pointsOfInterest: PointOfInterestCategories.all
            )
        )
        .safeAreaInset(edge: .bottom) {
            Button("Flyby") {
                animate.toggle()
            }
        }
        .mapCameraKeyframeAnimator(trigger: animate) { keyframes in
            KeyframeTrack(\.centerCoordinate) {
                LinearKeyframe(
                    CLLocationCoordinate2D(
                        latitude: 35.8800,
                        longitude: 76.5150
                    ),
                    duration: 2.0)
            }
            KeyframeTrack(\.distance) {
                LinearKeyframe(30000, duration: 2.0)
            }
            KeyframeTrack(\.pitch) {
                LinearKeyframe(45, duration: 2.0)
            }
            KeyframeTrack(\.heading) {
                LinearKeyframe(keyframes.heading + 360, duration: 60.0)
            }
        }
    }
    
}

#Preview {
    ContentView()
}
