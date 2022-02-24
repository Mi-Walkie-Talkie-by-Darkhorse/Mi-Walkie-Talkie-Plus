package com.xiaomi.infra.galaxy.fds;

/* loaded from: classes2.dex */
public enum FDSError {
    BucketAccessDenied("Bucket Access Denied", Common.HTTP_STATUS_FORBIDDEN),
    BucketAlreadyExists("Bucket Already Exists", Common.HTTP_STATUS_CONFLICT),
    BucketNotFound("Bucket Not Found", Common.HTTP_STATUS_NOT_FOUND),
    ObjectAccessDenied("Object Access Denied", Common.HTTP_STATUS_FORBIDDEN),
    ObjectAlreadyExists("Object Already Exists", Common.HTTP_STATUS_CONFLICT),
    ObjectNotFound("Object Not Found", Common.HTTP_STATUS_NOT_FOUND),
    BrokenObject("Object Data Broken", 500),
    InternalServerError("Internal Server Error", 500),
    RequestTimeout("Request Timeout", Common.HTTP_STATUS_BAD_REQUEST),
    InvalidRequest("Invalid Request", Common.HTTP_STATUS_BAD_REQUEST),
    SignatureDoesNotMatch("Signature Does Not Match", Common.HTTP_STATUS_FORBIDDEN),
    RequestTimeTooSkewed("Request Time Too Skewed", Common.HTTP_STATUS_FORBIDDEN),
    RequestExpired("Request Expired", Common.HTTP_STATUS_FORBIDDEN),
    InvalidOAuthParameters("Invalid OAuth Parameters", Common.HTTP_STATUS_BAD_REQUEST),
    VerifyOAuthAccessTokenError("Verify OAuth Access Token Error", Common.HTTP_STATUS_BAD_REQUEST),
    QuotaExceeded("Quota Exceeded", Common.HTTP_STATUS_BAD_REQUEST),
    ChecksumDoesNotMatch("Checksum Does Not Match", Common.HTTP_STATUS_BAD_REQUEST),
    RequestNotSupported("Request Not Supported", Common.HTTP_STATUS_NOT_IMPLEMENTED),
    InvalidRequestRange("Request Out of Range", 416),
    AuthenticationFailed("Authentication Failed", Common.HTTP_STATUS_BAD_REQUEST),
    ServerTooBusy("Server Too Busy", 500),
    TooManyRequests("Too Many Requests, Try Later", Common.HTTP_STATUS_TOO_MANY_REQUESTS),
    InvalidBucketName("Invalid Bucket Name", Common.HTTP_STATUS_BAD_REQUEST),
    DomainMappingAccessDenied("Domain Mapping Access Denied", Common.HTTP_STATUS_FORBIDDEN),
    Unknown("Unknown", Common.HTTP_STATUS_BAD_REQUEST),
    Success("Success", 200);
    
    private final String description;
    private final int status;

    FDSError(String str, int i) {
        this.description = str;
        this.status = i;
    }

    public String description() {
        return this.description;
    }

    public int status() {
        return this.status;
    }
}
