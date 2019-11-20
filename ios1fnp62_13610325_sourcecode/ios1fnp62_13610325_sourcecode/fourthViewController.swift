import UIKit
import AVFoundation

class fourthViewController: UIViewController {
    
    var player3:AVAudioPlayer = AVAudioPlayer()
    
    @IBAction func play(_ sender: Any) {
        player3.play()
    }
    
    @IBAction func pause(_ sender: Any) {
        player3.pause()
    }
    
    @IBAction func replay(_ sender: Any) {
        player3.currentTime = 0
    }
    
    @IBAction func menu(_ sender: Any) {
        player3.stop()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do
        {
            let audioPath = Bundle.main.path(forResource: "Fr", ofType: "mp3")
            try player3 = AVAudioPlayer(contentsOf : NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch
        {
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
