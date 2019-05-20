

import UIKit

class LeagueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func NextBtnClicked(_ sender: ButtonBoarder) {
        
        performSegue(withIdentifier: "goToSkillSegue", sender: self)
    }
    

}
