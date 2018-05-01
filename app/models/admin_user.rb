class AdminUser < ApplicationRecord

    #self.table_name = "admin_users"  - #not needed if Model and table name a matching (except singlular-plural)
    has_and_belongs_to_many :pages

    has_many :section_edits
    has_many :sections, :through => :section_edits
end
