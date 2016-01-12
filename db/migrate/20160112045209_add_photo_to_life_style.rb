class AddPhotoToLifeStyle < ActiveRecord::Migration
  def up
    add_attachment :life_styles, :photo
  end

  def down
    remove_attachment :life_styles, :photo
  end

end
