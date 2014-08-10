node.default["vm"]["ip"] = "192.168.44.44"
node.default["vm"]["memory"] = "1024"
node.default["vm"]["synced_folders"] = [
                                        { "host_path" => "data/",
                                          "guest_path" => "/var/www",
                                          "type" => "default" 
                                        } ] 
node.default["vm"]["forwarded_ports"] = []

node.default["vdd"]["sites"]["drupal7"]["account_name"] = "root"
node.default["vdd"]["sites"]["drupal7"]["account_pass"] = "root"
node.default["vdd"]["sites"]["drupal7"]["account_mail"] = "box@example.com"
node.default["vdd"]["sites"]["drupal7"]["site_name"] = "Drupal 7"
node.default["vdd"]["sites"]["drupal7"]["site_mail"] = "box@example.com"
node.default["vdd"]["sites"]["drupal7"]["vhost"]["document_root"] = "drupal7"
node.default["vdd"]["sites"]["drupal7"]["vhost"]["url"] = "drupal7.dev"
node.default["vdd"]["sites"]["drupal7"]["vhost"]["alias"] = ["www.drupal7.dev"]

node.default["vdd"]["sites"]["drupal8y"]["account_name"] = "root"
node.default["vdd"]["sites"]["drupal8"]["account_pass"] = "root"
node.default["vdd"]["sites"]["drupal8"]["account_mail"] = "box@example.com"
node.default["vdd"]["sites"]["drupal8"]["site_name"] = "Drupal 8"
node.default["vdd"]["sites"]["drupal8"]["site_mail"] = "box@example.com"
node.default["vdd"]["sites"]["drupal8"]["vhost"]["document_root"] = "drupal8"
node.default["vdd"]["sites"]["drupal8"]["vhost"]["url"] = "drupal8.dev"
node.default["vdd"]["sites"]["drupal8"]["vhost"]["alias"] = ["www.drupal8.dev"]
