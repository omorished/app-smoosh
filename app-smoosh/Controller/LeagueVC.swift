

import UIKit

class LeagueVC: UIViewController {

    //variables
    var player: Player!
    
    //UI connections
    @IBOutlet weak var nextBtn: ButtonBoarder!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextBtn.isEnabled = false
        player = Player()
        

    }
    
    @IBAction func NextBtnClicked(_ sender: ButtonBoarder) {
        
        performSegue(withIdentifier: "goToSkillSegue", sender: self)
    }
    
    @IBAction func MensBtnClicked(_ sender: ButtonBoarder) {
        leagueType(is: "Mens")
    }
    
    @IBAction func WomensBtnClicked(_ sender: ButtonBoarder) {
        leagueType(is: "Womens")
    }
    
    @IBAction func CoedBtnClicked(_ sender: ButtonBoarder) {
        leagueType(is: "Co-ed")
    }
    
    
    func leagueType(is leagueType: String) {
        
        player.playerType = leagueType
        nextBtn.isEnabled = true
    }
    
    

}
