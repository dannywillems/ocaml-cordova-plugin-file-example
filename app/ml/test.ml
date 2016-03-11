let doc = Dom_html.document

let create_paragraph str =
  let p = Dom_html.createP doc in
  p##.innerHTML := Js.string str;
  p

let on_device_ready _ =
  Dom.appendChild doc##.body (create_paragraph (FileCordova.storage_to_str
  FileCordova.application_directory));
  Dom.appendChild doc##.body (create_paragraph (FileCordova.storage_to_str
  FileCordova.application_storage_directory));
  Dom.appendChild doc##.body (create_paragraph (FileCordova.storage_to_str
  FileCordova.data_directory));
  Dom.appendChild doc##.body (create_paragraph (FileCordova.storage_to_str
  FileCordova.cache_directory));
  Dom.appendChild doc##.body (create_paragraph (FileCordova.storage_to_str
  FileCordova.external_application_storage_directory));
  Dom.appendChild doc##.body (create_paragraph (FileCordova.storage_to_str
  FileCordova.external_data_directory));
  Dom.appendChild doc##.body (create_paragraph (FileCordova.storage_to_str
  FileCordova.external_cache_directory));
  Dom.appendChild doc##.body (create_paragraph (FileCordova.storage_to_str
  FileCordova.external_root_directory));
  Dom.appendChild doc##.body (create_paragraph (FileCordova.storage_to_str
  FileCordova.temp_directory));
  Dom.appendChild doc##.body (create_paragraph (FileCordova.storage_to_str
  FileCordova.synced_data_directory));
  Dom.appendChild doc##.body (create_paragraph (FileCordova.storage_to_str
  FileCordova.documents_directory));
  Dom.appendChild doc##.body (create_paragraph (FileCordova.storage_to_str
  FileCordova.shared_directory));
  Js._false

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
  (Dom_html.handler on_device_ready) Js._false
