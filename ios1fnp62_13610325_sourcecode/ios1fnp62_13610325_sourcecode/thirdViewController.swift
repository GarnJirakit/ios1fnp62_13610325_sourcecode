import UIKit
import AVFoundation

class thirdViewController: UIViewController {
    
    var player2:AVAudioPlayer = AVAudioPlayer()
    
    @IBAction func play(_ sender: Any) {
        player2.play()
    }
    
    @IBAction func pause(_ sender: Any) {
        player2.pause()
    }
    
    @IBAction func replay(_ sender: Any) {
        player2.currentTime = 0
    }
    
    @IBAction func stop(_ sender: Any) {
        player2.stop()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do
        {
            let audioPath = Bundle.main.path(forResource: "Th", ofType: "mp3")
            try player2 = AVAudioPlayer(contentsOf : NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch
        {
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
