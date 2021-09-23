class RemoveSubjectI18nFromContacts < ActiveRecord::Migration[5.2]
  def change
    remove_column :contacts, :subject_i18n, :integer
  end
end
