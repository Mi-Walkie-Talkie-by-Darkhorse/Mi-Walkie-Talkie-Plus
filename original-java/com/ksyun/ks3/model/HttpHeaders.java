package com.ksyun.ks3.model;

import org.jboss.netty.handler.codec.http.HttpHeaders.Names;

public enum HttpHeaders {
    RequestId("x-kss-request-id"),
    Authorization("Authorization"),
    Date("Date"),
    Host("Host"),
    ContentMD5(Names.CONTENT_MD5),
    UserAgent("User-Agent"),
    IfMatch("If-Match"),
    IfNoneMatch(Names.IF_NONE_MATCH),
    IfModifiedSince("If-Modified-Since"),
    IfUnmodifiedSince(Names.IF_UNMODIFIED_SINCE),
    ContentLength("Content-Length"),
    CacheControl("Cache-Control"),
    ContentType("Content-Type"),
    ContentDisposition(HttpPostBodyUtil.CONTENT_DISPOSITION),
    ContentEncoding("Content-Encoding"),
    Expires("Expires"),
    Range("Range"),
    CannedAcl("x-kss-acl"),
    AclPrivate("x-kss-acl-private"),
    AclPubicRead("x-kss-acl-public-read"),
    AclPublicReadWrite("x-kss-acl-public-write"),
    AclPublicAuthenticatedRead("x-kss-acl-public-authenticated-read"),
    GrantFullControl("x-kss-grant-full-control"),
    GrantRead("x-kss-grant-read"),
    GrantWrite("x-kss-grant-write"),
    ServerSideEncryption("x-kss-server-side-encryption"),
    ETag(Names.ETAG),
    LastModified("Last-Modified"),
    XKssDeleteMarker("x-kss-delete-marker"),
    XKssExpiration("x-kss-expiration"),
    XKssRestore("x-kss-restore"),
    XKssWebsiteRedirectLocation("x-kss-website-redirect-location"),
    XKssCopySource("x-kss-copy-source"),
    XKssCallBackUrl("x-kss-callbackurl"),
    XKssCallBackBody("x-kss-callbackbody");
    
    private String J;

    private HttpHeaders(String str) {
        this.J = str;
    }

    public String toString() {
        return this.J;
    }
}
