.class public Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;
.super Ljava/lang/Object;
.source "HttpResponseStatus.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACCEPTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final BAD_GATEWAY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final BAD_REQUEST:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final CONFLICT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final CONTINUE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final CREATED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final EXPECTATION_FAILED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final FAILED_DEPENDENCY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final FORBIDDEN:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final GATEWAY_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final GONE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final HTTP_VERSION_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final INSUFFICIENT_STORAGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final INTERNAL_SERVER_ERROR:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final LENGTH_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final LOCKED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final METHOD_NOT_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final MOVED_PERMANENTLY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final MULTIPLE_CHOICES:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final MULTI_STATUS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NON_AUTHORITATIVE_INFORMATION:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_ACCEPTABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_EXTENDED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_IMPLEMENTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_MODIFIED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NO_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final OK:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PARTIAL_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PAYMENT_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PRECONDITION_FAILED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PROCESSING:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PROXY_AUTHENTICATION_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_ENTITY_TOO_LARGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_URI_TOO_LONG:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final RESET_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final SEE_OTHER:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final SERVICE_UNAVAILABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final SWITCHING_PROTOCOLS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final TEMPORARY_REDIRECT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNAUTHORIZED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNORDERED_COLLECTION:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNPROCESSABLE_ENTITY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNSUPPORTED_MEDIA_TYPE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final UPGRADE_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final USE_PROXY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final VARIANT_ALSO_NEGOTIATES:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;


# instance fields
.field private final code:I

.field private final reasonPhrase:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x64

    const-string v2, "Continue"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->CONTINUE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x65

    const-string v2, "Switching Protocols"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x66

    const-string v2, "Processing"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PROCESSING:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0xc8

    const-string v2, "OK"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->OK:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0xc9

    const-string v2, "Created"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->CREATED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0xca

    const-string v2, "Accepted"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->ACCEPTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0xcb

    const-string v2, "Non-Authoritative Information"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NON_AUTHORITATIVE_INFORMATION:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0xcc

    const-string v2, "No Content"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NO_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0xcd

    const-string v2, "Reset Content"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->RESET_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0xce

    const-string v2, "Partial Content"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PARTIAL_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0xcf

    const-string v2, "Multi-Status"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->MULTI_STATUS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x12c

    const-string v2, "Multiple Choices"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->MULTIPLE_CHOICES:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x12d

    const-string v2, "Moved Permanently"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->MOVED_PERMANENTLY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x12e

    const-string v2, "Found"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x12f

    const-string v2, "See Other"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SEE_OTHER:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x130

    const-string v2, "Not Modified"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_MODIFIED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x131

    const-string v2, "Use Proxy"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->USE_PROXY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x133

    const-string v2, "Temporary Redirect"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->TEMPORARY_REDIRECT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x190

    const-string v2, "Bad Request"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->BAD_REQUEST:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x191

    const-string v2, "Unauthorized"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNAUTHORIZED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x192

    const-string v2, "Payment Required"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PAYMENT_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x193

    const-string v2, "Forbidden"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->FORBIDDEN:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x194

    const-string v2, "Not Found"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x195

    const-string v2, "Method Not Allowed"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->METHOD_NOT_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x196

    const-string v2, "Not Acceptable"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_ACCEPTABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x197

    const-string v2, "Proxy Authentication Required"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PROXY_AUTHENTICATION_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x198

    const-string v2, "Request Timeout"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUEST_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x199

    const-string v2, "Conflict"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->CONFLICT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x19a

    const-string v2, "Gone"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->GONE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x19b

    const-string v2, "Length Required"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->LENGTH_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x19c

    const-string v2, "Precondition Failed"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PRECONDITION_FAILED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x19d

    const-string v2, "Request Entity Too Large"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUEST_ENTITY_TOO_LARGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x19e

    const-string v2, "Request-URI Too Long"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUEST_URI_TOO_LONG:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x19f

    const-string v2, "Unsupported Media Type"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNSUPPORTED_MEDIA_TYPE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1a0

    const-string v2, "Requested Range Not Satisfiable"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1a1

    const-string v2, "Expectation Failed"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->EXPECTATION_FAILED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1a6

    const-string v2, "Unprocessable Entity"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNPROCESSABLE_ENTITY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1a7

    const-string v2, "Locked"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->LOCKED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1a8

    const-string v2, "Failed Dependency"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->FAILED_DEPENDENCY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1a9

    const-string v2, "Unordered Collection"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNORDERED_COLLECTION:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1aa

    const-string v2, "Upgrade Required"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UPGRADE_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1f4

    const-string v2, "Internal Server Error"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->INTERNAL_SERVER_ERROR:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1f5

    const-string v2, "Not Implemented"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_IMPLEMENTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1f6

    const-string v2, "Bad Gateway"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->BAD_GATEWAY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1f7

    const-string v2, "Service Unavailable"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SERVICE_UNAVAILABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1f8

    const-string v2, "Gateway Timeout"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->GATEWAY_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1f9

    const-string v2, "HTTP Version Not Supported"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->HTTP_VERSION_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1fa

    const-string v2, "Variant Also Negotiates"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->VARIANT_ALSO_NEGOTIATES:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1fb

    const-string v2, "Insufficient Storage"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->INSUFFICIENT_STORAGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1fe

    const-string v2, "Not Extended"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_EXTENDED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 0+)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "reasonPhrase"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reasonPhrase contains one of the following prohibited characters: \\r\\n: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->code:I

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->reasonPhrase:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(I)Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;
    .locals 3

    sparse-switch p0, :sswitch_data_0

    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

    const-string v0, "Unknown Status"

    :goto_0
    new-instance v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :sswitch_0
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->CONTINUE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_1
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_2
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PROCESSING:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_3
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->OK:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_4
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->CREATED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_5
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->ACCEPTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_6
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NON_AUTHORITATIVE_INFORMATION:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_7
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NO_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_8
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->RESET_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_9
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PARTIAL_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_a
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->MULTI_STATUS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_b
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->MULTIPLE_CHOICES:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_c
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->MOVED_PERMANENTLY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_d
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_e
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SEE_OTHER:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_f
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_MODIFIED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_10
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->USE_PROXY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_11
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->TEMPORARY_REDIRECT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_12
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->BAD_REQUEST:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_13
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNAUTHORIZED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_14
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PAYMENT_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_15
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->FORBIDDEN:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_16
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_17
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->METHOD_NOT_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_18
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_ACCEPTABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_19
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PROXY_AUTHENTICATION_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_1a
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUEST_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_1b
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->CONFLICT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_1c
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->GONE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_1d
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->LENGTH_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_1e
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PRECONDITION_FAILED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_1f
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUEST_ENTITY_TOO_LARGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_20
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUEST_URI_TOO_LONG:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_21
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNSUPPORTED_MEDIA_TYPE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_22
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_23
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->EXPECTATION_FAILED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_24
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNPROCESSABLE_ENTITY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_25
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->LOCKED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_26
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->FAILED_DEPENDENCY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_27
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNORDERED_COLLECTION:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_28
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UPGRADE_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_29
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->INTERNAL_SERVER_ERROR:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    :sswitch_2a
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_IMPLEMENTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto/16 :goto_1

    :sswitch_2b
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->BAD_GATEWAY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto/16 :goto_1

    :sswitch_2c
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SERVICE_UNAVAILABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto/16 :goto_1

    :sswitch_2d
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->GATEWAY_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto/16 :goto_1

    :sswitch_2e
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->HTTP_VERSION_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto/16 :goto_1

    :sswitch_2f
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->VARIANT_ALSO_NEGOTIATES:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto/16 :goto_1

    :sswitch_30
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->INSUFFICIENT_STORAGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto/16 :goto_1

    :sswitch_31
    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_EXTENDED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0xc8

    if-ge p0, v0, :cond_1

    const-string v0, "Informational"

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x12c

    if-ge p0, v0, :cond_2

    const-string v0, "Successful"

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x190

    if-ge p0, v0, :cond_3

    const-string v0, "Redirection"

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_4

    const-string v0, "Client Error"

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x258

    if-ge p0, v0, :cond_5

    const-string v0, "Server Error"

    goto/16 :goto_0

    :cond_5
    const-string v0, "Unknown Status"

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0xc8 -> :sswitch_3
        0xc9 -> :sswitch_4
        0xca -> :sswitch_5
        0xcb -> :sswitch_6
        0xcc -> :sswitch_7
        0xcd -> :sswitch_8
        0xce -> :sswitch_9
        0xcf -> :sswitch_a
        0x12c -> :sswitch_b
        0x12d -> :sswitch_c
        0x12e -> :sswitch_d
        0x12f -> :sswitch_e
        0x130 -> :sswitch_f
        0x131 -> :sswitch_10
        0x133 -> :sswitch_11
        0x190 -> :sswitch_12
        0x191 -> :sswitch_13
        0x192 -> :sswitch_14
        0x193 -> :sswitch_15
        0x194 -> :sswitch_16
        0x195 -> :sswitch_17
        0x196 -> :sswitch_18
        0x197 -> :sswitch_19
        0x198 -> :sswitch_1a
        0x199 -> :sswitch_1b
        0x19a -> :sswitch_1c
        0x19b -> :sswitch_1d
        0x19c -> :sswitch_1e
        0x19d -> :sswitch_1f
        0x19e -> :sswitch_20
        0x19f -> :sswitch_21
        0x1a0 -> :sswitch_22
        0x1a1 -> :sswitch_23
        0x1a6 -> :sswitch_24
        0x1a7 -> :sswitch_25
        0x1a8 -> :sswitch_26
        0x1a9 -> :sswitch_27
        0x1aa -> :sswitch_28
        0x1f4 -> :sswitch_29
        0x1f5 -> :sswitch_2a
        0x1f6 -> :sswitch_2b
        0x1f7 -> :sswitch_2c
        0x1f8 -> :sswitch_2d
        0x1f9 -> :sswitch_2e
        0x1fa -> :sswitch_2f
        0x1fb -> :sswitch_30
        0x1fe -> :sswitch_31
    .end sparse-switch
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->compareTo(Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)I
    .locals 2

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v1

    check-cast p1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {p1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->code:I

    return v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->reasonPhrase:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->reasonPhrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
