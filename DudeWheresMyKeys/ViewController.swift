
import UIKit
import ARCL
import CoreLocation


class ViewController: UIViewController {

    
    var sceneLocationView = SceneLocationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        sceneLocationView.run()
        view.addSubview(sceneLocationView)
        
    }


    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        sceneLocationView.frame = view.bounds
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        let pingGeolocation = CLLocation(coordinate: CLLocationCoordinate2D(latitude: 36.114704, longitude: -115.201462), altitude: 60)
        let lostItem = UIImage(named: "keys")!
        let annotationNode = LocationAnnotationNode(location: pingGeolocation, image: lostItem)
        
        
        sceneLocationView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)

        
    }
}

//You lost your keys in the Las Vegas Strip! This app points on your Camera to where you lost your keys
//Need to change image to 3D and also allow for walking around the 3D image
    //Think Mapbox Scenekit SDK with floating astronaut over geolocation...
//Needs front end component
//Needs a "receiver" whose sole purpose is to ping the geolocation of your lost item
//Might be good to look at Mapbox and figure out how to render 3D area of city lost item is in and point out the radius where your item may be 
