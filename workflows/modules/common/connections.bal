import ballerina/http;

// HTTP client for external BIAN services
public final http:Client businessDevBianClient = check new (businessDevBianServiceUrl);
public final http:Client businessManBianClient = check new (businessManBianServiceUrl);
public final http:Client channelsBianClient = check new (channelsBianServiceUrl);
public final http:Client customersBianClient = check new (customersBianServiceUrl);
public final http:Client frMgmtBianClient = check new (frMgmtBianServiceUrl);
public final http:Client operationsBianClient = check new (operationsBianServiceUrl);
public final http:Client productsBianClient = check new (productsBianServiceUrl);


