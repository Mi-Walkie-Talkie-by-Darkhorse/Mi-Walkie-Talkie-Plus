.class public final Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;
.super Ljava/lang/Object;
.source "RtspResponseStatuses.java"


# static fields
.field public static final AGGREGATE_OPERATION_NOT_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final BAD_GATEWAY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final BAD_REQUEST:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final CONFERENCE_NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final CONTINUE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final CREATED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final DESTINATION_UNREACHABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final FORBIDDEN:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final GATEWAY_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final GONE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final HEADER_FIELD_NOT_VALID:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final INTERNAL_SERVER_ERROR:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final INVALID_RANGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final KEY_MANAGEMENT_FAILURE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final LENGTH_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final LOW_STORAGE_SPACE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final METHOD_NOT_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final METHOD_NOT_VALID:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final MOVED_PERMANENTLY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final MOVED_TEMPORARILY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final MULTIPLE_CHOICES:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_ACCEPTABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_ENOUGH_BANDWIDTH:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_IMPLEMENTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_MODIFIED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final OK:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final ONLY_AGGREGATE_OPERATION_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final OPTION_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PARAMETER_IS_READONLY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PARAMETER_NOT_UNDERSTOOD:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PAYMENT_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PRECONDITION_FAILED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PROXY_AUTHENTICATION_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_ENTITY_TOO_LARGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_URI_TOO_LONG:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final RTSP_VERSION_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final SERVICE_UNAVAILABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final SESSION_NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNAUTHORIZED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNSUPPORTED_MEDIA_TYPE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNSUPPORTED_TRANSPORT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final USE_PROXY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->CONTINUE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->CONTINUE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->OK:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->OK:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->CREATED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->CREATED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0xfa

    const-string v2, "Low on Storage Space"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->LOW_STORAGE_SPACE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->MULTIPLE_CHOICES:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->MULTIPLE_CHOICES:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->MOVED_PERMANENTLY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->MOVED_PERMANENTLY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x12e

    const-string v2, "Moved Temporarily"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->MOVED_TEMPORARILY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_MODIFIED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->NOT_MODIFIED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->USE_PROXY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->USE_PROXY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->BAD_REQUEST:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->BAD_REQUEST:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNAUTHORIZED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->UNAUTHORIZED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PAYMENT_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->PAYMENT_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->FORBIDDEN:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->FORBIDDEN:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->METHOD_NOT_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->METHOD_NOT_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_ACCEPTABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->NOT_ACCEPTABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PROXY_AUTHENTICATION_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->PROXY_AUTHENTICATION_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUEST_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->REQUEST_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->GONE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->GONE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->LENGTH_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->LENGTH_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PRECONDITION_FAILED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->PRECONDITION_FAILED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUEST_ENTITY_TOO_LARGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->REQUEST_ENTITY_TOO_LARGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUEST_URI_TOO_LONG:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->REQUEST_URI_TOO_LONG:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNSUPPORTED_MEDIA_TYPE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->UNSUPPORTED_MEDIA_TYPE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1c3

    const-string v2, "Parameter Not Understood"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->PARAMETER_NOT_UNDERSTOOD:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1c4

    const-string v2, "Conference Not Found"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->CONFERENCE_NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1c5

    const-string v2, "Not Enough Bandwidth"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->NOT_ENOUGH_BANDWIDTH:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1c6

    const-string v2, "Session Not Found"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->SESSION_NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1c7

    const-string v2, "Method Not Valid in This State"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->METHOD_NOT_VALID:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1c8

    const-string v2, "Header Field Not Valid for Resource"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->HEADER_FIELD_NOT_VALID:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1c9

    const-string v2, "Invalid Range"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->INVALID_RANGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1ca

    const-string v2, "Parameter Is Read-Only"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->PARAMETER_IS_READONLY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1cb

    const-string v2, "Aggregate operation not allowed"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->AGGREGATE_OPERATION_NOT_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1cc

    const-string v2, "Only Aggregate operation allowed"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->ONLY_AGGREGATE_OPERATION_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1cd

    const-string v2, "Unsupported transport"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->UNSUPPORTED_TRANSPORT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1ce

    const-string v2, "Destination unreachable"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->DESTINATION_UNREACHABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1cf

    const-string v2, "Key management failure"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->KEY_MANAGEMENT_FAILURE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->INTERNAL_SERVER_ERROR:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->INTERNAL_SERVER_ERROR:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_IMPLEMENTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->NOT_IMPLEMENTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->BAD_GATEWAY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->BAD_GATEWAY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SERVICE_UNAVAILABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->SERVICE_UNAVAILABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->GATEWAY_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->GATEWAY_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1f9

    const-string v2, "RTSP Version not supported"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->RTSP_VERSION_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x227

    const-string v2, "Option not supported"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->OPTION_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(I)Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->valueOf(I)Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->LOW_STORAGE_SPACE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->MOVED_TEMPORARILY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->PARAMETER_NOT_UNDERSTOOD:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->CONFERENCE_NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_0

    :sswitch_4
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->NOT_ENOUGH_BANDWIDTH:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_0

    :sswitch_5
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->SESSION_NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_0

    :sswitch_6
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->METHOD_NOT_VALID:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_0

    :sswitch_7
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->HEADER_FIELD_NOT_VALID:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_0

    :sswitch_8
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->INVALID_RANGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_0

    :sswitch_9
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->PARAMETER_IS_READONLY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_0

    :sswitch_a
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->AGGREGATE_OPERATION_NOT_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_0

    :sswitch_b
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->ONLY_AGGREGATE_OPERATION_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_0

    :sswitch_c
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->UNSUPPORTED_TRANSPORT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_0

    :sswitch_d
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->DESTINATION_UNREACHABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_0

    :sswitch_e
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->KEY_MANAGEMENT_FAILURE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_0

    :sswitch_f
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->RTSP_VERSION_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_0

    :sswitch_10
    sget-object v0, Lorg/jboss/netty/handler/codec/rtsp/RtspResponseStatuses;->OPTION_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xfa -> :sswitch_0
        0x12e -> :sswitch_1
        0x1c3 -> :sswitch_2
        0x1c4 -> :sswitch_3
        0x1c5 -> :sswitch_4
        0x1c6 -> :sswitch_5
        0x1c7 -> :sswitch_6
        0x1c8 -> :sswitch_7
        0x1c9 -> :sswitch_8
        0x1ca -> :sswitch_9
        0x1cb -> :sswitch_a
        0x1cc -> :sswitch_b
        0x1cd -> :sswitch_c
        0x1ce -> :sswitch_d
        0x1cf -> :sswitch_e
        0x1f9 -> :sswitch_f
        0x227 -> :sswitch_10
    .end sparse-switch
.end method
