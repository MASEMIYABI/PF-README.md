class AddSubjectI18nToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :subject_i18n, :integer
  end
end
