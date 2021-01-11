class Import < ApplicationRecord
  after_create_commit do
    broadcast_replace_to(:import_count, target: 'import_count', partial: 'dashboards/imports/count', locals: { import_count: Import.count })
  end
end
