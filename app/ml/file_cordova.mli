(* -------------------------------------------------------------------------- *)
(* Binding to the Javascript object *)
(* !! Read the documentation to know which directory are available on your
 * plateform !!
 *)
class file : Ojs.t ->
  object
    inherit Ojs.obj
    method application_directory                  : string
    method application_storage_directory          : string
    method data_directory                         : string
    method cache_directory                        : string
    method external_application_storage_directory : string
    method external_data_directory                : string
    method external_cache_directory               : string
    method external_root_directory                : string
    method temp_directory                         : string
    method synced_data_directory                  : string
    method documents_directory                    : string
    method shared_directory                       : string
  end
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
val t : unit -> file
[@@js.get "cordova.file"]
(* -------------------------------------------------------------------------- *)
