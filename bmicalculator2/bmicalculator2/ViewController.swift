import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var HeightText: UITextField!
    
    @IBOutlet weak var weightText: UITextField!
    
    @IBOutlet weak var calculateBMI: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateBottonPress(_ sender: Any) {
        // Get the values from the text fields
        let weightString = weightText.text ?? ""
        let weight = Double(weightString) ?? 0
        
        
        let heightString = HeightText.text ?? ""
        let height = Double(heightString) ?? 0
        
        
        let bmi = weight / (height * height)
    
        calculateBMI.text = "Bmi is: \(bmi)"
    }
}

