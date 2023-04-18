import Foundation

protocol Animatable {
    var numberOfFrames: Int { get }
    func animate()
}

class Image: Animatable {
    var imageName: String
    var numberOfFrames: Int
    
    init(imageName: String, numberOfFrames: Int) {
        self.imageName = imageName
        self.numberOfFrames = numberOfFrames
    }
    
    func animate() {
        print("Animating \(numberOfFrames) frames of image \(imageName)")
    }
}

class Movie: Animatable {
    var movieName: String
    var duration: Double
    var numberOfFrames: Int
    
    init(movieName: String, duration: Double, numberOfFrames: Int) {
        self.movieName = movieName
        self.duration = duration
        self.numberOfFrames = numberOfFrames
    }
    
    func animate() {
        print("Animating \(numberOfFrames) frames of movie \(movieName), which has a duration of \(duration) seconds.")
    }
}

let animatables: [Animatable] = [
    Image(imageName: "sunset.jpg", numberOfFrames: 30),
    Image(imageName: "beach.png", numberOfFrames: 24),
    Movie(movieName: "Jurassic Park", duration: 127.5, numberOfFrames: 2400),
    Movie(movieName: "The Matrix", duration: 136.2, numberOfFrames: 2400)
]

for animatable in animatables {
    animatable.animate()
}
