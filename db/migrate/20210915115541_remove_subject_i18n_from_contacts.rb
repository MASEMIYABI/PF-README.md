class RemoveSubjectI18nFromContacts < ActiveRecord::Migration[5.2]
  def change
    remove_column :contacts, :integer, :subject_i18n
  end
end
