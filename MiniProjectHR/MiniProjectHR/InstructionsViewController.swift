import UIKit
import SnapKit

class InstructionsViewController: UIViewController {
    
    let informationTextView: UITextView = {
        let textView = UITextView()
        textView.text = """
        In the (Enter Employee Details) page you should add your details and then click save\n
        In the details page are the details you saved
        """
        textView.textColor = .black
        textView.font = UIFont.systemFont(ofSize: 18)
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Instructions"
        view.backgroundColor = .white
        
        view.addSubview(informationTextView)
        setUpConstraints()
    }
    
    func setUpConstraints() {
        informationTextView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(200)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-20)
        }
    }
}
