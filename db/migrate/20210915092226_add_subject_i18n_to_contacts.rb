class AddSubjectI18nToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :integer, :subject_i18n
  end
end
