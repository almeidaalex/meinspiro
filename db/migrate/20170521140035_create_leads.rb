class CreateLeads < ActiveRecord::Migration[5.1]
  def change
    create_table :leads do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :company
      t.string :companySegment
      t.string :userIP
      t.string :string

      t.timestamps
    end
  end
end
