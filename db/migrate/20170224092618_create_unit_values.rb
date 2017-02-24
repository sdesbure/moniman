class CreateUnitValues < ActiveRecord::Migration[5.0]
  def change
    create_table :unit_values do |t|
      t.string :name
      t.string :isin
      t.string :fund_url
      t.string :category
      t.string :index
      t.string :investment_style

      t.timestamps
    end
  end
end
