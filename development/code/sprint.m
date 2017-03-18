func tableView(_ tableView: NSTableView, acceptDrop info: NSDraggingInfo, row: Int, dropOperation: NSTableViewDropOperation) -> Bool {
    let data:Data = info.draggingPasteboard().data(forType: NSStringPboardType)!
    let rowIndexes:IndexSet = NSKeyedUnarchiver.unarchiveObject(with: data) as! IndexSet

    if ((tableView == todoListTableView) || (tableView == inProgressTableView)
        || (tableView == completeTableView) || (tableView == onHoldTableView)) {
        if ( (info.draggingSource() as! NSTableView) == tableView ) {
            guard let newStr = self.removeFromTable(tableView: info.draggingSource() as! NSTableView, row: rowIndexes.first!) else {
                return false
            }
            self.updateSameTable(tableView: tableView, row: rowIndexes.first!, value: newStr)
        }
        else {
            guard let newStr = self.removeFromTable(tableView: info.draggingSource() as! NSTableView, row: rowIndexes.first!) else {
                return false
            }
            let issue = self.addToTable(tableView: tableView, value: newStr)
            self.sendIssue(issue)
        }
        self.reloadAllTable()
        return true
    } else {
        return false
    }
}
