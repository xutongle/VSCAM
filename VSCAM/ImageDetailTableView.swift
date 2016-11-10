

import UIKit

class ImageDetailTableView: BaseTableView {

    override init(_ parentViewController: UIViewController) {
        super.init(parentViewController)
        onInit()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func onInit() {
        //添加数据
        items.append(ImageDetailTableViewItemHead())
        //items.append(MineTableViewItemOrder())
        //items.append(MineTableViewItemJoin())

        //UITableView设置
        self.delegate = self
        self.dataSource = self

        self.showsVerticalScrollIndicator = false
        self.bounces = true
        self.alwaysBounceVertical = true
        self.isScrollEnabled = true
        self.backgroundColor = UIColor.white
        self.separatorColor = UIColor.clear
        self.tableFooterView = UIView(frame: CGRect.zero)
        self.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        self.layoutMargins = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)

        addReuseIdentifier()
    }

    //MARK:- tableview
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)

        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                break
            default:
                break
            }
            break
        default:
            break
        }
    }
}

