(* Warning! This file is generated. Modify at your own risk. *)

module TableReference =
struct
  type t = {
    datasetId : string;
    projectId : string;
    tableId : string;
    
  }
  
  let datasetId = {
    GapiLens.get = (fun x -> x.datasetId);
    GapiLens.set = (fun v x -> { x with datasetId = v });
  }
  let projectId = {
    GapiLens.get = (fun x -> x.projectId);
    GapiLens.set = (fun v x -> { x with projectId = v });
  }
  let tableId = {
    GapiLens.get = (fun x -> x.tableId);
    GapiLens.set = (fun v x -> { x with tableId = v });
  }
  
  let empty = {
    datasetId = "";
    projectId = "";
    tableId = "";
    
  }
  
  let rec render_content x = 
     [
      GapiJson.render_string_value "datasetId" x.datasetId;
      GapiJson.render_string_value "projectId" x.projectId;
      GapiJson.render_string_value "tableId" x.tableId;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "datasetId"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with datasetId = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "projectId"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with projectId = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "tableId"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with tableId = v }
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.TableReference.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module JobConfigurationLink =
struct
  type t = {
    createDisposition : string;
    destinationTable : TableReference.t;
    sourceUri : string;
    
  }
  
  let createDisposition = {
    GapiLens.get = (fun x -> x.createDisposition);
    GapiLens.set = (fun v x -> { x with createDisposition = v });
  }
  let destinationTable = {
    GapiLens.get = (fun x -> x.destinationTable);
    GapiLens.set = (fun v x -> { x with destinationTable = v });
  }
  let sourceUri = {
    GapiLens.get = (fun x -> x.sourceUri);
    GapiLens.set = (fun v x -> { x with sourceUri = v });
  }
  
  let empty = {
    createDisposition = "";
    destinationTable = TableReference.empty;
    sourceUri = "";
    
  }
  
  let rec render_content x = 
     [
      GapiJson.render_string_value "createDisposition" x.createDisposition;
      (fun v -> GapiJson.render_object "destinationTable" (TableReference.render_content v)) x.destinationTable;
      GapiJson.render_string_value "sourceUri" x.sourceUri;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "createDisposition"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with createDisposition = v }
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "destinationTable"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        TableReference.parse
        TableReference.empty
        (fun v -> { x with destinationTable = v })
        cs
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "sourceUri"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with sourceUri = v }
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.JobConfigurationLink.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module ErrorProto =
struct
  type t = {
    debugInfo : string;
    location : string;
    message : string;
    reason : string;
    
  }
  
  let debugInfo = {
    GapiLens.get = (fun x -> x.debugInfo);
    GapiLens.set = (fun v x -> { x with debugInfo = v });
  }
  let location = {
    GapiLens.get = (fun x -> x.location);
    GapiLens.set = (fun v x -> { x with location = v });
  }
  let message = {
    GapiLens.get = (fun x -> x.message);
    GapiLens.set = (fun v x -> { x with message = v });
  }
  let reason = {
    GapiLens.get = (fun x -> x.reason);
    GapiLens.set = (fun v x -> { x with reason = v });
  }
  
  let empty = {
    debugInfo = "";
    location = "";
    message = "";
    reason = "";
    
  }
  
  let rec render_content x = 
     [
      GapiJson.render_string_value "debugInfo" x.debugInfo;
      GapiJson.render_string_value "location" x.location;
      GapiJson.render_string_value "message" x.message;
      GapiJson.render_string_value "reason" x.reason;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "debugInfo"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with debugInfo = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "location"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with location = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "message"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with message = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "reason"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with reason = v }
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.ErrorProto.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module JobStatus =
struct
  type t = {
    errorResult : ErrorProto.t;
    errors : ErrorProto.t list;
    state : string;
    
  }
  
  let errorResult = {
    GapiLens.get = (fun x -> x.errorResult);
    GapiLens.set = (fun v x -> { x with errorResult = v });
  }
  let errors = {
    GapiLens.get = (fun x -> x.errors);
    GapiLens.set = (fun v x -> { x with errors = v });
  }
  let state = {
    GapiLens.get = (fun x -> x.state);
    GapiLens.set = (fun v x -> { x with state = v });
  }
  
  let empty = {
    errorResult = ErrorProto.empty;
    errors = [];
    state = "";
    
  }
  
  let rec render_content x = 
     [
      (fun v -> GapiJson.render_object "errorResult" (ErrorProto.render_content v)) x.errorResult;
      GapiJson.render_array "errors" ErrorProto.render x.errors;
      GapiJson.render_string_value "state" x.state;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "errorResult"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        ErrorProto.parse
        ErrorProto.empty
        (fun v -> { x with errorResult = v })
        cs
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "errors"; data_type = GapiJson.Array },
        cs) ->
      GapiJson.parse_collection
        (fun x' -> function
          | GapiCore.AnnotatedTree.Node
              ({ GapiJson.name = ""; data_type = GapiJson.Object },
              cs) ->
            GapiJson.parse_children
              ErrorProto.parse
              ErrorProto.empty
              (fun v -> v)
              cs
          | e ->
            GapiJson.unexpected "GapiBigqueryV2Model.JobStatus.parse.parse_collection" e x')
        ErrorProto.empty
        (fun v -> { x with errors = v })
        cs
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "state"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with state = v }
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.JobStatus.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module TableRow =
struct
  module FData =
  struct
    type t = {
      v : string;
      
    }
    
    let v = {
      GapiLens.get = (fun x -> x.v);
      GapiLens.set = (fun v x -> { x with v = v });
    }
    
    let empty = {
      v = "";
      
    }
    
    let rec render_content x = 
       [
        GapiJson.render_string_value "v" x.v;
        
      ]
    and render x = 
      GapiJson.render_object "" (render_content x)
    
    let rec parse x = function
      | GapiCore.AnnotatedTree.Leaf
          ({ GapiJson.name = "v"; data_type = GapiJson.Scalar },
          Json_type.String v) ->
        { x with v = v }
      | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = ""; data_type = GapiJson.Object },
        cs) ->
        GapiJson.parse_children parse empty (fun x -> x) cs
      | e ->
        GapiJson.unexpected "GapiBigqueryV2Model.FData.parse" e x
    
  end
  
  type t = {
    f : FData.t list;
    
  }
  
  let f = {
    GapiLens.get = (fun x -> x.f);
    GapiLens.set = (fun v x -> { x with f = v });
  }
  
  let empty = {
    f = [];
    
  }
  
  let rec render_content x = 
     [
      GapiJson.render_array "f" FData.render x.f;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "f"; data_type = GapiJson.Array },
        cs) ->
      GapiJson.parse_collection
        (fun x' -> function
          | GapiCore.AnnotatedTree.Node
              ({ GapiJson.name = ""; data_type = GapiJson.Object },
              cs) ->
            GapiJson.parse_children FData.parse FData.empty (fun v -> v) cs
          | e ->
            GapiJson.unexpected "GapiBigqueryV2Model.TableRow.parse.parse_collection" e x')
        FData.empty
        (fun v -> { x with f = v })
        cs
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.TableRow.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module TableDataList =
struct
  type t = {
    etag : string;
    kind : string;
    rows : TableRow.t list;
    totalRows : string;
    
  }
  
  let etag = {
    GapiLens.get = (fun x -> x.etag);
    GapiLens.set = (fun v x -> { x with etag = v });
  }
  let kind = {
    GapiLens.get = (fun x -> x.kind);
    GapiLens.set = (fun v x -> { x with kind = v });
  }
  let rows = {
    GapiLens.get = (fun x -> x.rows);
    GapiLens.set = (fun v x -> { x with rows = v });
  }
  let totalRows = {
    GapiLens.get = (fun x -> x.totalRows);
    GapiLens.set = (fun v x -> { x with totalRows = v });
  }
  
  let empty = {
    etag = "";
    kind = "";
    rows = [];
    totalRows = "";
    
  }
  
  let rec render_content x = 
     [
      GapiJson.render_string_value "etag" x.etag;
      GapiJson.render_string_value "kind" x.kind;
      GapiJson.render_array "rows" TableRow.render x.rows;
      GapiJson.render_string_value "totalRows" x.totalRows;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "etag"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with etag = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "kind"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with kind = v }
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "rows"; data_type = GapiJson.Array },
        cs) ->
      GapiJson.parse_collection
        (fun x' -> function
          | GapiCore.AnnotatedTree.Node
              ({ GapiJson.name = ""; data_type = GapiJson.Object },
              cs) ->
            GapiJson.parse_children
              TableRow.parse
              TableRow.empty
              (fun v -> v)
              cs
          | e ->
            GapiJson.unexpected "GapiBigqueryV2Model.TableDataList.parse.parse_collection" e x')
        TableRow.empty
        (fun v -> { x with rows = v })
        cs
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "totalRows"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with totalRows = v }
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.TableDataList.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module JobStatistics =
struct
  type t = {
    endTime : string;
    startTime : string;
    totalBytesProcessed : string;
    
  }
  
  let endTime = {
    GapiLens.get = (fun x -> x.endTime);
    GapiLens.set = (fun v x -> { x with endTime = v });
  }
  let startTime = {
    GapiLens.get = (fun x -> x.startTime);
    GapiLens.set = (fun v x -> { x with startTime = v });
  }
  let totalBytesProcessed = {
    GapiLens.get = (fun x -> x.totalBytesProcessed);
    GapiLens.set = (fun v x -> { x with totalBytesProcessed = v });
  }
  
  let empty = {
    endTime = "";
    startTime = "";
    totalBytesProcessed = "";
    
  }
  
  let rec render_content x = 
     [
      GapiJson.render_string_value "endTime" x.endTime;
      GapiJson.render_string_value "startTime" x.startTime;
      GapiJson.render_string_value "totalBytesProcessed" x.totalBytesProcessed;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "endTime"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with endTime = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "startTime"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with startTime = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "totalBytesProcessed"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with totalBytesProcessed = v }
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.JobStatistics.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module JobConfigurationProperties = GapiJson.StringDictionary

module JobConfigurationTableCopy =
struct
  type t = {
    createDisposition : string;
    destinationTable : TableReference.t;
    sourceTable : TableReference.t;
    writeDisposition : string;
    
  }
  
  let createDisposition = {
    GapiLens.get = (fun x -> x.createDisposition);
    GapiLens.set = (fun v x -> { x with createDisposition = v });
  }
  let destinationTable = {
    GapiLens.get = (fun x -> x.destinationTable);
    GapiLens.set = (fun v x -> { x with destinationTable = v });
  }
  let sourceTable = {
    GapiLens.get = (fun x -> x.sourceTable);
    GapiLens.set = (fun v x -> { x with sourceTable = v });
  }
  let writeDisposition = {
    GapiLens.get = (fun x -> x.writeDisposition);
    GapiLens.set = (fun v x -> { x with writeDisposition = v });
  }
  
  let empty = {
    createDisposition = "";
    destinationTable = TableReference.empty;
    sourceTable = TableReference.empty;
    writeDisposition = "";
    
  }
  
  let rec render_content x = 
     [
      GapiJson.render_string_value "createDisposition" x.createDisposition;
      (fun v -> GapiJson.render_object "destinationTable" (TableReference.render_content v)) x.destinationTable;
      (fun v -> GapiJson.render_object "sourceTable" (TableReference.render_content v)) x.sourceTable;
      GapiJson.render_string_value "writeDisposition" x.writeDisposition;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "createDisposition"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with createDisposition = v }
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "destinationTable"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        TableReference.parse
        TableReference.empty
        (fun v -> { x with destinationTable = v })
        cs
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "sourceTable"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        TableReference.parse
        TableReference.empty
        (fun v -> { x with sourceTable = v })
        cs
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "writeDisposition"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with writeDisposition = v }
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.JobConfigurationTableCopy.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module JobConfigurationExtract =
struct
  type t = {
    destinationUri : string;
    sourceTable : TableReference.t;
    
  }
  
  let destinationUri = {
    GapiLens.get = (fun x -> x.destinationUri);
    GapiLens.set = (fun v x -> { x with destinationUri = v });
  }
  let sourceTable = {
    GapiLens.get = (fun x -> x.sourceTable);
    GapiLens.set = (fun v x -> { x with sourceTable = v });
  }
  
  let empty = {
    destinationUri = "";
    sourceTable = TableReference.empty;
    
  }
  
  let rec render_content x = 
     [
      GapiJson.render_string_value "destinationUri" x.destinationUri;
      (fun v -> GapiJson.render_object "sourceTable" (TableReference.render_content v)) x.sourceTable;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "destinationUri"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with destinationUri = v }
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "sourceTable"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        TableReference.parse
        TableReference.empty
        (fun v -> { x with sourceTable = v })
        cs
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.JobConfigurationExtract.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module TableFieldSchema =
struct
  type t = {
    fields : t list;
    mode : string;
    name : string;
    _type : string;
    
  }
  
  let fields = {
    GapiLens.get = (fun x -> x.fields);
    GapiLens.set = (fun v x -> { x with fields = v });
  }
  let mode = {
    GapiLens.get = (fun x -> x.mode);
    GapiLens.set = (fun v x -> { x with mode = v });
  }
  let name = {
    GapiLens.get = (fun x -> x.name);
    GapiLens.set = (fun v x -> { x with name = v });
  }
  let _type = {
    GapiLens.get = (fun x -> x._type);
    GapiLens.set = (fun v x -> { x with _type = v });
  }
  
  let empty = {
    fields = [];
    mode = "";
    name = "";
    _type = "";
    
  }
  
  let rec render_content x = 
     [
      GapiJson.render_array "fields" render x.fields;
      GapiJson.render_string_value "mode" x.mode;
      GapiJson.render_string_value "name" x.name;
      GapiJson.render_string_value "type" x._type;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "fields"; data_type = GapiJson.Array },
        cs) ->
      GapiJson.parse_collection
        (fun x' -> function
          | GapiCore.AnnotatedTree.Node
              ({ GapiJson.name = ""; data_type = GapiJson.Object },
              cs) ->
            GapiJson.parse_children parse empty (fun v -> v) cs
          | e ->
            GapiJson.unexpected "GapiBigqueryV2Model.TableFieldSchema.parse.parse_collection" e x')
        empty
        (fun v -> { x with fields = v })
        cs
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "mode"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with mode = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "name"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with name = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "type"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with _type = v }
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.TableFieldSchema.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module TableSchema =
struct
  type t = {
    fields : TableFieldSchema.t list;
    
  }
  
  let fields = {
    GapiLens.get = (fun x -> x.fields);
    GapiLens.set = (fun v x -> { x with fields = v });
  }
  
  let empty = {
    fields = [];
    
  }
  
  let rec render_content x = 
     [
      GapiJson.render_array "fields" TableFieldSchema.render x.fields;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "fields"; data_type = GapiJson.Array },
        cs) ->
      GapiJson.parse_collection
        (fun x' -> function
          | GapiCore.AnnotatedTree.Node
              ({ GapiJson.name = ""; data_type = GapiJson.Object },
              cs) ->
            GapiJson.parse_children
              TableFieldSchema.parse
              TableFieldSchema.empty
              (fun v -> v)
              cs
          | e ->
            GapiJson.unexpected "GapiBigqueryV2Model.TableSchema.parse.parse_collection" e x')
        TableFieldSchema.empty
        (fun v -> { x with fields = v })
        cs
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.TableSchema.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module JobConfigurationLoad =
struct
  type t = {
    createDisposition : string;
    destinationTable : TableReference.t;
    encoding : string;
    fieldDelimiter : string;
    maxBadRecords : int;
    schema : TableSchema.t;
    skipLeadingRows : int;
    sourceUris : string list;
    writeDisposition : string;
    
  }
  
  let createDisposition = {
    GapiLens.get = (fun x -> x.createDisposition);
    GapiLens.set = (fun v x -> { x with createDisposition = v });
  }
  let destinationTable = {
    GapiLens.get = (fun x -> x.destinationTable);
    GapiLens.set = (fun v x -> { x with destinationTable = v });
  }
  let encoding = {
    GapiLens.get = (fun x -> x.encoding);
    GapiLens.set = (fun v x -> { x with encoding = v });
  }
  let fieldDelimiter = {
    GapiLens.get = (fun x -> x.fieldDelimiter);
    GapiLens.set = (fun v x -> { x with fieldDelimiter = v });
  }
  let maxBadRecords = {
    GapiLens.get = (fun x -> x.maxBadRecords);
    GapiLens.set = (fun v x -> { x with maxBadRecords = v });
  }
  let schema = {
    GapiLens.get = (fun x -> x.schema);
    GapiLens.set = (fun v x -> { x with schema = v });
  }
  let skipLeadingRows = {
    GapiLens.get = (fun x -> x.skipLeadingRows);
    GapiLens.set = (fun v x -> { x with skipLeadingRows = v });
  }
  let sourceUris = {
    GapiLens.get = (fun x -> x.sourceUris);
    GapiLens.set = (fun v x -> { x with sourceUris = v });
  }
  let writeDisposition = {
    GapiLens.get = (fun x -> x.writeDisposition);
    GapiLens.set = (fun v x -> { x with writeDisposition = v });
  }
  
  let empty = {
    createDisposition = "";
    destinationTable = TableReference.empty;
    encoding = "";
    fieldDelimiter = "";
    maxBadRecords = 0;
    schema = TableSchema.empty;
    skipLeadingRows = 0;
    sourceUris = [];
    writeDisposition = "";
    
  }
  
  let rec render_content x = 
     [
      GapiJson.render_string_value "createDisposition" x.createDisposition;
      (fun v -> GapiJson.render_object "destinationTable" (TableReference.render_content v)) x.destinationTable;
      GapiJson.render_string_value "encoding" x.encoding;
      GapiJson.render_string_value "fieldDelimiter" x.fieldDelimiter;
      GapiJson.render_int_value "maxBadRecords" x.maxBadRecords;
      (fun v -> GapiJson.render_object "schema" (TableSchema.render_content v)) x.schema;
      GapiJson.render_int_value "skipLeadingRows" x.skipLeadingRows;
      GapiJson.render_array "sourceUris" (GapiJson.render_string_value "") x.sourceUris;
      GapiJson.render_string_value "writeDisposition" x.writeDisposition;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "createDisposition"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with createDisposition = v }
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "destinationTable"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        TableReference.parse
        TableReference.empty
        (fun v -> { x with destinationTable = v })
        cs
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "encoding"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with encoding = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "fieldDelimiter"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with fieldDelimiter = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "maxBadRecords"; data_type = GapiJson.Scalar },
        Json_type.Int v) ->
      { x with maxBadRecords = v }
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "schema"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        TableSchema.parse
        TableSchema.empty
        (fun v -> { x with schema = v })
        cs
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "skipLeadingRows"; data_type = GapiJson.Scalar },
        Json_type.Int v) ->
      { x with skipLeadingRows = v }
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "sourceUris"; data_type = GapiJson.Array },
        cs) ->
      GapiJson.parse_collection
        (fun x' -> function
          | GapiCore.AnnotatedTree.Leaf
              ({ GapiJson.name = ""; data_type = GapiJson.Scalar },
              Json_type.String v) ->
            v
          | e ->
            GapiJson.unexpected "GapiBigqueryV2Model.JobConfigurationLoad.parse.parse_collection" e x')
        ""
        (fun v -> { x with sourceUris = v })
        cs
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "writeDisposition"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with writeDisposition = v }
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.JobConfigurationLoad.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module DatasetReference =
struct
  type t = {
    datasetId : string;
    projectId : string;
    
  }
  
  let datasetId = {
    GapiLens.get = (fun x -> x.datasetId);
    GapiLens.set = (fun v x -> { x with datasetId = v });
  }
  let projectId = {
    GapiLens.get = (fun x -> x.projectId);
    GapiLens.set = (fun v x -> { x with projectId = v });
  }
  
  let empty = {
    datasetId = "";
    projectId = "";
    
  }
  
  let rec render_content x = 
     [
      GapiJson.render_string_value "datasetId" x.datasetId;
      GapiJson.render_string_value "projectId" x.projectId;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "datasetId"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with datasetId = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "projectId"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with projectId = v }
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.DatasetReference.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module JobConfigurationQuery =
struct
  type t = {
    createDisposition : string;
    defaultDataset : DatasetReference.t;
    destinationTable : TableReference.t;
    query : string;
    writeDisposition : string;
    
  }
  
  let createDisposition = {
    GapiLens.get = (fun x -> x.createDisposition);
    GapiLens.set = (fun v x -> { x with createDisposition = v });
  }
  let defaultDataset = {
    GapiLens.get = (fun x -> x.defaultDataset);
    GapiLens.set = (fun v x -> { x with defaultDataset = v });
  }
  let destinationTable = {
    GapiLens.get = (fun x -> x.destinationTable);
    GapiLens.set = (fun v x -> { x with destinationTable = v });
  }
  let query = {
    GapiLens.get = (fun x -> x.query);
    GapiLens.set = (fun v x -> { x with query = v });
  }
  let writeDisposition = {
    GapiLens.get = (fun x -> x.writeDisposition);
    GapiLens.set = (fun v x -> { x with writeDisposition = v });
  }
  
  let empty = {
    createDisposition = "";
    defaultDataset = DatasetReference.empty;
    destinationTable = TableReference.empty;
    query = "";
    writeDisposition = "";
    
  }
  
  let rec render_content x = 
     [
      GapiJson.render_string_value "createDisposition" x.createDisposition;
      (fun v -> GapiJson.render_object "defaultDataset" (DatasetReference.render_content v)) x.defaultDataset;
      (fun v -> GapiJson.render_object "destinationTable" (TableReference.render_content v)) x.destinationTable;
      GapiJson.render_string_value "query" x.query;
      GapiJson.render_string_value "writeDisposition" x.writeDisposition;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "createDisposition"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with createDisposition = v }
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "defaultDataset"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        DatasetReference.parse
        DatasetReference.empty
        (fun v -> { x with defaultDataset = v })
        cs
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "destinationTable"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        TableReference.parse
        TableReference.empty
        (fun v -> { x with destinationTable = v })
        cs
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "query"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with query = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "writeDisposition"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with writeDisposition = v }
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.JobConfigurationQuery.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module JobConfiguration =
struct
  type t = {
    copy : JobConfigurationTableCopy.t;
    extract : JobConfigurationExtract.t;
    link : JobConfigurationLink.t;
    load : JobConfigurationLoad.t;
    properties : JobConfigurationProperties.t;
    query : JobConfigurationQuery.t;
    
  }
  
  let copy = {
    GapiLens.get = (fun x -> x.copy);
    GapiLens.set = (fun v x -> { x with copy = v });
  }
  let extract = {
    GapiLens.get = (fun x -> x.extract);
    GapiLens.set = (fun v x -> { x with extract = v });
  }
  let link = {
    GapiLens.get = (fun x -> x.link);
    GapiLens.set = (fun v x -> { x with link = v });
  }
  let load = {
    GapiLens.get = (fun x -> x.load);
    GapiLens.set = (fun v x -> { x with load = v });
  }
  let properties = {
    GapiLens.get = (fun x -> x.properties);
    GapiLens.set = (fun v x -> { x with properties = v });
  }
  let query = {
    GapiLens.get = (fun x -> x.query);
    GapiLens.set = (fun v x -> { x with query = v });
  }
  
  let empty = {
    copy = JobConfigurationTableCopy.empty;
    extract = JobConfigurationExtract.empty;
    link = JobConfigurationLink.empty;
    load = JobConfigurationLoad.empty;
    properties = JobConfigurationProperties.empty;
    query = JobConfigurationQuery.empty;
    
  }
  
  let rec render_content x = 
     [
      (fun v -> GapiJson.render_object "copy" (JobConfigurationTableCopy.render_content v)) x.copy;
      (fun v -> GapiJson.render_object "extract" (JobConfigurationExtract.render_content v)) x.extract;
      (fun v -> GapiJson.render_object "link" (JobConfigurationLink.render_content v)) x.link;
      (fun v -> GapiJson.render_object "load" (JobConfigurationLoad.render_content v)) x.load;
      (fun v -> GapiJson.render_object "properties" (JobConfigurationProperties.render_content v)) x.properties;
      (fun v -> GapiJson.render_object "query" (JobConfigurationQuery.render_content v)) x.query;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "copy"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        JobConfigurationTableCopy.parse
        JobConfigurationTableCopy.empty
        (fun v -> { x with copy = v })
        cs
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "extract"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        JobConfigurationExtract.parse
        JobConfigurationExtract.empty
        (fun v -> { x with extract = v })
        cs
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "link"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        JobConfigurationLink.parse
        JobConfigurationLink.empty
        (fun v -> { x with link = v })
        cs
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "load"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        JobConfigurationLoad.parse
        JobConfigurationLoad.empty
        (fun v -> { x with load = v })
        cs
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "properties"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        JobConfigurationProperties.parse
        JobConfigurationProperties.empty
        (fun v -> { x with properties = v })
        cs
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "query"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        JobConfigurationQuery.parse
        JobConfigurationQuery.empty
        (fun v -> { x with query = v })
        cs
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.JobConfiguration.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module JobReference =
struct
  type t = {
    jobId : string;
    projectId : string;
    
  }
  
  let jobId = {
    GapiLens.get = (fun x -> x.jobId);
    GapiLens.set = (fun v x -> { x with jobId = v });
  }
  let projectId = {
    GapiLens.get = (fun x -> x.projectId);
    GapiLens.set = (fun v x -> { x with projectId = v });
  }
  
  let empty = {
    jobId = "";
    projectId = "";
    
  }
  
  let rec render_content x = 
     [
      GapiJson.render_string_value "jobId" x.jobId;
      GapiJson.render_string_value "projectId" x.projectId;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "jobId"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with jobId = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "projectId"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with projectId = v }
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.JobReference.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module Job =
struct
  type t = {
    configuration : JobConfiguration.t;
    etag : string;
    id : string;
    jobReference : JobReference.t;
    kind : string;
    selfLink : string;
    statistics : JobStatistics.t;
    status : JobStatus.t;
    
  }
  
  let configuration = {
    GapiLens.get = (fun x -> x.configuration);
    GapiLens.set = (fun v x -> { x with configuration = v });
  }
  let etag = {
    GapiLens.get = (fun x -> x.etag);
    GapiLens.set = (fun v x -> { x with etag = v });
  }
  let id = {
    GapiLens.get = (fun x -> x.id);
    GapiLens.set = (fun v x -> { x with id = v });
  }
  let jobReference = {
    GapiLens.get = (fun x -> x.jobReference);
    GapiLens.set = (fun v x -> { x with jobReference = v });
  }
  let kind = {
    GapiLens.get = (fun x -> x.kind);
    GapiLens.set = (fun v x -> { x with kind = v });
  }
  let selfLink = {
    GapiLens.get = (fun x -> x.selfLink);
    GapiLens.set = (fun v x -> { x with selfLink = v });
  }
  let statistics = {
    GapiLens.get = (fun x -> x.statistics);
    GapiLens.set = (fun v x -> { x with statistics = v });
  }
  let status = {
    GapiLens.get = (fun x -> x.status);
    GapiLens.set = (fun v x -> { x with status = v });
  }
  
  let empty = {
    configuration = JobConfiguration.empty;
    etag = "";
    id = "";
    jobReference = JobReference.empty;
    kind = "";
    selfLink = "";
    statistics = JobStatistics.empty;
    status = JobStatus.empty;
    
  }
  
  let rec render_content x = 
     [
      (fun v -> GapiJson.render_object "configuration" (JobConfiguration.render_content v)) x.configuration;
      GapiJson.render_string_value "etag" x.etag;
      GapiJson.render_string_value "id" x.id;
      (fun v -> GapiJson.render_object "jobReference" (JobReference.render_content v)) x.jobReference;
      GapiJson.render_string_value "kind" x.kind;
      GapiJson.render_string_value "selfLink" x.selfLink;
      (fun v -> GapiJson.render_object "statistics" (JobStatistics.render_content v)) x.statistics;
      (fun v -> GapiJson.render_object "status" (JobStatus.render_content v)) x.status;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "configuration"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        JobConfiguration.parse
        JobConfiguration.empty
        (fun v -> { x with configuration = v })
        cs
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "etag"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with etag = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "id"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with id = v }
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "jobReference"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        JobReference.parse
        JobReference.empty
        (fun v -> { x with jobReference = v })
        cs
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "kind"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with kind = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "selfLink"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with selfLink = v }
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "statistics"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        JobStatistics.parse
        JobStatistics.empty
        (fun v -> { x with statistics = v })
        cs
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "status"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        JobStatus.parse
        JobStatus.empty
        (fun v -> { x with status = v })
        cs
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.Job.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module ProjectReference =
struct
  type t = {
    projectId : string;
    
  }
  
  let projectId = {
    GapiLens.get = (fun x -> x.projectId);
    GapiLens.set = (fun v x -> { x with projectId = v });
  }
  
  let empty = {
    projectId = "";
    
  }
  
  let rec render_content x = 
     [
      GapiJson.render_string_value "projectId" x.projectId;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "projectId"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with projectId = v }
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.ProjectReference.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module ProjectList =
struct
  module ProjectsData =
  struct
    type t = {
      friendlyName : string;
      id : string;
      kind : string;
      projectReference : ProjectReference.t;
      
    }
    
    let friendlyName = {
      GapiLens.get = (fun x -> x.friendlyName);
      GapiLens.set = (fun v x -> { x with friendlyName = v });
    }
    let id = {
      GapiLens.get = (fun x -> x.id);
      GapiLens.set = (fun v x -> { x with id = v });
    }
    let kind = {
      GapiLens.get = (fun x -> x.kind);
      GapiLens.set = (fun v x -> { x with kind = v });
    }
    let projectReference = {
      GapiLens.get = (fun x -> x.projectReference);
      GapiLens.set = (fun v x -> { x with projectReference = v });
    }
    
    let empty = {
      friendlyName = "";
      id = "";
      kind = "";
      projectReference = ProjectReference.empty;
      
    }
    
    let rec render_content x = 
       [
        GapiJson.render_string_value "friendlyName" x.friendlyName;
        GapiJson.render_string_value "id" x.id;
        GapiJson.render_string_value "kind" x.kind;
        (fun v -> GapiJson.render_object "projectReference" (ProjectReference.render_content v)) x.projectReference;
        
      ]
    and render x = 
      GapiJson.render_object "" (render_content x)
    
    let rec parse x = function
      | GapiCore.AnnotatedTree.Leaf
          ({ GapiJson.name = "friendlyName"; data_type = GapiJson.Scalar },
          Json_type.String v) ->
        { x with friendlyName = v }
      | GapiCore.AnnotatedTree.Leaf
          ({ GapiJson.name = "id"; data_type = GapiJson.Scalar },
          Json_type.String v) ->
        { x with id = v }
      | GapiCore.AnnotatedTree.Leaf
          ({ GapiJson.name = "kind"; data_type = GapiJson.Scalar },
          Json_type.String v) ->
        { x with kind = v }
      | GapiCore.AnnotatedTree.Node
          ({ GapiJson.name = "projectReference"; data_type = GapiJson.Object },
          cs) ->
        GapiJson.parse_children
          ProjectReference.parse
          ProjectReference.empty
          (fun v -> { x with projectReference = v })
          cs
      | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = ""; data_type = GapiJson.Object },
        cs) ->
        GapiJson.parse_children parse empty (fun x -> x) cs
      | e ->
        GapiJson.unexpected "GapiBigqueryV2Model.ProjectsData.parse" e x
    
  end
  
  type t = {
    etag : string;
    kind : string;
    nextPageToken : string;
    projects : ProjectsData.t list;
    totalItems : int;
    
  }
  
  let etag = {
    GapiLens.get = (fun x -> x.etag);
    GapiLens.set = (fun v x -> { x with etag = v });
  }
  let kind = {
    GapiLens.get = (fun x -> x.kind);
    GapiLens.set = (fun v x -> { x with kind = v });
  }
  let nextPageToken = {
    GapiLens.get = (fun x -> x.nextPageToken);
    GapiLens.set = (fun v x -> { x with nextPageToken = v });
  }
  let projects = {
    GapiLens.get = (fun x -> x.projects);
    GapiLens.set = (fun v x -> { x with projects = v });
  }
  let totalItems = {
    GapiLens.get = (fun x -> x.totalItems);
    GapiLens.set = (fun v x -> { x with totalItems = v });
  }
  
  let empty = {
    etag = "";
    kind = "";
    nextPageToken = "";
    projects = [];
    totalItems = 0;
    
  }
  
  let rec render_content x = 
     [
      GapiJson.render_string_value "etag" x.etag;
      GapiJson.render_string_value "kind" x.kind;
      GapiJson.render_string_value "nextPageToken" x.nextPageToken;
      GapiJson.render_array "projects" ProjectsData.render x.projects;
      GapiJson.render_int_value "totalItems" x.totalItems;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "etag"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with etag = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "kind"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with kind = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "nextPageToken"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with nextPageToken = v }
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "projects"; data_type = GapiJson.Array },
        cs) ->
      GapiJson.parse_collection
        (fun x' -> function
          | GapiCore.AnnotatedTree.Node
              ({ GapiJson.name = ""; data_type = GapiJson.Object },
              cs) ->
            GapiJson.parse_children
              ProjectsData.parse
              ProjectsData.empty
              (fun v -> v)
              cs
          | e ->
            GapiJson.unexpected "GapiBigqueryV2Model.ProjectList.parse.parse_collection" e x')
        ProjectsData.empty
        (fun v -> { x with projects = v })
        cs
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "totalItems"; data_type = GapiJson.Scalar },
        Json_type.Int v) ->
      { x with totalItems = v }
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.ProjectList.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module JobList =
struct
  module JobsData =
  struct
    type t = {
      configuration : JobConfiguration.t;
      errorResult : ErrorProto.t;
      id : string;
      jobReference : JobReference.t;
      kind : string;
      state : string;
      statistics : JobStatistics.t;
      status : JobStatus.t;
      
    }
    
    let configuration = {
      GapiLens.get = (fun x -> x.configuration);
      GapiLens.set = (fun v x -> { x with configuration = v });
    }
    let errorResult = {
      GapiLens.get = (fun x -> x.errorResult);
      GapiLens.set = (fun v x -> { x with errorResult = v });
    }
    let id = {
      GapiLens.get = (fun x -> x.id);
      GapiLens.set = (fun v x -> { x with id = v });
    }
    let jobReference = {
      GapiLens.get = (fun x -> x.jobReference);
      GapiLens.set = (fun v x -> { x with jobReference = v });
    }
    let kind = {
      GapiLens.get = (fun x -> x.kind);
      GapiLens.set = (fun v x -> { x with kind = v });
    }
    let state = {
      GapiLens.get = (fun x -> x.state);
      GapiLens.set = (fun v x -> { x with state = v });
    }
    let statistics = {
      GapiLens.get = (fun x -> x.statistics);
      GapiLens.set = (fun v x -> { x with statistics = v });
    }
    let status = {
      GapiLens.get = (fun x -> x.status);
      GapiLens.set = (fun v x -> { x with status = v });
    }
    
    let empty = {
      configuration = JobConfiguration.empty;
      errorResult = ErrorProto.empty;
      id = "";
      jobReference = JobReference.empty;
      kind = "";
      state = "";
      statistics = JobStatistics.empty;
      status = JobStatus.empty;
      
    }
    
    let rec render_content x = 
       [
        (fun v -> GapiJson.render_object "configuration" (JobConfiguration.render_content v)) x.configuration;
        (fun v -> GapiJson.render_object "errorResult" (ErrorProto.render_content v)) x.errorResult;
        GapiJson.render_string_value "id" x.id;
        (fun v -> GapiJson.render_object "jobReference" (JobReference.render_content v)) x.jobReference;
        GapiJson.render_string_value "kind" x.kind;
        GapiJson.render_string_value "state" x.state;
        (fun v -> GapiJson.render_object "statistics" (JobStatistics.render_content v)) x.statistics;
        (fun v -> GapiJson.render_object "status" (JobStatus.render_content v)) x.status;
        
      ]
    and render x = 
      GapiJson.render_object "" (render_content x)
    
    let rec parse x = function
      | GapiCore.AnnotatedTree.Node
          ({ GapiJson.name = "configuration"; data_type = GapiJson.Object },
          cs) ->
        GapiJson.parse_children
          JobConfiguration.parse
          JobConfiguration.empty
          (fun v -> { x with configuration = v })
          cs
      | GapiCore.AnnotatedTree.Node
          ({ GapiJson.name = "errorResult"; data_type = GapiJson.Object },
          cs) ->
        GapiJson.parse_children
          ErrorProto.parse
          ErrorProto.empty
          (fun v -> { x with errorResult = v })
          cs
      | GapiCore.AnnotatedTree.Leaf
          ({ GapiJson.name = "id"; data_type = GapiJson.Scalar },
          Json_type.String v) ->
        { x with id = v }
      | GapiCore.AnnotatedTree.Node
          ({ GapiJson.name = "jobReference"; data_type = GapiJson.Object },
          cs) ->
        GapiJson.parse_children
          JobReference.parse
          JobReference.empty
          (fun v -> { x with jobReference = v })
          cs
      | GapiCore.AnnotatedTree.Leaf
          ({ GapiJson.name = "kind"; data_type = GapiJson.Scalar },
          Json_type.String v) ->
        { x with kind = v }
      | GapiCore.AnnotatedTree.Leaf
          ({ GapiJson.name = "state"; data_type = GapiJson.Scalar },
          Json_type.String v) ->
        { x with state = v }
      | GapiCore.AnnotatedTree.Node
          ({ GapiJson.name = "statistics"; data_type = GapiJson.Object },
          cs) ->
        GapiJson.parse_children
          JobStatistics.parse
          JobStatistics.empty
          (fun v -> { x with statistics = v })
          cs
      | GapiCore.AnnotatedTree.Node
          ({ GapiJson.name = "status"; data_type = GapiJson.Object },
          cs) ->
        GapiJson.parse_children
          JobStatus.parse
          JobStatus.empty
          (fun v -> { x with status = v })
          cs
      | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = ""; data_type = GapiJson.Object },
        cs) ->
        GapiJson.parse_children parse empty (fun x -> x) cs
      | e ->
        GapiJson.unexpected "GapiBigqueryV2Model.JobsData.parse" e x
    
  end
  
  type t = {
    etag : string;
    jobs : JobsData.t list;
    kind : string;
    nextPageToken : string;
    totalItems : int;
    
  }
  
  let etag = {
    GapiLens.get = (fun x -> x.etag);
    GapiLens.set = (fun v x -> { x with etag = v });
  }
  let jobs = {
    GapiLens.get = (fun x -> x.jobs);
    GapiLens.set = (fun v x -> { x with jobs = v });
  }
  let kind = {
    GapiLens.get = (fun x -> x.kind);
    GapiLens.set = (fun v x -> { x with kind = v });
  }
  let nextPageToken = {
    GapiLens.get = (fun x -> x.nextPageToken);
    GapiLens.set = (fun v x -> { x with nextPageToken = v });
  }
  let totalItems = {
    GapiLens.get = (fun x -> x.totalItems);
    GapiLens.set = (fun v x -> { x with totalItems = v });
  }
  
  let empty = {
    etag = "";
    jobs = [];
    kind = "";
    nextPageToken = "";
    totalItems = 0;
    
  }
  
  let rec render_content x = 
     [
      GapiJson.render_string_value "etag" x.etag;
      GapiJson.render_array "jobs" JobsData.render x.jobs;
      GapiJson.render_string_value "kind" x.kind;
      GapiJson.render_string_value "nextPageToken" x.nextPageToken;
      GapiJson.render_int_value "totalItems" x.totalItems;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "etag"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with etag = v }
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "jobs"; data_type = GapiJson.Array },
        cs) ->
      GapiJson.parse_collection
        (fun x' -> function
          | GapiCore.AnnotatedTree.Node
              ({ GapiJson.name = ""; data_type = GapiJson.Object },
              cs) ->
            GapiJson.parse_children
              JobsData.parse
              JobsData.empty
              (fun v -> v)
              cs
          | e ->
            GapiJson.unexpected "GapiBigqueryV2Model.JobList.parse.parse_collection" e x')
        JobsData.empty
        (fun v -> { x with jobs = v })
        cs
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "kind"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with kind = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "nextPageToken"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with nextPageToken = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "totalItems"; data_type = GapiJson.Scalar },
        Json_type.Int v) ->
      { x with totalItems = v }
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.JobList.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module Table =
struct
  type t = {
    creationTime : string;
    description : string;
    etag : string;
    friendlyName : string;
    id : string;
    kind : string;
    lastModifiedTime : string;
    numBytes : string;
    numRows : string;
    schema : TableSchema.t;
    selfLink : string;
    tableReference : TableReference.t;
    
  }
  
  let creationTime = {
    GapiLens.get = (fun x -> x.creationTime);
    GapiLens.set = (fun v x -> { x with creationTime = v });
  }
  let description = {
    GapiLens.get = (fun x -> x.description);
    GapiLens.set = (fun v x -> { x with description = v });
  }
  let etag = {
    GapiLens.get = (fun x -> x.etag);
    GapiLens.set = (fun v x -> { x with etag = v });
  }
  let friendlyName = {
    GapiLens.get = (fun x -> x.friendlyName);
    GapiLens.set = (fun v x -> { x with friendlyName = v });
  }
  let id = {
    GapiLens.get = (fun x -> x.id);
    GapiLens.set = (fun v x -> { x with id = v });
  }
  let kind = {
    GapiLens.get = (fun x -> x.kind);
    GapiLens.set = (fun v x -> { x with kind = v });
  }
  let lastModifiedTime = {
    GapiLens.get = (fun x -> x.lastModifiedTime);
    GapiLens.set = (fun v x -> { x with lastModifiedTime = v });
  }
  let numBytes = {
    GapiLens.get = (fun x -> x.numBytes);
    GapiLens.set = (fun v x -> { x with numBytes = v });
  }
  let numRows = {
    GapiLens.get = (fun x -> x.numRows);
    GapiLens.set = (fun v x -> { x with numRows = v });
  }
  let schema = {
    GapiLens.get = (fun x -> x.schema);
    GapiLens.set = (fun v x -> { x with schema = v });
  }
  let selfLink = {
    GapiLens.get = (fun x -> x.selfLink);
    GapiLens.set = (fun v x -> { x with selfLink = v });
  }
  let tableReference = {
    GapiLens.get = (fun x -> x.tableReference);
    GapiLens.set = (fun v x -> { x with tableReference = v });
  }
  
  let empty = {
    creationTime = "";
    description = "";
    etag = "";
    friendlyName = "";
    id = "";
    kind = "";
    lastModifiedTime = "";
    numBytes = "";
    numRows = "";
    schema = TableSchema.empty;
    selfLink = "";
    tableReference = TableReference.empty;
    
  }
  
  let rec render_content x = 
     [
      GapiJson.render_string_value "creationTime" x.creationTime;
      GapiJson.render_string_value "description" x.description;
      GapiJson.render_string_value "etag" x.etag;
      GapiJson.render_string_value "friendlyName" x.friendlyName;
      GapiJson.render_string_value "id" x.id;
      GapiJson.render_string_value "kind" x.kind;
      GapiJson.render_string_value "lastModifiedTime" x.lastModifiedTime;
      GapiJson.render_string_value "numBytes" x.numBytes;
      GapiJson.render_string_value "numRows" x.numRows;
      (fun v -> GapiJson.render_object "schema" (TableSchema.render_content v)) x.schema;
      GapiJson.render_string_value "selfLink" x.selfLink;
      (fun v -> GapiJson.render_object "tableReference" (TableReference.render_content v)) x.tableReference;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "creationTime"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with creationTime = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "description"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with description = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "etag"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with etag = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "friendlyName"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with friendlyName = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "id"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with id = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "kind"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with kind = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "lastModifiedTime"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with lastModifiedTime = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "numBytes"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with numBytes = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "numRows"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with numRows = v }
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "schema"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        TableSchema.parse
        TableSchema.empty
        (fun v -> { x with schema = v })
        cs
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "selfLink"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with selfLink = v }
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "tableReference"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        TableReference.parse
        TableReference.empty
        (fun v -> { x with tableReference = v })
        cs
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.Table.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module DatasetList =
struct
  module DatasetsData =
  struct
    type t = {
      datasetReference : DatasetReference.t;
      friendlyName : string;
      id : string;
      kind : string;
      
    }
    
    let datasetReference = {
      GapiLens.get = (fun x -> x.datasetReference);
      GapiLens.set = (fun v x -> { x with datasetReference = v });
    }
    let friendlyName = {
      GapiLens.get = (fun x -> x.friendlyName);
      GapiLens.set = (fun v x -> { x with friendlyName = v });
    }
    let id = {
      GapiLens.get = (fun x -> x.id);
      GapiLens.set = (fun v x -> { x with id = v });
    }
    let kind = {
      GapiLens.get = (fun x -> x.kind);
      GapiLens.set = (fun v x -> { x with kind = v });
    }
    
    let empty = {
      datasetReference = DatasetReference.empty;
      friendlyName = "";
      id = "";
      kind = "";
      
    }
    
    let rec render_content x = 
       [
        (fun v -> GapiJson.render_object "datasetReference" (DatasetReference.render_content v)) x.datasetReference;
        GapiJson.render_string_value "friendlyName" x.friendlyName;
        GapiJson.render_string_value "id" x.id;
        GapiJson.render_string_value "kind" x.kind;
        
      ]
    and render x = 
      GapiJson.render_object "" (render_content x)
    
    let rec parse x = function
      | GapiCore.AnnotatedTree.Node
          ({ GapiJson.name = "datasetReference"; data_type = GapiJson.Object },
          cs) ->
        GapiJson.parse_children
          DatasetReference.parse
          DatasetReference.empty
          (fun v -> { x with datasetReference = v })
          cs
      | GapiCore.AnnotatedTree.Leaf
          ({ GapiJson.name = "friendlyName"; data_type = GapiJson.Scalar },
          Json_type.String v) ->
        { x with friendlyName = v }
      | GapiCore.AnnotatedTree.Leaf
          ({ GapiJson.name = "id"; data_type = GapiJson.Scalar },
          Json_type.String v) ->
        { x with id = v }
      | GapiCore.AnnotatedTree.Leaf
          ({ GapiJson.name = "kind"; data_type = GapiJson.Scalar },
          Json_type.String v) ->
        { x with kind = v }
      | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = ""; data_type = GapiJson.Object },
        cs) ->
        GapiJson.parse_children parse empty (fun x -> x) cs
      | e ->
        GapiJson.unexpected "GapiBigqueryV2Model.DatasetsData.parse" e x
    
  end
  
  type t = {
    datasets : DatasetsData.t list;
    etag : string;
    kind : string;
    nextPageToken : string;
    
  }
  
  let datasets = {
    GapiLens.get = (fun x -> x.datasets);
    GapiLens.set = (fun v x -> { x with datasets = v });
  }
  let etag = {
    GapiLens.get = (fun x -> x.etag);
    GapiLens.set = (fun v x -> { x with etag = v });
  }
  let kind = {
    GapiLens.get = (fun x -> x.kind);
    GapiLens.set = (fun v x -> { x with kind = v });
  }
  let nextPageToken = {
    GapiLens.get = (fun x -> x.nextPageToken);
    GapiLens.set = (fun v x -> { x with nextPageToken = v });
  }
  
  let empty = {
    datasets = [];
    etag = "";
    kind = "";
    nextPageToken = "";
    
  }
  
  let rec render_content x = 
     [
      GapiJson.render_array "datasets" DatasetsData.render x.datasets;
      GapiJson.render_string_value "etag" x.etag;
      GapiJson.render_string_value "kind" x.kind;
      GapiJson.render_string_value "nextPageToken" x.nextPageToken;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "datasets"; data_type = GapiJson.Array },
        cs) ->
      GapiJson.parse_collection
        (fun x' -> function
          | GapiCore.AnnotatedTree.Node
              ({ GapiJson.name = ""; data_type = GapiJson.Object },
              cs) ->
            GapiJson.parse_children
              DatasetsData.parse
              DatasetsData.empty
              (fun v -> v)
              cs
          | e ->
            GapiJson.unexpected "GapiBigqueryV2Model.DatasetList.parse.parse_collection" e x')
        DatasetsData.empty
        (fun v -> { x with datasets = v })
        cs
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "etag"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with etag = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "kind"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with kind = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "nextPageToken"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with nextPageToken = v }
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.DatasetList.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module GetQueryResultsResponse =
struct
  type t = {
    etag : string;
    jobComplete : bool;
    jobReference : JobReference.t;
    kind : string;
    rows : TableRow.t list;
    schema : TableSchema.t;
    totalRows : string;
    
  }
  
  let etag = {
    GapiLens.get = (fun x -> x.etag);
    GapiLens.set = (fun v x -> { x with etag = v });
  }
  let jobComplete = {
    GapiLens.get = (fun x -> x.jobComplete);
    GapiLens.set = (fun v x -> { x with jobComplete = v });
  }
  let jobReference = {
    GapiLens.get = (fun x -> x.jobReference);
    GapiLens.set = (fun v x -> { x with jobReference = v });
  }
  let kind = {
    GapiLens.get = (fun x -> x.kind);
    GapiLens.set = (fun v x -> { x with kind = v });
  }
  let rows = {
    GapiLens.get = (fun x -> x.rows);
    GapiLens.set = (fun v x -> { x with rows = v });
  }
  let schema = {
    GapiLens.get = (fun x -> x.schema);
    GapiLens.set = (fun v x -> { x with schema = v });
  }
  let totalRows = {
    GapiLens.get = (fun x -> x.totalRows);
    GapiLens.set = (fun v x -> { x with totalRows = v });
  }
  
  let empty = {
    etag = "";
    jobComplete = false;
    jobReference = JobReference.empty;
    kind = "";
    rows = [];
    schema = TableSchema.empty;
    totalRows = "";
    
  }
  
  let rec render_content x = 
     [
      GapiJson.render_string_value "etag" x.etag;
      GapiJson.render_bool_value "jobComplete" x.jobComplete;
      (fun v -> GapiJson.render_object "jobReference" (JobReference.render_content v)) x.jobReference;
      GapiJson.render_string_value "kind" x.kind;
      GapiJson.render_array "rows" TableRow.render x.rows;
      (fun v -> GapiJson.render_object "schema" (TableSchema.render_content v)) x.schema;
      GapiJson.render_string_value "totalRows" x.totalRows;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "etag"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with etag = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "jobComplete"; data_type = GapiJson.Scalar },
        Json_type.Bool v) ->
      { x with jobComplete = v }
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "jobReference"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        JobReference.parse
        JobReference.empty
        (fun v -> { x with jobReference = v })
        cs
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "kind"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with kind = v }
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "rows"; data_type = GapiJson.Array },
        cs) ->
      GapiJson.parse_collection
        (fun x' -> function
          | GapiCore.AnnotatedTree.Node
              ({ GapiJson.name = ""; data_type = GapiJson.Object },
              cs) ->
            GapiJson.parse_children
              TableRow.parse
              TableRow.empty
              (fun v -> v)
              cs
          | e ->
            GapiJson.unexpected "GapiBigqueryV2Model.GetQueryResultsResponse.parse.parse_collection" e x')
        TableRow.empty
        (fun v -> { x with rows = v })
        cs
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "schema"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        TableSchema.parse
        TableSchema.empty
        (fun v -> { x with schema = v })
        cs
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "totalRows"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with totalRows = v }
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.GetQueryResultsResponse.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module QueryRequest =
struct
  type t = {
    defaultDataset : DatasetReference.t;
    kind : string;
    maxResults : int;
    query : string;
    timeoutMs : int;
    
  }
  
  let defaultDataset = {
    GapiLens.get = (fun x -> x.defaultDataset);
    GapiLens.set = (fun v x -> { x with defaultDataset = v });
  }
  let kind = {
    GapiLens.get = (fun x -> x.kind);
    GapiLens.set = (fun v x -> { x with kind = v });
  }
  let maxResults = {
    GapiLens.get = (fun x -> x.maxResults);
    GapiLens.set = (fun v x -> { x with maxResults = v });
  }
  let query = {
    GapiLens.get = (fun x -> x.query);
    GapiLens.set = (fun v x -> { x with query = v });
  }
  let timeoutMs = {
    GapiLens.get = (fun x -> x.timeoutMs);
    GapiLens.set = (fun v x -> { x with timeoutMs = v });
  }
  
  let empty = {
    defaultDataset = DatasetReference.empty;
    kind = "";
    maxResults = 0;
    query = "";
    timeoutMs = 0;
    
  }
  
  let rec render_content x = 
     [
      (fun v -> GapiJson.render_object "defaultDataset" (DatasetReference.render_content v)) x.defaultDataset;
      GapiJson.render_string_value "kind" x.kind;
      GapiJson.render_int_value "maxResults" x.maxResults;
      GapiJson.render_string_value "query" x.query;
      GapiJson.render_int_value "timeoutMs" x.timeoutMs;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "defaultDataset"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        DatasetReference.parse
        DatasetReference.empty
        (fun v -> { x with defaultDataset = v })
        cs
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "kind"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with kind = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "maxResults"; data_type = GapiJson.Scalar },
        Json_type.Int v) ->
      { x with maxResults = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "query"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with query = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "timeoutMs"; data_type = GapiJson.Scalar },
        Json_type.Int v) ->
      { x with timeoutMs = v }
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.QueryRequest.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module TableList =
struct
  module TablesData =
  struct
    type t = {
      friendlyName : string;
      id : string;
      kind : string;
      tableReference : TableReference.t;
      
    }
    
    let friendlyName = {
      GapiLens.get = (fun x -> x.friendlyName);
      GapiLens.set = (fun v x -> { x with friendlyName = v });
    }
    let id = {
      GapiLens.get = (fun x -> x.id);
      GapiLens.set = (fun v x -> { x with id = v });
    }
    let kind = {
      GapiLens.get = (fun x -> x.kind);
      GapiLens.set = (fun v x -> { x with kind = v });
    }
    let tableReference = {
      GapiLens.get = (fun x -> x.tableReference);
      GapiLens.set = (fun v x -> { x with tableReference = v });
    }
    
    let empty = {
      friendlyName = "";
      id = "";
      kind = "";
      tableReference = TableReference.empty;
      
    }
    
    let rec render_content x = 
       [
        GapiJson.render_string_value "friendlyName" x.friendlyName;
        GapiJson.render_string_value "id" x.id;
        GapiJson.render_string_value "kind" x.kind;
        (fun v -> GapiJson.render_object "tableReference" (TableReference.render_content v)) x.tableReference;
        
      ]
    and render x = 
      GapiJson.render_object "" (render_content x)
    
    let rec parse x = function
      | GapiCore.AnnotatedTree.Leaf
          ({ GapiJson.name = "friendlyName"; data_type = GapiJson.Scalar },
          Json_type.String v) ->
        { x with friendlyName = v }
      | GapiCore.AnnotatedTree.Leaf
          ({ GapiJson.name = "id"; data_type = GapiJson.Scalar },
          Json_type.String v) ->
        { x with id = v }
      | GapiCore.AnnotatedTree.Leaf
          ({ GapiJson.name = "kind"; data_type = GapiJson.Scalar },
          Json_type.String v) ->
        { x with kind = v }
      | GapiCore.AnnotatedTree.Node
          ({ GapiJson.name = "tableReference"; data_type = GapiJson.Object },
          cs) ->
        GapiJson.parse_children
          TableReference.parse
          TableReference.empty
          (fun v -> { x with tableReference = v })
          cs
      | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = ""; data_type = GapiJson.Object },
        cs) ->
        GapiJson.parse_children parse empty (fun x -> x) cs
      | e ->
        GapiJson.unexpected "GapiBigqueryV2Model.TablesData.parse" e x
    
  end
  
  type t = {
    etag : string;
    kind : string;
    nextPageToken : string;
    tables : TablesData.t list;
    totalItems : int;
    
  }
  
  let etag = {
    GapiLens.get = (fun x -> x.etag);
    GapiLens.set = (fun v x -> { x with etag = v });
  }
  let kind = {
    GapiLens.get = (fun x -> x.kind);
    GapiLens.set = (fun v x -> { x with kind = v });
  }
  let nextPageToken = {
    GapiLens.get = (fun x -> x.nextPageToken);
    GapiLens.set = (fun v x -> { x with nextPageToken = v });
  }
  let tables = {
    GapiLens.get = (fun x -> x.tables);
    GapiLens.set = (fun v x -> { x with tables = v });
  }
  let totalItems = {
    GapiLens.get = (fun x -> x.totalItems);
    GapiLens.set = (fun v x -> { x with totalItems = v });
  }
  
  let empty = {
    etag = "";
    kind = "";
    nextPageToken = "";
    tables = [];
    totalItems = 0;
    
  }
  
  let rec render_content x = 
     [
      GapiJson.render_string_value "etag" x.etag;
      GapiJson.render_string_value "kind" x.kind;
      GapiJson.render_string_value "nextPageToken" x.nextPageToken;
      GapiJson.render_array "tables" TablesData.render x.tables;
      GapiJson.render_int_value "totalItems" x.totalItems;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "etag"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with etag = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "kind"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with kind = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "nextPageToken"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with nextPageToken = v }
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "tables"; data_type = GapiJson.Array },
        cs) ->
      GapiJson.parse_collection
        (fun x' -> function
          | GapiCore.AnnotatedTree.Node
              ({ GapiJson.name = ""; data_type = GapiJson.Object },
              cs) ->
            GapiJson.parse_children
              TablesData.parse
              TablesData.empty
              (fun v -> v)
              cs
          | e ->
            GapiJson.unexpected "GapiBigqueryV2Model.TableList.parse.parse_collection" e x')
        TablesData.empty
        (fun v -> { x with tables = v })
        cs
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "totalItems"; data_type = GapiJson.Scalar },
        Json_type.Int v) ->
      { x with totalItems = v }
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.TableList.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module Dataset =
struct
  module AccessData =
  struct
    type t = {
      domain : string;
      groupByEmail : string;
      role : string;
      specialGroup : string;
      userByEmail : string;
      
    }
    
    let domain = {
      GapiLens.get = (fun x -> x.domain);
      GapiLens.set = (fun v x -> { x with domain = v });
    }
    let groupByEmail = {
      GapiLens.get = (fun x -> x.groupByEmail);
      GapiLens.set = (fun v x -> { x with groupByEmail = v });
    }
    let role = {
      GapiLens.get = (fun x -> x.role);
      GapiLens.set = (fun v x -> { x with role = v });
    }
    let specialGroup = {
      GapiLens.get = (fun x -> x.specialGroup);
      GapiLens.set = (fun v x -> { x with specialGroup = v });
    }
    let userByEmail = {
      GapiLens.get = (fun x -> x.userByEmail);
      GapiLens.set = (fun v x -> { x with userByEmail = v });
    }
    
    let empty = {
      domain = "";
      groupByEmail = "";
      role = "";
      specialGroup = "";
      userByEmail = "";
      
    }
    
    let rec render_content x = 
       [
        GapiJson.render_string_value "domain" x.domain;
        GapiJson.render_string_value "groupByEmail" x.groupByEmail;
        GapiJson.render_string_value "role" x.role;
        GapiJson.render_string_value "specialGroup" x.specialGroup;
        GapiJson.render_string_value "userByEmail" x.userByEmail;
        
      ]
    and render x = 
      GapiJson.render_object "" (render_content x)
    
    let rec parse x = function
      | GapiCore.AnnotatedTree.Leaf
          ({ GapiJson.name = "domain"; data_type = GapiJson.Scalar },
          Json_type.String v) ->
        { x with domain = v }
      | GapiCore.AnnotatedTree.Leaf
          ({ GapiJson.name = "groupByEmail"; data_type = GapiJson.Scalar },
          Json_type.String v) ->
        { x with groupByEmail = v }
      | GapiCore.AnnotatedTree.Leaf
          ({ GapiJson.name = "role"; data_type = GapiJson.Scalar },
          Json_type.String v) ->
        { x with role = v }
      | GapiCore.AnnotatedTree.Leaf
          ({ GapiJson.name = "specialGroup"; data_type = GapiJson.Scalar },
          Json_type.String v) ->
        { x with specialGroup = v }
      | GapiCore.AnnotatedTree.Leaf
          ({ GapiJson.name = "userByEmail"; data_type = GapiJson.Scalar },
          Json_type.String v) ->
        { x with userByEmail = v }
      | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = ""; data_type = GapiJson.Object },
        cs) ->
        GapiJson.parse_children parse empty (fun x -> x) cs
      | e ->
        GapiJson.unexpected "GapiBigqueryV2Model.AccessData.parse" e x
    
  end
  
  type t = {
    access : AccessData.t list;
    creationTime : string;
    datasetReference : DatasetReference.t;
    description : string;
    etag : string;
    friendlyName : string;
    id : string;
    kind : string;
    lastModifiedTime : string;
    selfLink : string;
    
  }
  
  let access = {
    GapiLens.get = (fun x -> x.access);
    GapiLens.set = (fun v x -> { x with access = v });
  }
  let creationTime = {
    GapiLens.get = (fun x -> x.creationTime);
    GapiLens.set = (fun v x -> { x with creationTime = v });
  }
  let datasetReference = {
    GapiLens.get = (fun x -> x.datasetReference);
    GapiLens.set = (fun v x -> { x with datasetReference = v });
  }
  let description = {
    GapiLens.get = (fun x -> x.description);
    GapiLens.set = (fun v x -> { x with description = v });
  }
  let etag = {
    GapiLens.get = (fun x -> x.etag);
    GapiLens.set = (fun v x -> { x with etag = v });
  }
  let friendlyName = {
    GapiLens.get = (fun x -> x.friendlyName);
    GapiLens.set = (fun v x -> { x with friendlyName = v });
  }
  let id = {
    GapiLens.get = (fun x -> x.id);
    GapiLens.set = (fun v x -> { x with id = v });
  }
  let kind = {
    GapiLens.get = (fun x -> x.kind);
    GapiLens.set = (fun v x -> { x with kind = v });
  }
  let lastModifiedTime = {
    GapiLens.get = (fun x -> x.lastModifiedTime);
    GapiLens.set = (fun v x -> { x with lastModifiedTime = v });
  }
  let selfLink = {
    GapiLens.get = (fun x -> x.selfLink);
    GapiLens.set = (fun v x -> { x with selfLink = v });
  }
  
  let empty = {
    access = [];
    creationTime = "";
    datasetReference = DatasetReference.empty;
    description = "";
    etag = "";
    friendlyName = "";
    id = "";
    kind = "";
    lastModifiedTime = "";
    selfLink = "";
    
  }
  
  let rec render_content x = 
     [
      GapiJson.render_array "access" AccessData.render x.access;
      GapiJson.render_string_value "creationTime" x.creationTime;
      (fun v -> GapiJson.render_object "datasetReference" (DatasetReference.render_content v)) x.datasetReference;
      GapiJson.render_string_value "description" x.description;
      GapiJson.render_string_value "etag" x.etag;
      GapiJson.render_string_value "friendlyName" x.friendlyName;
      GapiJson.render_string_value "id" x.id;
      GapiJson.render_string_value "kind" x.kind;
      GapiJson.render_string_value "lastModifiedTime" x.lastModifiedTime;
      GapiJson.render_string_value "selfLink" x.selfLink;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "access"; data_type = GapiJson.Array },
        cs) ->
      GapiJson.parse_collection
        (fun x' -> function
          | GapiCore.AnnotatedTree.Node
              ({ GapiJson.name = ""; data_type = GapiJson.Object },
              cs) ->
            GapiJson.parse_children
              AccessData.parse
              AccessData.empty
              (fun v -> v)
              cs
          | e ->
            GapiJson.unexpected "GapiBigqueryV2Model.Dataset.parse.parse_collection" e x')
        AccessData.empty
        (fun v -> { x with access = v })
        cs
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "creationTime"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with creationTime = v }
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "datasetReference"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        DatasetReference.parse
        DatasetReference.empty
        (fun v -> { x with datasetReference = v })
        cs
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "description"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with description = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "etag"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with etag = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "friendlyName"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with friendlyName = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "id"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with id = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "kind"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with kind = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "lastModifiedTime"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with lastModifiedTime = v }
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "selfLink"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with selfLink = v }
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.Dataset.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end

module QueryResponse =
struct
  type t = {
    jobComplete : bool;
    jobReference : JobReference.t;
    kind : string;
    rows : TableRow.t list;
    schema : TableSchema.t;
    totalRows : string;
    
  }
  
  let jobComplete = {
    GapiLens.get = (fun x -> x.jobComplete);
    GapiLens.set = (fun v x -> { x with jobComplete = v });
  }
  let jobReference = {
    GapiLens.get = (fun x -> x.jobReference);
    GapiLens.set = (fun v x -> { x with jobReference = v });
  }
  let kind = {
    GapiLens.get = (fun x -> x.kind);
    GapiLens.set = (fun v x -> { x with kind = v });
  }
  let rows = {
    GapiLens.get = (fun x -> x.rows);
    GapiLens.set = (fun v x -> { x with rows = v });
  }
  let schema = {
    GapiLens.get = (fun x -> x.schema);
    GapiLens.set = (fun v x -> { x with schema = v });
  }
  let totalRows = {
    GapiLens.get = (fun x -> x.totalRows);
    GapiLens.set = (fun v x -> { x with totalRows = v });
  }
  
  let empty = {
    jobComplete = false;
    jobReference = JobReference.empty;
    kind = "";
    rows = [];
    schema = TableSchema.empty;
    totalRows = "";
    
  }
  
  let rec render_content x = 
     [
      GapiJson.render_bool_value "jobComplete" x.jobComplete;
      (fun v -> GapiJson.render_object "jobReference" (JobReference.render_content v)) x.jobReference;
      GapiJson.render_string_value "kind" x.kind;
      GapiJson.render_array "rows" TableRow.render x.rows;
      (fun v -> GapiJson.render_object "schema" (TableSchema.render_content v)) x.schema;
      GapiJson.render_string_value "totalRows" x.totalRows;
      
    ]
  and render x = 
    GapiJson.render_object "" (render_content x)
  
  let rec parse x = function
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "jobComplete"; data_type = GapiJson.Scalar },
        Json_type.Bool v) ->
      { x with jobComplete = v }
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "jobReference"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        JobReference.parse
        JobReference.empty
        (fun v -> { x with jobReference = v })
        cs
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "kind"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with kind = v }
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "rows"; data_type = GapiJson.Array },
        cs) ->
      GapiJson.parse_collection
        (fun x' -> function
          | GapiCore.AnnotatedTree.Node
              ({ GapiJson.name = ""; data_type = GapiJson.Object },
              cs) ->
            GapiJson.parse_children
              TableRow.parse
              TableRow.empty
              (fun v -> v)
              cs
          | e ->
            GapiJson.unexpected "GapiBigqueryV2Model.QueryResponse.parse.parse_collection" e x')
        TableRow.empty
        (fun v -> { x with rows = v })
        cs
    | GapiCore.AnnotatedTree.Node
        ({ GapiJson.name = "schema"; data_type = GapiJson.Object },
        cs) ->
      GapiJson.parse_children
        TableSchema.parse
        TableSchema.empty
        (fun v -> { x with schema = v })
        cs
    | GapiCore.AnnotatedTree.Leaf
        ({ GapiJson.name = "totalRows"; data_type = GapiJson.Scalar },
        Json_type.String v) ->
      { x with totalRows = v }
    | GapiCore.AnnotatedTree.Node
      ({ GapiJson.name = ""; data_type = GapiJson.Object },
      cs) ->
      GapiJson.parse_children parse empty (fun x -> x) cs
    | e ->
      GapiJson.unexpected "GapiBigqueryV2Model.QueryResponse.parse" e x
  
  let to_data_model = GapiJson.render_root render
  
  let of_data_model = GapiJson.parse_root parse empty
  
end
