import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var customJKView: JKCircleView!    
    
    override func viewDidLoad() {
        customJKView.animationDuration = 3
        customJKView.lineWidth = 10
        customJKView.isToRemoveLayerAfterCompletion = true
    }
    @IBAction func tapsDrawCircle(_ sender: UIButton) {
        addFullCircleView()
    }
///angle = 1 is 360 degree, angle = 0.5 is 180 degree --set as your use case 0 < angle <1
    func addFullCircleView() {
        customJKView.animateCircle(angle: 1)

    }
    @IBAction func tapsOnNext(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        navigationController?.pushViewController(vc, animated: true)
    }

}
//or
//Create a new CircleView programetically ->
//let circleView = JKCircleView(frame: CGRect(x: 50, y: 250, width: 200, height: 200))
//let test = CircleView(frame: CGRect(x: diceRoll, y: 0, width: circleWidth, height: circleHeight))
//view.addSubview(circleView)
