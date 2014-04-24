class couchdb(
  $download = 'http://mir2.ovh.net/ftp.apache.org/dist/couchdb/source/1.5.1/apache-couchdb-1.5.1.tar.gz',
  $cwd = '/usr/local/src',
  $filename = 'apache-couchdb-1.5.1.tar.gz',
  $extension = '.tar.gz',
  $foldername = 'apache-couchdb-1.5.1',
  $buildopts = '',
  $rm_build_folder = false,
  $bind = '127.0.0.1',
  $secure_rewrites = true,
  $basic_realm = undef,
  $require_valid_user = false,
  $admin_passwd = undef,
  $database_dir = '/usr/local/var/lib/couchdb',
  $view_index_dir = '/usr/local/var/lib/couchdb',
  $log_file = '/usr/local/var/log/couchdb/couch.log',
  $log_level = 'error',
  $os_process_limit = '200',
  $uuids = 'utc_random',
  $cert_path = '/usr/local/etc/certs',
  $ulimit = '65536',
  $delayed_commits = false
) {

  include couchdb::package,
          couchdb::install,
          couchdb::service,
          couchdb::ssl
}
