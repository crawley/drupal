# For Berkshelf 2, use 'site' instead of 'source'
source "https://api.berkshelf.com"
#site :opscode

cookbook 'setup', github: 'nectar-cookbooks/setup'
cookbook 'drupal', path: '.'
cookbook 'vdd', github: 'drupalprojects/vdd', rel: 'chef/cookbooks/core/vdd', branch: '8.x-1.x'
