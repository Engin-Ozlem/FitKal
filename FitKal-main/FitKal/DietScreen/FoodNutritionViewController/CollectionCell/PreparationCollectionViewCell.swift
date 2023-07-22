//
//  PreparationCollectionViewCell.swift
//  FitKal
//
//  Created by macbookair on 20.04.2023.
//

import UIKit

/// Class for preparation collection view cell.
final class PreparationCollectionViewCell: UICollectionViewCell
{

    static let identifier = "preparationCollectionViewCell"
    @IBOutlet weak var stepsCountView: UIView!
    @IBOutlet weak var countNumber: UILabel!
    @IBOutlet weak var ProcedureText: UILabel!

    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
        
    }

    public func configureList(countNumber: String, procedureText: String)
    {
        self.countNumber.text = countNumber
        self.ProcedureText.text = procedureText
    }
}

