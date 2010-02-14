class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string    :login,               :null => false
      t.string    :name
      t.string    :email,               :null => false

      t.string    :crypted_password,    :null => false, :default => ""                # optional, see below
      t.string    :password_salt,       :null => false, :default => ""                # optional, but highly recommended
      t.string    :persistence_token,   :null => false, :default => ""                # required
      t.string    :single_access_token, :null => false, :default => ""                # optional, see Authlogic::Session::Params
      t.string    :perishable_token, :default => "", :null => false  

      t.integer   :login_count,         :null => false, :default => 0 # optional, see Authlogic::Session::MagicColumns
      t.integer   :failed_login_count,  :null => false, :default => 0 # optional, see Authlogic::Session::MagicColumns
      t.datetime  :last_request_at                                    # optional, see Authlogic::Session::MagicColumns
      t.datetime  :current_login_at                                   # optional, see Authlogic::Session::MagicColumns
      t.datetime  :last_login_at                                      # optional, see Authlogic::Session::MagicColumns
    end
  end

  def self.down
    drop_table :users
  end
end
