class CreateFormMails < ActiveRecord::Migration[6.0]
  def change
    create_table :form_mails do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.text :text

      t.timestamps
    end
  end
end
