import UIKit
import AVFoundation

class secondViewController: UIViewController {
    
    var player:AVAudioPlayer = AVAudioPlayer()
    
    @IBAction func play(_ sender: Any) {
        player.play()
    }
    
    @IBAction func pause(_ sender: Any) {
        player.pause()
    }
    
    @IBAction func replay(_ sender: Any) {
        player.currentTime = 0
    }
    
    @IBAction func menu(_ sender: Any) {
        player.stop()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do
        {
            let audioPath = Bundle.main.path(forResource: "zero", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf : NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch
        {
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
