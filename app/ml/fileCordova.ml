(* -------------------------------------------------------------------------- *)
(* Binding to the Javascript object *)
(* !! Read the documentation to know which directory are available on your
 * plateform !!
 *)
class type file =
  object
    method applicationDirectory : Js.js_string Js.t Js.readonly_prop
    method applicationStorageDirectory : Js.js_string Js.t Js.readonly_prop
    method dataDirectory : Js.js_string Js.t Js.readonly_prop
    method cacheDirectory : Js.js_string Js.t Js.readonly_prop
    method externalApplicationStorageDirectory : Js.js_string Js.t Js.readonly_prop
    method externalDataDirectory : Js.js_string Js.t Js.readonly_prop
    method externalCacheDirectory : Js.js_string Js.t Js.readonly_prop
    method externalRootDirectory : Js.js_string Js.t Js.readonly_prop
    method tempDirectory : Js.js_string Js.t Js.readonly_prop
    method syncedDataDirectory : Js.js_string Js.t Js.readonly_prop
    method documentsDirectory : Js.js_string Js.t Js.readonly_prop
    method sharedDirectory : Js.js_string Js.t Js.readonly_prop
  end
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
let file () : file Js.t = Js.Unsafe.js_expr ("cordova.file")
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
(* Type for different storage type *)
type storage =
  | Application_directory
  | Application_storage_directory
  | Data_directory
  | Cache_directory
  | External_application_storage_directory
  | External_data_directory
  | External_cache_directory
  | External_root_directory
  | Temp_directory
  | Synced_data_directory
  | Documents_directory
  | Shared_directory

let application_directory = Application_directory
let application_storage_directory = Application_storage_directory
let data_directory = Data_directory
let cache_directory = Cache_directory
let external_application_storage_directory = External_application_storage_directory
let external_data_directory = External_data_directory
let external_cache_directory = External_cache_directory
let external_root_directory = External_root_directory
let temp_directory = Temp_directory
let synced_data_directory = Synced_data_directory
let documents_directory = Documents_directory
let shared_directory = Shared_directory
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
let storage_to_str s =
  let f = file () in match s with
  | Application_directory -> Js.to_string f##.applicationDirectory
  | Application_storage_directory -> Js.to_string f##.applicationStorageDirectory
  | Data_directory -> Js.to_string f##.dataDirectory
  | Cache_directory -> Js.to_string f##.cacheDirectory
  | External_application_storage_directory
    -> Js.to_string f##.externalApplicationStorageDirectory
  | External_data_directory -> Js.to_string f##.externalDataDirectory
  | External_cache_directory -> Js.to_string f##.externalCacheDirectory
  | External_root_directory -> Js.to_string f##.externalRootDirectory
  | Temp_directory -> Js.to_string f##.tempDirectory
  | Synced_data_directory -> Js.to_string f##.syncedDataDirectory
  | Documents_directory -> Js.to_string f##.documentsDirectory
  | Shared_directory -> Js.to_string f##.sharedDirectory
(* -------------------------------------------------------------------------- *)
