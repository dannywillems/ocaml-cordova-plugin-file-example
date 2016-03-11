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
val file : unit -> file Js.t
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
(* Type for different storage type *)
type storage
(* Get the directory in a string depending on the storage type using the ocaml
 * type storage.
 *)
val storage_to_str : storage -> string

val application_directory : storage
val application_storage_directory : storage
val data_directory : storage
val cache_directory : storage
val external_application_storage_directory : storage
val external_data_directory : storage
val external_cache_directory : storage
val external_root_directory : storage
val temp_directory : storage
val synced_data_directory : storage
val documents_directory : storage
val shared_directory : storage
(* -------------------------------------------------------------------------- *)
