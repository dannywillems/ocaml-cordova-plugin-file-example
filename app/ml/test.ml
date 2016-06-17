let doc = Dom_html.document

let create_paragraph str =
  let p = Dom_html.createP doc in
  p##.innerHTML := Js.string str;
  p

let on_device_ready _ =
  Dom.appendChild doc##.body (create_paragraph
  (Cordova_file.application_directory ()));
  Dom.appendChild doc##.body (create_paragraph
  (Cordova_file.application_storage_directory ()));
  Dom.appendChild doc##.body (create_paragraph (Cordova_file.data_directory ()));
  Dom.appendChild doc##.body (create_paragraph (Cordova_file.cache_directory ()));
  Dom.appendChild doc##.body (create_paragraph
  (Cordova_file.external_application_storage_directory ()));
  Dom.appendChild doc##.body (create_paragraph
  (Cordova_file.external_data_directory ()));
  Dom.appendChild doc##.body (create_paragraph
  (Cordova_file.external_cache_directory ()));
  Dom.appendChild doc##.body (create_paragraph
  (Cordova_file.external_root_directory ()));
  Dom.appendChild doc##.body (create_paragraph (Cordova_file.temp_directory ()));
  Dom.appendChild doc##.body (create_paragraph
  (Cordova_file.synced_data_directory ()));
  Dom.appendChild doc##.body (create_paragraph (Cordova_file.documents_directory
  ()));
  Dom.appendChild doc##.body (create_paragraph (Cordova_file.shared_directory ()))

let _ =
  Cordova.Event.device_ready on_device_ready
