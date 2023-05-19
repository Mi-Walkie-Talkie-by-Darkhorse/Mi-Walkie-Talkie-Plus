.class public final enum Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;
.super Ljava/lang/Enum;
.source "FDSObjectMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PredefinedMetadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

.field public static final enum CacheControl:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

.field public static final enum ContentEncoding:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

.field public static final enum ContentLength:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

.field public static final enum ContentMD5:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

.field public static final enum ContentRange:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

.field public static final enum ContentType:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

.field public static final enum LastChecked:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

.field public static final enum LastModified:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

.field public static final enum UploadTime:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;


# instance fields
.field private final header:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    const-string v1, "CacheControl"

    const/4 v2, 0x0

    const-string v3, "cache-control"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->CacheControl:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    .line 2
    new-instance v1, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    const-string v3, "ContentEncoding"

    const/4 v4, 0x1

    const-string v5, "content-encoding"

    invoke-direct {v1, v3, v4, v5}, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->ContentEncoding:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    .line 3
    new-instance v3, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    const-string v5, "ContentLength"

    const/4 v6, 0x2

    const-string v7, "content-length"

    invoke-direct {v3, v5, v6, v7}, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->ContentLength:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    .line 4
    new-instance v5, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    const-string v7, "ContentRange"

    const/4 v8, 0x3

    const-string v9, "content-range"

    invoke-direct {v5, v7, v8, v9}, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->ContentRange:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    .line 5
    new-instance v7, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    const-string v9, "LastModified"

    const/4 v10, 0x4

    const-string v11, "last-modified"

    invoke-direct {v7, v9, v10, v11}, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->LastModified:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    .line 6
    new-instance v9, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    const-string v11, "ContentMD5"

    const/4 v12, 0x5

    const-string v13, "content-md5"

    invoke-direct {v9, v11, v12, v13}, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->ContentMD5:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    .line 7
    new-instance v11, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    const-string v13, "ContentType"

    const/4 v14, 0x6

    const-string v15, "content-type"

    invoke-direct {v11, v13, v14, v15}, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->ContentType:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    .line 8
    new-instance v13, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    const-string v15, "LastChecked"

    const/4 v14, 0x7

    const-string v12, "last-checked"

    invoke-direct {v13, v15, v14, v12}, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->LastChecked:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    .line 9
    new-instance v12, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    const-string v15, "UploadTime"

    const/16 v14, 0x8

    const-string v10, "upload-time"

    invoke-direct {v12, v15, v14, v10}, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->UploadTime:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    .line 10
    sput-object v10, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->header:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    invoke-virtual {v0}, [Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    return-object v0
.end method


# virtual methods
.method public getHeader()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->header:Ljava/lang/String;

    return-object v0
.end method
