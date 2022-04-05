.class public final enum Lcom/xiaomi/infra/galaxy/fds/Action;
.super Ljava/lang/Enum;


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
    .locals 16

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const/4 v1, 0x0

    const-string v2, "GetStorageToken"

    invoke-direct {v0, v2, v1, v1}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->GetStorageToken:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const/4 v2, 0x1

    const-string v3, "ListBuckets"

    invoke-direct {v0, v3, v2, v1}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->ListBuckets:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const/4 v3, 0x2

    const-string v4, "ListAuthorizedBuckets"

    invoke-direct {v0, v4, v3, v1}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->ListAuthorizedBuckets:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const/4 v4, 0x3

    const-string v5, "PutBucket"

    invoke-direct {v0, v5, v4, v1}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->PutBucket:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const/4 v5, 0x4

    const-string v6, "HeadBucket"

    invoke-direct {v0, v6, v5, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->HeadBucket:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const/4 v6, 0x5

    const-string v7, "DeleteBucket"

    invoke-direct {v0, v7, v6, v1}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->DeleteBucket:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const/4 v7, 0x6

    const-string v8, "DeleteObjects"

    invoke-direct {v0, v8, v7, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->DeleteObjects:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const/4 v8, 0x7

    const-string v9, "ListObjects"

    invoke-direct {v0, v9, v8, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->ListObjects:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v9, 0x8

    const-string v10, "PutObject"

    invoke-direct {v0, v10, v9, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->PutObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v10, 0x9

    const-string v11, "PostObject"

    invoke-direct {v0, v11, v10, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->PostObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v11, 0xa

    const-string v12, "HeadObject"

    invoke-direct {v0, v12, v11, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->HeadObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v12, 0xb

    const-string v13, "DeleteObject"

    invoke-direct {v0, v13, v12, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->DeleteObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v13, 0xc

    const-string v14, "GetObject"

    invoke-direct {v0, v14, v13, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->GetObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v14, 0xd

    const-string v15, "GetBucketMeta"

    invoke-direct {v0, v15, v14, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->GetBucketMeta:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v15, 0xe

    const-string v14, "GetBucketACL"

    invoke-direct {v0, v14, v15, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->GetBucketACL:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v14, 0xf

    const-string v15, "PutBucketACL"

    invoke-direct {v0, v15, v14, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->PutBucketACL:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v15, 0x10

    const-string v14, "DeleteBucketACL"

    invoke-direct {v0, v14, v15, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->DeleteBucketACL:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v14, 0x11

    const-string v15, "GetObjectACL"

    invoke-direct {v0, v15, v14, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->GetObjectACL:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v15, 0x12

    const-string v14, "PutObjectACL"

    invoke-direct {v0, v14, v15, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->PutObjectACL:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v14, 0x13

    const-string v15, "DeleteObjectACL"

    invoke-direct {v0, v15, v14, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->DeleteObjectACL:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v15, 0x14

    const-string v14, "GetBucketQuota"

    invoke-direct {v0, v14, v15, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->GetBucketQuota:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v14, 0x15

    const-string v15, "PutBucketQuota"

    invoke-direct {v0, v15, v14, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->PutBucketQuota:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v15, "RenameObject"

    const/16 v14, 0x16

    invoke-direct {v0, v15, v14, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->RenameObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "GetMetrics"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15, v1}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->GetMetrics:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "PutClientMetrics"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15, v1}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->PutClientMetrics:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "GetObjectMetadata"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->GetObjectMetadata:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "InitMultiPartUpload"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->InitMultiPartUpload:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "ListMultiPartUploads"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->ListMultiPartUploads:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "CompleteMultiPartUpload"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->CompleteMultiPartUpload:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "AbortMultiPartUpload"

    const/16 v15, 0x1d

    invoke-direct {v0, v14, v15, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->AbortMultiPartUpload:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "ListMultiPart"

    const/16 v15, 0x1e

    invoke-direct {v0, v14, v15, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->ListMultiPart:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "UploadPart"

    const/16 v15, 0x1f

    invoke-direct {v0, v14, v15, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->UploadPart:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "ListParts"

    const/16 v15, 0x20

    invoke-direct {v0, v14, v15, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->ListParts:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "GetBucketUsage"

    const/16 v15, 0x21

    invoke-direct {v0, v14, v15, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->GetBucketUsage:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "GetDeveloperInfo"

    const/16 v15, 0x22

    invoke-direct {v0, v14, v15, v1}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->GetDeveloperInfo:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "GetBills"

    const/16 v15, 0x23

    invoke-direct {v0, v14, v15, v1}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->GetBills:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "PrefetchObject"

    const/16 v15, 0x24

    invoke-direct {v0, v14, v15, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->PrefetchObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "RefreshObject"

    const/16 v15, 0x25

    invoke-direct {v0, v14, v15, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->RefreshObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "PutDomainMapping"

    const/16 v15, 0x26

    invoke-direct {v0, v14, v15, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->PutDomainMapping:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "ListDomainMappings"

    const/16 v15, 0x27

    invoke-direct {v0, v14, v15, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->ListDomainMappings:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "DeleteDomainMapping"

    const/16 v15, 0x28

    invoke-direct {v0, v14, v15, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->DeleteDomainMapping:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "ListTrashObjects"

    const/16 v15, 0x29

    invoke-direct {v0, v14, v15, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->ListTrashObjects:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "RestoreObject"

    const/16 v15, 0x2a

    invoke-direct {v0, v14, v15, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->RestoreObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "GetTimeSeriesData"

    const/16 v15, 0x2b

    invoke-direct {v0, v14, v15, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->GetTimeSeriesData:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "GetPresignedUrl"

    const/16 v15, 0x2c

    invoke-direct {v0, v14, v15, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->GetPresignedUrl:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "CropImage"

    const/16 v15, 0x2d

    invoke-direct {v0, v14, v15, v2}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->CropImage:Lcom/xiaomi/infra/galaxy/fds/Action;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    const-string v14, "Unknown"

    const/16 v15, 0x2e

    invoke-direct {v0, v14, v15, v1}, Lcom/xiaomi/infra/galaxy/fds/Action;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->Unknown:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v14, 0x2f

    new-array v14, v14, [Lcom/xiaomi/infra/galaxy/fds/Action;

    sget-object v15, Lcom/xiaomi/infra/galaxy/fds/Action;->GetStorageToken:Lcom/xiaomi/infra/galaxy/fds/Action;

    aput-object v15, v14, v1

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->ListBuckets:Lcom/xiaomi/infra/galaxy/fds/Action;

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->ListAuthorizedBuckets:Lcom/xiaomi/infra/galaxy/fds/Action;

    aput-object v1, v14, v3

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->PutBucket:Lcom/xiaomi/infra/galaxy/fds/Action;

    aput-object v1, v14, v4

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->HeadBucket:Lcom/xiaomi/infra/galaxy/fds/Action;

    aput-object v1, v14, v5

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->DeleteBucket:Lcom/xiaomi/infra/galaxy/fds/Action;

    aput-object v1, v14, v6

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->DeleteObjects:Lcom/xiaomi/infra/galaxy/fds/Action;

    aput-object v1, v14, v7

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->ListObjects:Lcom/xiaomi/infra/galaxy/fds/Action;

    aput-object v1, v14, v8

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->PutObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    aput-object v1, v14, v9

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->PostObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    aput-object v1, v14, v10

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->HeadObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    aput-object v1, v14, v11

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->DeleteObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    aput-object v1, v14, v12

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->GetObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    aput-object v1, v14, v13

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->GetBucketMeta:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->GetBucketACL:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->PutBucketACL:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->DeleteBucketACL:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->GetObjectACL:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->PutObjectACL:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->DeleteObjectACL:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->GetBucketQuota:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->PutBucketQuota:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x15

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->RenameObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x16

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->GetMetrics:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x17

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->PutClientMetrics:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x18

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->GetObjectMetadata:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x19

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->InitMultiPartUpload:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x1a

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->ListMultiPartUploads:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x1b

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->CompleteMultiPartUpload:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x1c

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->AbortMultiPartUpload:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x1d

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->ListMultiPart:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x1e

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->UploadPart:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x1f

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->ListParts:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x20

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->GetBucketUsage:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x21

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->GetDeveloperInfo:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x22

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->GetBills:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x23

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->PrefetchObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x24

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->RefreshObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x25

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->PutDomainMapping:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x26

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->ListDomainMappings:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x27

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->DeleteDomainMapping:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x28

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->ListTrashObjects:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x29

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->RestoreObject:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x2a

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->GetTimeSeriesData:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x2b

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->GetPresignedUrl:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x2c

    aput-object v1, v14, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/Action;->CropImage:Lcom/xiaomi/infra/galaxy/fds/Action;

    const/16 v2, 0x2d

    aput-object v1, v14, v2

    const/16 v1, 0x2e

    aput-object v0, v14, v1

    sput-object v14, Lcom/xiaomi/infra/galaxy/fds/Action;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/xiaomi/infra/galaxy/fds/Action;->needThrottle:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/Action;
    .locals 1

    const-class v0, Lcom/xiaomi/infra/galaxy/fds/Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/infra/galaxy/fds/Action;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/infra/galaxy/fds/Action;
    .locals 1

    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/Action;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/Action;

    invoke-virtual {v0}, [Lcom/xiaomi/infra/galaxy/fds/Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/infra/galaxy/fds/Action;

    return-object v0
.end method


# virtual methods
.method public needThrottle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/infra/galaxy/fds/Action;->needThrottle:Z

    return v0
.end method
