module TaskitemsHelper
    def conversion_status(statusid)
      hash = {"1" => "新規", "2" => "調査中", "3" => "品質レビュー", "4" => "部長レビュー", "5" => "完了"}
      return hash[statusid]
    end
end
