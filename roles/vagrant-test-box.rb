# Name of the role should match the name of the file
name "vagrant-test-box"

override_attributes(
	"mysql" => {
		"server_root_password" => 'passw0rd',
		"server_repl_password" => 'passw0rd',
		"server_debian_password" => 'passw0rd'
	}
)
# Run list function we mentioned earlier
run_list(
        "recipe[apt]",
        "recipe[openssl]",
        "recipe[apache2]",
        "recipe[apache2::mod_php5]",
        "recipe[apache2::mod_rewrite]",
        "recipe[mysql::server]",
        "recipe[php]",
        "recipe[php::module_mysql]",
        "recipe[php::module_curl]",
        #"recipe[php::module_mcrypt]",
        "recipe[php::module_gd]",
        "recipe[memcached]",
        "recipe[apache2::vhosts]"
)

