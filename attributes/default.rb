node.default["vm"]["ip"] = "192.168.44.44"
node.default["vm"]["memory"] = "1024"
node.default["vm"]["synced_folders"] = [
                                        { "host_path" => "data/",
                                          "guest_path" => "/var/www",
                                          "type" => "default" 
                                        } ] 
node.default["vm"]["forwarded_ports"] = []

node.default["drupal"]["sites"] = {}

node.default["vdd"]["sites"] = {
  "drupal7" : { 
    "account_name" => "root",
    "account_pass" => "root",
    "account_mail" => "box@example.com",
    "site_name" => "Drupal 7",
    "site_mail" => "box@example.com",
    "vhost" => {
      "document_root" => "drupal7",
      "url" => "drupal7.dev",
      "alias" => "www.drupal7.dev"
    }
  },
  "drupal8" : { 
    "account_name" => "root",
    "account_pass" => "root",
    "account_mail" => "box@example.com",
    "site_name" => "Drupal 8",
    "site_mail" => "box@example.com",
    "vhost" => {
      "document_root" => "drupal8",
      "url" => "drupal8.dev",
      "alias" => "www.drupal8.dev"
    }
  }
}
