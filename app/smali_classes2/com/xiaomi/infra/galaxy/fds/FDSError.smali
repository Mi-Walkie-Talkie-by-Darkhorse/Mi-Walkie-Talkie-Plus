.class public final enum Lcom/xiaomi/infra/galaxy/fds/FDSError;
.super Ljava/lang/Enum;
.source "FDSError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/infra/galaxy/fds/FDSError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum AuthenticationFailed:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum BrokenObject:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum BucketAccessDenied:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum BucketAlreadyExists:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum BucketNotFound:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum ChecksumDoesNotMatch:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum DomainMappingAccessDenied:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum InternalServerError:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum InvalidBucketName:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum InvalidOAuthParameters:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum InvalidRequest:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum InvalidRequestRange:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum ObjectAccessDenied:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum ObjectAlreadyExists:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum ObjectNotFound:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum QuotaExceeded:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum RequestExpired:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum RequestNotSupported:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum RequestTimeTooSkewed:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum RequestTimeout:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum ServerTooBusy:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum SignatureDoesNotMatch:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum Success:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum TooManyRequests:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum Unknown:Lcom/xiaomi/infra/galaxy/fds/FDSError;

.field public static final enum VerifyOAuthAccessTokenError:Lcom/xiaomi/infra/galaxy/fds/FDSError;


# instance fields
.field private final description:Ljava/lang/String;

.field private final status:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/4 v1, 0x0

    const/16 v2, 0x193

    const-string v3, "BucketAccessDenied"

    const-string v4, "Bucket Access Denied"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->BucketAccessDenied:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 2
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v3, 0x199

    const/4 v4, 0x1

    const-string v5, "BucketAlreadyExists"

    const-string v6, "Bucket Already Exists"

    invoke-direct {v0, v5, v4, v6, v3}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->BucketAlreadyExists:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 3
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v5, 0x194

    const/4 v6, 0x2

    const-string v7, "BucketNotFound"

    const-string v8, "Bucket Not Found"

    invoke-direct {v0, v7, v6, v8, v5}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->BucketNotFound:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 4
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/4 v7, 0x3

    const-string v8, "ObjectAccessDenied"

    const-string v9, "Object Access Denied"

    invoke-direct {v0, v8, v7, v9, v2}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->ObjectAccessDenied:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 5
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/4 v8, 0x4

    const-string v9, "ObjectAlreadyExists"

    const-string v10, "Object Already Exists"

    invoke-direct {v0, v9, v8, v10, v3}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->ObjectAlreadyExists:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 6
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/4 v3, 0x5

    const-string v9, "ObjectNotFound"

    const-string v10, "Object Not Found"

    invoke-direct {v0, v9, v3, v10, v5}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->ObjectNotFound:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 7
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/4 v5, 0x6

    const/16 v9, 0x1f4

    const-string v10, "BrokenObject"

    const-string v11, "Object Data Broken"

    invoke-direct {v0, v10, v5, v11, v9}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->BrokenObject:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 8
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/4 v10, 0x7

    const-string v11, "InternalServerError"

    const-string v12, "Internal Server Error"

    invoke-direct {v0, v11, v10, v12, v9}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->InternalServerError:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 9
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v11, 0x8

    const/16 v12, 0x190

    const-string v13, "RequestTimeout"

    const-string v14, "Request Timeout"

    invoke-direct {v0, v13, v11, v14, v12}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->RequestTimeout:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 10
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v13, 0x9

    const-string v14, "InvalidRequest"

    const-string v15, "Invalid Request"

    invoke-direct {v0, v14, v13, v15, v12}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->InvalidRequest:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 11
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v14, 0xa

    const-string v15, "SignatureDoesNotMatch"

    const-string v13, "Signature Does Not Match"

    invoke-direct {v0, v15, v14, v13, v2}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->SignatureDoesNotMatch:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 12
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v13, 0xb

    const-string v15, "RequestTimeTooSkewed"

    const-string v14, "Request Time Too Skewed"

    invoke-direct {v0, v15, v13, v14, v2}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->RequestTimeTooSkewed:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 13
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v14, 0xc

    const-string v15, "RequestExpired"

    const-string v13, "Request Expired"

    invoke-direct {v0, v15, v14, v13, v2}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->RequestExpired:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 14
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v13, 0xd

    const-string v15, "InvalidOAuthParameters"

    const-string v14, "Invalid OAuth Parameters"

    invoke-direct {v0, v15, v13, v14, v12}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->InvalidOAuthParameters:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 15
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v14, 0xe

    const-string v15, "VerifyOAuthAccessTokenError"

    const-string v13, "Verify OAuth Access Token Error"

    invoke-direct {v0, v15, v14, v13, v12}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->VerifyOAuthAccessTokenError:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 16
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v13, 0xf

    const-string v15, "QuotaExceeded"

    const-string v14, "Quota Exceeded"

    invoke-direct {v0, v15, v13, v14, v12}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->QuotaExceeded:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 17
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v14, 0x10

    const-string v15, "ChecksumDoesNotMatch"

    const-string v13, "Checksum Does Not Match"

    invoke-direct {v0, v15, v14, v13, v12}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->ChecksumDoesNotMatch:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 18
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v13, "RequestNotSupported"

    const/16 v15, 0x11

    const-string v14, "Request Not Supported"

    const/16 v11, 0x1f5

    invoke-direct {v0, v13, v15, v14, v11}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->RequestNotSupported:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 19
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v11, "InvalidRequestRange"

    const/16 v13, 0x12

    const-string v14, "Request Out of Range"

    const/16 v15, 0x1a0

    invoke-direct {v0, v11, v13, v14, v15}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->InvalidRequestRange:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 20
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v11, "AuthenticationFailed"

    const/16 v13, 0x13

    const-string v14, "Authentication Failed"

    invoke-direct {v0, v11, v13, v14, v12}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->AuthenticationFailed:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 21
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v11, "ServerTooBusy"

    const/16 v13, 0x14

    const-string v14, "Server Too Busy"

    invoke-direct {v0, v11, v13, v14, v9}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->ServerTooBusy:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 22
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v9, "TooManyRequests"

    const/16 v11, 0x15

    const-string v13, "Too Many Requests, Try Later"

    const/16 v14, 0x1ad

    invoke-direct {v0, v9, v11, v13, v14}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->TooManyRequests:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 23
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v9, "InvalidBucketName"

    const/16 v11, 0x16

    const-string v13, "Invalid Bucket Name"

    invoke-direct {v0, v9, v11, v13, v12}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->InvalidBucketName:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 24
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v9, "DomainMappingAccessDenied"

    const/16 v11, 0x17

    const-string v13, "Domain Mapping Access Denied"

    invoke-direct {v0, v9, v11, v13, v2}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->DomainMappingAccessDenied:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 25
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v2, "Unknown"

    const/16 v9, 0x18

    const-string v11, "Unknown"

    invoke-direct {v0, v2, v9, v11, v12}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->Unknown:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 26
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v2, "Success"

    const/16 v9, 0x19

    const-string v11, "Success"

    const/16 v12, 0xc8

    invoke-direct {v0, v2, v9, v11, v12}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->Success:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v2, 0x1a

    new-array v2, v2, [Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 27
    sget-object v9, Lcom/xiaomi/infra/galaxy/fds/FDSError;->BucketAccessDenied:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    aput-object v9, v2, v1

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->BucketAlreadyExists:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    aput-object v1, v2, v4

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->BucketNotFound:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    aput-object v1, v2, v6

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->ObjectAccessDenied:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    aput-object v1, v2, v7

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->ObjectAlreadyExists:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    aput-object v1, v2, v8

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->ObjectNotFound:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    aput-object v1, v2, v3

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->BrokenObject:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    aput-object v1, v2, v5

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->InternalServerError:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    aput-object v1, v2, v10

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->RequestTimeout:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v3, 0x8

    aput-object v1, v2, v3

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->InvalidRequest:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v3, 0x9

    aput-object v1, v2, v3

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->SignatureDoesNotMatch:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v3, 0xa

    aput-object v1, v2, v3

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->RequestTimeTooSkewed:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v3, 0xb

    aput-object v1, v2, v3

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->RequestExpired:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v3, 0xc

    aput-object v1, v2, v3

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->InvalidOAuthParameters:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v3, 0xd

    aput-object v1, v2, v3

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->VerifyOAuthAccessTokenError:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v3, 0xe

    aput-object v1, v2, v3

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->QuotaExceeded:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v3, 0xf

    aput-object v1, v2, v3

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->ChecksumDoesNotMatch:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v3, 0x10

    aput-object v1, v2, v3

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->RequestNotSupported:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v3, 0x11

    aput-object v1, v2, v3

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->InvalidRequestRange:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v3, 0x12

    aput-object v1, v2, v3

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->AuthenticationFailed:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v3, 0x13

    aput-object v1, v2, v3

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->ServerTooBusy:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v3, 0x14

    aput-object v1, v2, v3

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->TooManyRequests:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v3, 0x15

    aput-object v1, v2, v3

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->InvalidBucketName:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v3, 0x16

    aput-object v1, v2, v3

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->DomainMappingAccessDenied:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v3, 0x17

    aput-object v1, v2, v3

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->Unknown:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v3, 0x18

    aput-object v1, v2, v3

    const/16 v1, 0x19

    aput-object v0, v2, v1

    sput-object v2, Lcom/xiaomi/infra/galaxy/fds/FDSError;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/FDSError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->description:Ljava/lang/String;

    .line 3
    iput p4, p0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->status:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/FDSError;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/infra/galaxy/fds/FDSError;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/FDSError;

    invoke-virtual {v0}, [Lcom/xiaomi/infra/galaxy/fds/FDSError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/infra/galaxy/fds/FDSError;

    return-object v0
.end method


# virtual methods
.method public description()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->description:Ljava/lang/String;

    return-object v0
.end method

.method public status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->status:I

    return v0
.end method
