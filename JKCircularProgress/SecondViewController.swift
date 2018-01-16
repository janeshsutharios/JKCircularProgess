import UIKit
class SecondViewController: UIViewController {

    @IBOutlet weak var staticView: JKCircleView!
    @IBOutlet weak var repeatView: JKCircleView!
    @IBOutlet weak var halfCircleView: JKCircleView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setStaticView()
        setRepeatableView()
        setHalfView()
    }


    func setStaticView() {
        staticView.animationDuration = 1
        staticView.lineWidth = 5
        staticView.animateCircle(angle: 0.5)
        staticView.isToRemoveLayerAfterCompletion = false

    }



    func setRepeatableView() {
        repeatView.animationDuration = 1
        repeatView.lineWidth = 6
        repeatView.animateCircle(angle: 1.0)
        repeatView.isToRemoveLayerAfterCompletion = false
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(repeatThis), userInfo: nil, repeats: true)
    }
    func setHalfView() {
        halfCircleView.animationDuration = 1
        halfCircleView.lineWidth = 7
        halfCircleView.animateCircle(angle: 1.0)
        halfCircleView.isToRemoveLayerAfterCompletion = false
    }
    @objc func repeatThis() {
        repeatView.animateCircle(angle: 1.0)

    }
}
