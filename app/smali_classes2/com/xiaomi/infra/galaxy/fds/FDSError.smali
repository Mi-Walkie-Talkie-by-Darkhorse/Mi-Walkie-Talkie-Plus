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
    .locals 30

    .line 1
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v1, "BucketAccessDenied"

    const/4 v2, 0x0

    const-string v3, "Bucket Access Denied"

    const/16 v4, 0x193

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/FDSError;->BucketAccessDenied:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 2
    new-instance v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v3, "BucketAlreadyExists"

    const/4 v5, 0x1

    const-string v6, "Bucket Already Exists"

    const/16 v7, 0x199

    invoke-direct {v1, v3, v5, v6, v7}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/xiaomi/infra/galaxy/fds/FDSError;->BucketAlreadyExists:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 3
    new-instance v3, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v6, "BucketNotFound"

    const/4 v8, 0x2

    const-string v9, "Bucket Not Found"

    const/16 v10, 0x194

    invoke-direct {v3, v6, v8, v9, v10}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/xiaomi/infra/galaxy/fds/FDSError;->BucketNotFound:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 4
    new-instance v6, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v9, "ObjectAccessDenied"

    const/4 v11, 0x3

    const-string v12, "Object Access Denied"

    invoke-direct {v6, v9, v11, v12, v4}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/xiaomi/infra/galaxy/fds/FDSError;->ObjectAccessDenied:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 5
    new-instance v9, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v12, "ObjectAlreadyExists"

    const/4 v13, 0x4

    const-string v14, "Object Already Exists"

    invoke-direct {v9, v12, v13, v14, v7}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/xiaomi/infra/galaxy/fds/FDSError;->ObjectAlreadyExists:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 6
    new-instance v7, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v12, "ObjectNotFound"

    const/4 v14, 0x5

    const-string v15, "Object Not Found"

    invoke-direct {v7, v12, v14, v15, v10}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/xiaomi/infra/galaxy/fds/FDSError;->ObjectNotFound:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 7
    new-instance v10, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v12, "BrokenObject"

    const/4 v15, 0x6

    const-string v14, "Object Data Broken"

    const/16 v13, 0x1f4

    invoke-direct {v10, v12, v15, v14, v13}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lcom/xiaomi/infra/galaxy/fds/FDSError;->BrokenObject:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 8
    new-instance v12, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v14, "InternalServerError"

    const/4 v15, 0x7

    const-string v11, "Internal Server Error"

    invoke-direct {v12, v14, v15, v11, v13}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/xiaomi/infra/galaxy/fds/FDSError;->InternalServerError:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 9
    new-instance v11, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v14, "RequestTimeout"

    const/16 v15, 0x8

    const-string v8, "Request Timeout"

    const/16 v5, 0x190

    invoke-direct {v11, v14, v15, v8, v5}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lcom/xiaomi/infra/galaxy/fds/FDSError;->RequestTimeout:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 10
    new-instance v8, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v14, "InvalidRequest"

    const/16 v15, 0x9

    const-string v2, "Invalid Request"

    invoke-direct {v8, v14, v15, v2, v5}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lcom/xiaomi/infra/galaxy/fds/FDSError;->InvalidRequest:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 11
    new-instance v2, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v14, "SignatureDoesNotMatch"

    const/16 v15, 0xa

    const-string v13, "Signature Does Not Match"

    invoke-direct {v2, v14, v15, v13, v4}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/xiaomi/infra/galaxy/fds/FDSError;->SignatureDoesNotMatch:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 12
    new-instance v13, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v14, "RequestTimeTooSkewed"

    const/16 v15, 0xb

    const-string v5, "Request Time Too Skewed"

    invoke-direct {v13, v14, v15, v5, v4}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v13, Lcom/xiaomi/infra/galaxy/fds/FDSError;->RequestTimeTooSkewed:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 13
    new-instance v5, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v14, "RequestExpired"

    const/16 v15, 0xc

    move-object/from16 v18, v13

    const-string v13, "Request Expired"

    invoke-direct {v5, v14, v15, v13, v4}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/xiaomi/infra/galaxy/fds/FDSError;->RequestExpired:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 14
    new-instance v13, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v14, "InvalidOAuthParameters"

    const/16 v15, 0xd

    const-string v4, "Invalid OAuth Parameters"

    move-object/from16 v20, v5

    const/16 v5, 0x190

    invoke-direct {v13, v14, v15, v4, v5}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v13, Lcom/xiaomi/infra/galaxy/fds/FDSError;->InvalidOAuthParameters:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 15
    new-instance v4, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v14, "VerifyOAuthAccessTokenError"

    const/16 v15, 0xe

    move-object/from16 v21, v13

    const-string v13, "Verify OAuth Access Token Error"

    invoke-direct {v4, v14, v15, v13, v5}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/xiaomi/infra/galaxy/fds/FDSError;->VerifyOAuthAccessTokenError:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 16
    new-instance v13, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v14, "QuotaExceeded"

    const/16 v15, 0xf

    move-object/from16 v22, v4

    const-string v4, "Quota Exceeded"

    invoke-direct {v13, v14, v15, v4, v5}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v13, Lcom/xiaomi/infra/galaxy/fds/FDSError;->QuotaExceeded:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 17
    new-instance v4, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v14, "ChecksumDoesNotMatch"

    const/16 v15, 0x10

    move-object/from16 v23, v13

    const-string v13, "Checksum Does Not Match"

    invoke-direct {v4, v14, v15, v13, v5}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/xiaomi/infra/galaxy/fds/FDSError;->ChecksumDoesNotMatch:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 18
    new-instance v5, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v13, "RequestNotSupported"

    const/16 v14, 0x11

    const-string v15, "Request Not Supported"

    move-object/from16 v24, v4

    const/16 v4, 0x1f5

    invoke-direct {v5, v13, v14, v15, v4}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/xiaomi/infra/galaxy/fds/FDSError;->RequestNotSupported:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 19
    new-instance v4, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v13, "InvalidRequestRange"

    const/16 v14, 0x12

    const-string v15, "Request Out of Range"

    move-object/from16 v25, v5

    const/16 v5, 0x1a0

    invoke-direct {v4, v13, v14, v15, v5}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/xiaomi/infra/galaxy/fds/FDSError;->InvalidRequestRange:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 20
    new-instance v5, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v13, "AuthenticationFailed"

    const/16 v14, 0x13

    const-string v15, "Authentication Failed"

    move-object/from16 v26, v4

    const/16 v4, 0x190

    invoke-direct {v5, v13, v14, v15, v4}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/xiaomi/infra/galaxy/fds/FDSError;->AuthenticationFailed:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 21
    new-instance v4, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v13, "ServerTooBusy"

    const/16 v14, 0x14

    const-string v15, "Server Too Busy"

    move-object/from16 v27, v5

    const/16 v5, 0x1f4

    invoke-direct {v4, v13, v14, v15, v5}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/xiaomi/infra/galaxy/fds/FDSError;->ServerTooBusy:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 22
    new-instance v5, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v13, "TooManyRequests"

    const/16 v14, 0x15

    const-string v15, "Too Many Requests, Try Later"

    move-object/from16 v16, v4

    const/16 v4, 0x1ad

    invoke-direct {v5, v13, v14, v15, v4}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/xiaomi/infra/galaxy/fds/FDSError;->TooManyRequests:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 23
    new-instance v4, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v13, "InvalidBucketName"

    const/16 v14, 0x16

    const-string v15, "Invalid Bucket Name"

    move-object/from16 v28, v5

    const/16 v5, 0x190

    invoke-direct {v4, v13, v14, v15, v5}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/xiaomi/infra/galaxy/fds/FDSError;->InvalidBucketName:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 24
    new-instance v5, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v13, "DomainMappingAccessDenied"

    const/16 v14, 0x17

    const-string v15, "Domain Mapping Access Denied"

    move-object/from16 v29, v4

    const/16 v4, 0x193

    invoke-direct {v5, v13, v14, v15, v4}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/xiaomi/infra/galaxy/fds/FDSError;->DomainMappingAccessDenied:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 25
    new-instance v4, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v13, "Unknown"

    const/16 v14, 0x18

    const-string v15, "Unknown"

    move-object/from16 v19, v5

    const/16 v5, 0x190

    invoke-direct {v4, v13, v14, v15, v5}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/xiaomi/infra/galaxy/fds/FDSError;->Unknown:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    .line 26
    new-instance v5, Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const-string v13, "Success"

    const/16 v14, 0x19

    const-string v15, "Success"

    move-object/from16 v17, v4

    const/16 v4, 0xc8

    invoke-direct {v5, v13, v14, v15, v4}, Lcom/xiaomi/infra/galaxy/fds/FDSError;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/xiaomi/infra/galaxy/fds/FDSError;->Success:Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/16 v4, 0x1a

    new-array v4, v4, [Lcom/xiaomi/infra/galaxy/fds/FDSError;

    const/4 v13, 0x0

    aput-object v0, v4, v13

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v6, v4, v0

    const/4 v0, 0x4

    aput-object v9, v4, v0

    const/4 v0, 0x5

    aput-object v7, v4, v0

    const/4 v0, 0x6

    aput-object v10, v4, v0

    const/4 v0, 0x7

    aput-object v12, v4, v0

    const/16 v0, 0x8

    aput-object v11, v4, v0

    const/16 v0, 0x9

    aput-object v8, v4, v0

    const/16 v0, 0xa

    aput-object v2, v4, v0

    const/16 v0, 0xb

    aput-object v18, v4, v0

    const/16 v0, 0xc

    aput-object v20, v4, v0

    const/16 v0, 0xd

    aput-object v21, v4, v0

    const/16 v0, 0xe

    aput-object v22, v4, v0

    const/16 v0, 0xf

    aput-object v23, v4, v0

    const/16 v0, 0x10

    aput-object v24, v4, v0

    const/16 v0, 0x11

    aput-object v25, v4, v0

    const/16 v0, 0x12

    aput-object v26, v4, v0

    const/16 v0, 0x13

    aput-object v27, v4, v0

    const/16 v0, 0x14

    aput-object v16, v4, v0

    const/16 v0, 0x15

    aput-object v28, v4, v0

    const/16 v0, 0x16

    aput-object v29, v4, v0

    const/16 v0, 0x17

    aput-object v19, v4, v0

    const/16 v0, 0x18

    aput-object v17, v4, v0

    const/16 v0, 0x19

    aput-object v5, v4, v0

    .line 27
    sput-object v4, Lcom/xiaomi/infra/galaxy/fds/FDSError;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/FDSError;

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
