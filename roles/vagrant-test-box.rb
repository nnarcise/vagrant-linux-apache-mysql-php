# Name of the role should match the name of the file
name "vagrant-test-box"

override_attributes(
	"mysql" => {
		"server_root_password" => 'n2baegpw',
		"server_repl_password" => 'n2baegpw',
		"server_debian_password" => 'n2baegpw'
	}
)
# Run list function we mentioned earlier
run_list(
        "recipe[apt]",
        "recipe[openssl]",
        "recipe[apache2]",
        "recipe[apache2::mod_php5]",
        "recipe[apache2::mod_rewrite]",
        #"recipe[mysql]",
        "recipe[mysql::server]",
        "recipe[php]",
        "recipe[php::module_mysql]",
        "recipe[memcached]",
        "recipe[apache2::vhosts]"
)

