//
//  BodyFatViewController.swift
//  FitKal
//
//  Created by macbookair on 27.04.2023.
//

import UIKit

class BodyFatViewController: UIViewController {

    var incomingResult = Double()
    var incomingResultWoman = Double()
    var incomingResultAge = Double()
    var incomingResultLeanBody = Double()
    var incomingResultBodyFatWeight = Double()
    var incomingChose = Int()
    
    
    @IBOutlet weak var bodyFatLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var leanBodyWhtLabel: UILabel!
    @IBOutlet weak var fatWhtLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var newResul = String(format: "%.1f", incomingResult)
        bodyFatLabel.text! = "% \(newResul)"
        
        var newIncomingResultLeanBody = String(format: "%.1f", incomingResultLeanBody)
        leanBodyWhtLabel.text! = "\(newIncomingResultLeanBody)"
        
        var newIncomingResultBodyFatWeight = String(format: "%.1f", incomingResultBodyFatWeight)
        fatWhtLabel.text! = "\(newIncomingResultBodyFatWeight)"
        
        
        
        if incomingChose == 1 {
            
        

        if incomingResultAge >= 18 && incomingResultAge <= 20 {
            if incomingResult < 6.2 {
                descriptionLabel.text! = "Yağ oranınız çok düşük"
            } else if incomingResult >= 6.2 && incomingResult <= 12.5 {
                descriptionLabel.text! = "Yağ oranınız normal"
            } else {
                descriptionLabel.text! = "Yağ oranınız Yüksek"
            }
        } else if incomingResultAge >= 21 && incomingResultAge <= 25 {
            if incomingResult < 7.3 {
                descriptionLabel.text! = "Yağ oranınız çok düşük"
            } else if incomingResult >= 7.3 && incomingResult <= 13.6 {
                descriptionLabel.text! = "Yağ oranınız normal"
            } else if incomingResult > 13.6  {
                descriptionLabel.text! = "Yağ oranınız yüksek"
            }
            
        } else if incomingResultAge >= 26 && incomingResultAge <= 30 {
            if incomingResult < 10.6 {
                descriptionLabel.text! = "Yağ oranınız çok düşük"
            } else if incomingResult >= 10.6 && incomingResult <= 16.4 {
                descriptionLabel.text! = "Yağ oranınız normal"
            } else if incomingResult > 16.4 {
                descriptionLabel.text! = "Yağ oranınız yüksek"
            }
        } else if incomingResultAge >= 31 && incomingResultAge <= 35 {
            if incomingResult < 11.7 {
                descriptionLabel.text! = "Yağ oranınız çok düşük"
            } else if incomingResult >= 11.7 && incomingResult <= 17.5 {
                descriptionLabel.text! = "Yağ oranınız normal"
            } else if incomingResult > 17.5 {
                descriptionLabel.text! = "Yağ oranınız yüksek"
            }
        } else if incomingResultAge >= 36 && incomingResultAge <= 40 {
            if incomingResult < 12.7 {
                descriptionLabel.text! = "Yağ oranınız çok düşük"
            } else if incomingResult >= 12.7 && incomingResult <= 18.6 {
                descriptionLabel.text! = "Yağ oranınız normal"
            } else if incomingResult > 18.6  {
                descriptionLabel.text! = "Yağ oranınız yüksek"
            }
        } else if incomingResultAge >= 41 && incomingResultAge <= 45 {
            if incomingResult < 15.9 {
                descriptionLabel.text! = "Yağ oranınız çok düşük"
            } else if incomingResult >= 15.9 && incomingResult <= 21.3 {
                descriptionLabel.text! = "Yağ oranınız normal"
            } else if incomingResult > 21.3 {
                descriptionLabel.text! = "Yağ oranınız yüksek"
            }

        
    }
        
        else if incomingResultAge >= 46 && incomingResultAge <= 50 {
            if incomingResult < 16.9 {
                descriptionLabel.text! = "Yağ oranınız çok düşük"
            } else if incomingResult >= 16.9 && incomingResult <= 22.4 {
                descriptionLabel.text! = "Yağ oranınız normal"
            } else if incomingResult > 22.4 {
                descriptionLabel.text! = "Yağ oranınız yüksek"
            }
            
            else if incomingResultAge >= 51 && incomingResultAge <= 55 {
                if incomingResult < 18.0 {
                    descriptionLabel.text! = "Yağ oranınız çok düşük"
                } else if incomingResult >= 18.0 && incomingResult <= 23.4 {
                    descriptionLabel.text! = "Yağ oranınız normal"
                } else if incomingResult > 23.4 {
                    descriptionLabel.text! = "Yağ oranınız yüksek"
                }

            
        }
            
            else if incomingResultAge >= 56 {
                if incomingResult < 19.1 {
                    descriptionLabel.text! = "Yağ oranınız çok düşük"
                } else if incomingResult >= 19.1 && incomingResult <= 24.5 {
                    descriptionLabel.text! = "Yağ oranınız normal"
                } else if incomingResult > 24.5 {
                    descriptionLabel.text! = "Yağ oranınız yüksek"
                }

            
        }

        
    }
    

}
        
        
        
        if incomingChose == 2 {
            
        

        if incomingResultAge >= 18 && incomingResultAge <= 20 {
            if incomingResult < 17.7 {
                descriptionLabel.text! = "Yağ oranınız çok düşük"
            } else if incomingResult >= 17.7 && incomingResult <= 21.5 {
                descriptionLabel.text! = "Yağ oranınız normal"
            } else {
                descriptionLabel.text! = "Yağ oranınız Yüksek"
            }
        } else if incomingResultAge >= 21 && incomingResultAge <= 25 {
            if incomingResult < 20.3 {
                descriptionLabel.text! = "Yağ oranınız çok düşük"
            } else if incomingResult >= 20.3 && incomingResult <= 23.8 {
                descriptionLabel.text! = "Yağ oranınız normal"
            } else if incomingResult > 23.8  {
                descriptionLabel.text! = "Yağ oranınız yüksek"
            }
            
        } else if incomingResultAge >= 26 && incomingResultAge <= 30 {
            if incomingResult < 20.9 {
                descriptionLabel.text! = "Yağ oranınız çok düşük"
            } else if incomingResult >= 20.9 && incomingResult <= 24.5 {
                descriptionLabel.text! = "Yağ oranınız normal"
            } else if incomingResult > 24.5 {
                descriptionLabel.text! = "Yağ oranınız yüksek"
            }
        } else if incomingResultAge >= 31 && incomingResultAge <= 35 {
            if incomingResult < 21.5 {
                descriptionLabel.text! = "Yağ oranınız çok düşük"
            } else if incomingResult >= 21.5 && incomingResult <= 25.1 {
                descriptionLabel.text! = "Yağ oranınız normal"
            } else if incomingResult > 25.1 {
                descriptionLabel.text! = "Yağ oranınız yüksek"
            }
        } else if incomingResultAge >= 36 && incomingResultAge <= 40 {
            if incomingResult < 24.0 {
                descriptionLabel.text! = "Yağ oranınız çok düşük"
            } else if incomingResult >= 24.0 && incomingResult <= 27.3 {
                descriptionLabel.text! = "Yağ oranınız normal"
            } else if incomingResult > 27.3  {
                descriptionLabel.text! = "Yağ oranınız yüksek"
            }
        } else if incomingResultAge >= 41 && incomingResultAge <= 45 {
            if incomingResult < 24.6 {
                descriptionLabel.text! = "Yağ oranınız çok düşük"
            } else if incomingResult >= 24.6 && incomingResult <= 27.9 {
                descriptionLabel.text! = "Yağ oranınız normal"
            } else if incomingResult > 27.9 {
                descriptionLabel.text! = "Yağ oranınız yüksek"
            }

        
    }
        
        else if incomingResultAge >= 46 && incomingResultAge <= 50 {
            if incomingResult < 25.2 {
                descriptionLabel.text! = "Yağ oranınız çok düşük"
            } else if incomingResult >= 25.2 && incomingResult <= 28.6 {
                descriptionLabel.text! = "Yağ oranınız normal"
            } else if incomingResult > 28.6 {
                descriptionLabel.text! = "Yağ oranınız yüksek"
            }
            
            else if incomingResultAge >= 51 && incomingResultAge <= 55 {
                if incomingResult < 25.9 {
                    descriptionLabel.text! = "Yağ oranınız çok düşük"
                } else if incomingResult >= 25.9 && incomingResult <= 29.2 {
                    descriptionLabel.text! = "Yağ oranınız normal"
                } else if incomingResult > 29.2 {
                    descriptionLabel.text! = "Yağ oranınız yüksek"
                }

            
        }
            
            else if incomingResultAge >= 56 {
                if incomingResult < 26.5 {
                    descriptionLabel.text! = "Yağ oranınız çok düşük"
                } else if incomingResult >= 26.5 && incomingResult <= 29.8 {
                    descriptionLabel.text! = "Yağ oranınız normal"
                } else if incomingResult > 29.8 {
                    descriptionLabel.text! = "Yağ oranınız yüksek"
                }

            
        }

        
    }
    



}
    
    
}
}


