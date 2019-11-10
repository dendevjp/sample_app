class Taskitem < ApplicationRecord
  acts_as_paranoid
  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Taskitem.where(['itemcharge LIKE ?', "%#{search}%"])
    else
      Taskitem.all #全て表示。
    end
  end
end
