import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    
    var count = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pulus(_ sender: Any) {
        
        count = count + 1
        label.text = String(count)
        
        if count == 5 {
            
          count = 3
            
          //performSegue(withIdentifier: "next", sender: nil)
            
            
            
            let nextVC = storyboard?.instantiateViewController(identifier: "next")as!NextViewController
            nextVC.count2 = count
            navigationController?.pushViewController(nextVC, animated: true)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! NextViewController
        nextVC.count2 = count
    }
    
    
}

