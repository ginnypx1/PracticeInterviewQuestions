import UIKit

class ActorViewController: UIViewController {
    
    @IBOutlet weak var actorNameLabel: UILabel!
    @IBOutlet weak var actorImageView: UIImageView!
    @IBOutlet weak var actorBio: UITextView!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = NSUserDefaults.standardUserDefaults()
        
        if let actorName = defaults.stringForKey("ActorName") {
            actorNameLabel.text = actorName
        }
        if let actorImageName = defaults.stringForKey("ActorImageName") {
            actorImageView.image = UIImage(named: actorImageName)
        }
        if let actorBioText = defaults.stringForKey("ActorBio") {
            actorBio.text = actorBioText
        }
    }
}