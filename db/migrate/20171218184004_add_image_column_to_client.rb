class AddImageColumnToClient < ActiveRecord::Migration[5.0]
	def up
		add_attachment :clients, :image
	end
	def down
		remove_attachment :clients, :image
	end
end
