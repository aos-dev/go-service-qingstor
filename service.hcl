name = "qingstor"

namespace "service" {

  new {
    required = ["credential"]
    optional = ["endpoint"]
  }

  op "create" {
    required = ["location"]
  }
  op "delete" {
    optional = ["location"]
  }
  op "get" {
    optional = ["location"]
  }
  op "list" {
    optional = ["location"]
  }
}
namespace "storage" {
  implement = ["copier", "dir_lister", "index_segmenter", "mover", "prefix_lister", "prefix_segments_lister", "reacher", "segmenter", "statistician"]

  new {
    required = ["name"]
    optional = ["disable_uri_cleaning", "location", "work_dir"]
  }

  op "reach" {
    required = ["expire"]
  }
  op "read" {
    optional = ["offset", "read_callback_func", "size"]
  }
  op "write" {
    required = ["size"]
    optional = ["content_md5", "storage_class"]
  }
}

pairs {

  pair "disable_uri_cleaning" {
    type = "bool"
  }
}

infos {

  info "object" "meta" "storage-class" {
    type = "string"
  }
}
