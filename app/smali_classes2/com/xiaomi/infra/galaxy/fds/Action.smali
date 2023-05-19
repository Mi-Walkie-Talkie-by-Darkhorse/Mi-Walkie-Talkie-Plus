.class public final enum Lcom/xiaomi/infra/galaxy/fds/Action;
.super Ljava/lang/Enum;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/infra/galaxy/fds/Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum AbortMultiPartUpload:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum CompleteMultiPartUpload:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum CropImage:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum DeleteBucket:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum DeleteBucketACL:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum DeleteDomainMapping:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum DeleteObject:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum DeleteObjectACL:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum DeleteObjects:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum GetBills:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum GetBucketACL:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum GetBucketMeta:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum GetBucketQuota:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum GetBucketUsage:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum GetDeveloperInfo:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum GetMetrics:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum GetObject:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum GetObjectACL:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum GetObjectMetadata:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum GetPresignedUrl:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum GetStorageToken:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum GetTimeSeriesData:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum HeadBucket:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum HeadObject:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum InitMultiPartUpload:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum ListAuthorizedBuckets:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum ListBuckets:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum ListDomainMappings:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum ListMultiPart:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum ListMultiPartUploads:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum ListObjects:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum ListParts:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum ListTrashObjects:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum PostObject:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum PrefetchObject:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum PutBucket:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum PutBucketACL:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum PutBucketQuota:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum PutClientMetrics:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum PutDomainMapping:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum PutObject:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum PutObjectACL:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum RefreshObject:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum RenameObject:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum RestoreObject:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum Unknown:Lcom/xiaomi/infra/galaxy/fds/Action;

.field public static final enum UploadPart:Lcom/xiaomi/infra/galaxy/fds/Action;


# instance fields
.field private final needThrottle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 50

    .line 1
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v1, "GetStorageToken"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->GetStorageToken:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 2
    new-instance v1, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v3, "ListBuckets"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->ListBuckets:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 3
    new-instance v3, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v5, "ListAuthorizedBuckets"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/xiaomi/infra/galaxy/fds/Action;->ListAuthorizedBuckets:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 4
    new-instance v5, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v7, "PutBucket"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/xiaomi/infra/galaxy/fds/Action;->PutBucket:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 5
    new-instance v7, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v9, "HeadBucket"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lcom/xiaomi/infra/galaxy/fds/Action;->HeadBucket:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 6
    new-instance v9, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v11, "DeleteBucket"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lcom/xiaomi/infra/galaxy/fds/Action;->DeleteBucket:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 7
    new-instance v11, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v13, "DeleteObjects"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Lcom/xiaomi/infra/galaxy/fds/Action;->DeleteObjects:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 8
    new-instance v13, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v15, "ListObjects"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Lcom/xiaomi/infra/galaxy/fds/Action;->ListObjects:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 9
    new-instance v15, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "PutObject"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Lcom/xiaomi/infra/galaxy/fds/Action;->PutObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 10
    new-instance v14, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v12, "PostObject"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Lcom/xiaomi/infra/galaxy/fds/Action;->PostObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 11
    new-instance v12, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v10, "HeadObject"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v12, Lcom/xiaomi/infra/galaxy/fds/Action;->HeadObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 12
    new-instance v10, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "DeleteObject"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v10, Lcom/xiaomi/infra/galaxy/fds/Action;->DeleteObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 13
    new-instance v8, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v6, "GetObject"

    const/16 v2, 0xc

    invoke-direct {v8, v6, v2, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Lcom/xiaomi/infra/galaxy/fds/Action;->GetObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 14
    new-instance v6, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v2, "GetBucketMeta"

    move-object/from16 v16, v8

    const/16 v8, 0xd

    invoke-direct {v6, v2, v8, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lcom/xiaomi/infra/galaxy/fds/Action;->GetBucketMeta:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 15
    new-instance v2, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "GetBucketACL"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v2, v8, v6, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/xiaomi/infra/galaxy/fds/Action;->GetBucketACL:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 16
    new-instance v8, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v6, "PutBucketACL"

    move-object/from16 v18, v2

    const/16 v2, 0xf

    invoke-direct {v8, v6, v2, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Lcom/xiaomi/infra/galaxy/fds/Action;->PutBucketACL:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 17
    new-instance v6, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v2, "DeleteBucketACL"

    move-object/from16 v19, v8

    const/16 v8, 0x10

    invoke-direct {v6, v2, v8, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lcom/xiaomi/infra/galaxy/fds/Action;->DeleteBucketACL:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 18
    new-instance v2, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "GetObjectACL"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v2, v8, v6, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/xiaomi/infra/galaxy/fds/Action;->GetObjectACL:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 19
    new-instance v8, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v6, "PutObjectACL"

    move-object/from16 v21, v2

    const/16 v2, 0x12

    invoke-direct {v8, v6, v2, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Lcom/xiaomi/infra/galaxy/fds/Action;->PutObjectACL:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 20
    new-instance v6, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v2, "DeleteObjectACL"

    move-object/from16 v22, v8

    const/16 v8, 0x13

    invoke-direct {v6, v2, v8, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lcom/xiaomi/infra/galaxy/fds/Action;->DeleteObjectACL:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 21
    new-instance v2, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "GetBucketQuota"

    move-object/from16 v23, v6

    const/16 v6, 0x14

    invoke-direct {v2, v8, v6, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/xiaomi/infra/galaxy/fds/Action;->GetBucketQuota:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 22
    new-instance v8, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v6, "PutBucketQuota"

    move-object/from16 v24, v2

    const/16 v2, 0x15

    invoke-direct {v8, v6, v2, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Lcom/xiaomi/infra/galaxy/fds/Action;->PutBucketQuota:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 23
    new-instance v6, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v2, "RenameObject"

    move-object/from16 v25, v8

    const/16 v8, 0x16

    invoke-direct {v6, v2, v8, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lcom/xiaomi/infra/galaxy/fds/Action;->RenameObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 24
    new-instance v2, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "GetMetrics"

    const/16 v4, 0x17

    move-object/from16 v27, v6

    const/4 v6, 0x0

    invoke-direct {v2, v8, v4, v6}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/xiaomi/infra/galaxy/fds/Action;->GetMetrics:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 25
    new-instance v4, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "PutClientMetrics"

    move-object/from16 v28, v2

    const/16 v2, 0x18

    invoke-direct {v4, v8, v2, v6}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcom/xiaomi/infra/galaxy/fds/Action;->PutClientMetrics:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 26
    new-instance v2, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v6, "GetObjectMetadata"

    const/16 v8, 0x19

    move-object/from16 v29, v4

    const/4 v4, 0x1

    invoke-direct {v2, v6, v8, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/xiaomi/infra/galaxy/fds/Action;->GetObjectMetadata:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 27
    new-instance v6, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "InitMultiPartUpload"

    move-object/from16 v30, v2

    const/16 v2, 0x1a

    invoke-direct {v6, v8, v2, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lcom/xiaomi/infra/galaxy/fds/Action;->InitMultiPartUpload:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 28
    new-instance v2, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "ListMultiPartUploads"

    move-object/from16 v31, v6

    const/16 v6, 0x1b

    invoke-direct {v2, v8, v6, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/xiaomi/infra/galaxy/fds/Action;->ListMultiPartUploads:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 29
    new-instance v6, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "CompleteMultiPartUpload"

    move-object/from16 v32, v2

    const/16 v2, 0x1c

    invoke-direct {v6, v8, v2, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lcom/xiaomi/infra/galaxy/fds/Action;->CompleteMultiPartUpload:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 30
    new-instance v2, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "AbortMultiPartUpload"

    move-object/from16 v33, v6

    const/16 v6, 0x1d

    invoke-direct {v2, v8, v6, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/xiaomi/infra/galaxy/fds/Action;->AbortMultiPartUpload:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 31
    new-instance v6, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "ListMultiPart"

    move-object/from16 v34, v2

    const/16 v2, 0x1e

    invoke-direct {v6, v8, v2, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lcom/xiaomi/infra/galaxy/fds/Action;->ListMultiPart:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 32
    new-instance v2, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "UploadPart"

    move-object/from16 v35, v6

    const/16 v6, 0x1f

    invoke-direct {v2, v8, v6, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/xiaomi/infra/galaxy/fds/Action;->UploadPart:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 33
    new-instance v6, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "ListParts"

    move-object/from16 v36, v2

    const/16 v2, 0x20

    invoke-direct {v6, v8, v2, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lcom/xiaomi/infra/galaxy/fds/Action;->ListParts:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 34
    new-instance v2, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "GetBucketUsage"

    move-object/from16 v37, v6

    const/16 v6, 0x21

    invoke-direct {v2, v8, v6, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/xiaomi/infra/galaxy/fds/Action;->GetBucketUsage:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 35
    new-instance v4, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v6, "GetDeveloperInfo"

    const/16 v8, 0x22

    move-object/from16 v38, v2

    const/4 v2, 0x0

    invoke-direct {v4, v6, v8, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcom/xiaomi/infra/galaxy/fds/Action;->GetDeveloperInfo:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 36
    new-instance v6, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "GetBills"

    move-object/from16 v39, v4

    const/16 v4, 0x23

    invoke-direct {v6, v8, v4, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lcom/xiaomi/infra/galaxy/fds/Action;->GetBills:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 37
    new-instance v2, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v4, "PrefetchObject"

    const/16 v8, 0x24

    move-object/from16 v40, v6

    const/4 v6, 0x1

    invoke-direct {v2, v4, v8, v6}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/xiaomi/infra/galaxy/fds/Action;->PrefetchObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 38
    new-instance v4, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "RefreshObject"

    move-object/from16 v26, v2

    const/16 v2, 0x25

    invoke-direct {v4, v8, v2, v6}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcom/xiaomi/infra/galaxy/fds/Action;->RefreshObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 39
    new-instance v2, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "PutDomainMapping"

    move-object/from16 v41, v4

    const/16 v4, 0x26

    invoke-direct {v2, v8, v4, v6}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/xiaomi/infra/galaxy/fds/Action;->PutDomainMapping:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 40
    new-instance v4, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "ListDomainMappings"

    move-object/from16 v42, v2

    const/16 v2, 0x27

    invoke-direct {v4, v8, v2, v6}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcom/xiaomi/infra/galaxy/fds/Action;->ListDomainMappings:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 41
    new-instance v2, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "DeleteDomainMapping"

    move-object/from16 v43, v4

    const/16 v4, 0x28

    invoke-direct {v2, v8, v4, v6}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/xiaomi/infra/galaxy/fds/Action;->DeleteDomainMapping:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 42
    new-instance v4, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "ListTrashObjects"

    move-object/from16 v44, v2

    const/16 v2, 0x29

    invoke-direct {v4, v8, v2, v6}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcom/xiaomi/infra/galaxy/fds/Action;->ListTrashObjects:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 43
    new-instance v2, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "RestoreObject"

    move-object/from16 v45, v4

    const/16 v4, 0x2a

    invoke-direct {v2, v8, v4, v6}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/xiaomi/infra/galaxy/fds/Action;->RestoreObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 44
    new-instance v4, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "GetTimeSeriesData"

    move-object/from16 v46, v2

    const/16 v2, 0x2b

    invoke-direct {v4, v8, v2, v6}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcom/xiaomi/infra/galaxy/fds/Action;->GetTimeSeriesData:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 45
    new-instance v2, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "GetPresignedUrl"

    move-object/from16 v47, v4

    const/16 v4, 0x2c

    invoke-direct {v2, v8, v4, v6}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/xiaomi/infra/galaxy/fds/Action;->GetPresignedUrl:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 46
    new-instance v4, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "CropImage"

    move-object/from16 v48, v2

    const/16 v2, 0x2d

    invoke-direct {v4, v8, v2, v6}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcom/xiaomi/infra/galaxy/fds/Action;->CropImage:Lcom/xiaomi/infra/galaxy/fds/Action;

    .line 47
    new-instance v2, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v8, "Unknown"

    const/16 v6, 0x2e

    move-object/from16 v49, v4

    const/4 v4, 0x0

    invoke-direct {v2, v8, v6, v4}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/xiaomi/infra/galaxy/fds/Action;->Unknown:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v6, 0x2f

    new-array v6, v6, [Lcom/xiaomi/infra/galaxy/fds/Action;

    aput-object v0, v6, v4

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v16, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    const/16 v0, 0xf

    aput-object v19, v6, v0

    const/16 v0, 0x10

    aput-object v20, v6, v0

    const/16 v0, 0x11

    aput-object v21, v6, v0

    const/16 v0, 0x12

    aput-object v22, v6, v0

    const/16 v0, 0x13

    aput-object v23, v6, v0

    const/16 v0, 0x14

    aput-object v24, v6, v0

    const/16 v0, 0x15

    aput-object v25, v6, v0

    const/16 v0, 0x16

    aput-object v27, v6, v0

    const/16 v0, 0x17

    aput-object v28, v6, v0

    const/16 v0, 0x18

    aput-object v29, v6, v0

    const/16 v0, 0x19

    aput-object v30, v6, v0

    const/16 v0, 0x1a

    aput-object v31, v6, v0

    const/16 v0, 0x1b

    aput-object v32, v6, v0

    const/16 v0, 0x1c

    aput-object v33, v6, v0

    const/16 v0, 0x1d

    aput-object v34, v6, v0

    const/16 v0, 0x1e

    aput-object v35, v6, v0

    const/16 v0, 0x1f

    aput-object v36, v6, v0

    const/16 v0, 0x20

    aput-object v37, v6, v0

    const/16 v0, 0x21

    aput-object v38, v6, v0

    const/16 v0, 0x22

    aput-object v39, v6, v0

    const/16 v0, 0x23

    aput-object v40, v6, v0

    const/16 v0, 0x24

    aput-object v26, v6, v0

    const/16 v0, 0x25

    aput-object v41, v6, v0

    const/16 v0, 0x26

    aput-object v42, v6, v0

    const/16 v0, 0x27

    aput-object v43, v6, v0

    const/16 v0, 0x28

    aput-object v44, v6, v0

    const/16 v0, 0x29

    aput-object v45, v6, v0

    const/16 v0, 0x2a

    aput-object v46, v6, v0

    const/16 v0, 0x2b

    aput-object v47, v6, v0

    const/16 v0, 0x2c

    aput-object v48, v6, v0

    const/16 v0, 0x2d

    aput-object v49, v6, v0

    const/16 v0, 0x2e

    aput-object v2, v6, v0

    .line 48
    sput-object v6, Lcom/xiaomi/infra/galaxy/fds/Action;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lcom/xiaomi/infra/galaxy/fds/Action;->needThrottle:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/Action;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/infra/galaxy/fds/Action;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/infra/galaxy/fds/Action;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/Action;

    invoke-virtual {v0}, [Lcom/xiaomi/infra/galaxy/fds/Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/infra/galaxy/fds/Action;

    return-object v0
.end method


# virtual methods
.method public needThrottle()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/infra/galaxy/fds/Action;->needThrottle:Z

    return v0
.end method
