class AddPostcodeToForecasts < ActiveRecord::Migration[7.0]
  def change
    add_column :forecasts, :postcode, :string
  end
end
