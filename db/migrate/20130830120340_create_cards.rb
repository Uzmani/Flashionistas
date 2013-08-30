class CreateCards < ActiveRecord::Migration
  def change
    create_table   :cards do |t|
      t.string     :definition
      t.string     :answer
      t.belongs_to :deck
    end
  end
end
