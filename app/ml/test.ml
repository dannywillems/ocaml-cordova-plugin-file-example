let doc = Dom_html.document

let create_paragraph str =
  let p = Dom_html.createP doc in
  p##.innerHTML := Js.string str;
  p

let on_device_ready _ =
  let f = Cordova_file.t () in
  Dom.appendChild doc##.body (create_paragraph (f#application_directory));
  Dom.appendChild doc##.body (create_paragraph (f#application_storage_directory));
  Dom.appendChild doc##.body (create_paragraph (f#data_directory));
  Dom.appendChild doc##.body (create_paragraph (f#cache_directory));
  Dom.appendChild doc##.body (create_paragraph (f#external_application_storage_directory));
  Dom.appendChild doc##.body (create_paragraph (f#external_data_directory));
  Dom.appendChild doc##.body (create_paragraph (f#external_cache_directory));
  Dom.appendChild doc##.body (create_paragraph (f#external_root_directory));
  Dom.appendChild doc##.body (create_paragraph (f#temp_directory));
  Dom.appendChild doc##.body (create_paragraph (f#synced_data_directory));
  Dom.appendChild doc##.body (create_paragraph (f#documents_directory));
  Dom.appendChild doc##.body (create_paragraph (f#shared_directory));
  Js._false

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
  (Dom_html.handler on_device_ready) Js._false
