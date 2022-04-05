.class public final enum Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;
.super Ljava/lang/Enum;


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
    .locals 12

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    const/4 v1, 0x0

    const-string v2, "CacheControl"

    const-string v3, "cache-control"

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->CacheControl:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    const/4 v2, 0x1

    const-string v3, "ContentEncoding"

    const-string v4, "content-encoding"

    invoke-direct {v0, v3, v2, v4}, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->ContentEncoding:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    const/4 v3, 0x2

    const-string v4, "ContentLength"

    const-string v5, "content-length"

    invoke-direct {v0, v4, v3, v5}, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->ContentLength:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    const/4 v4, 0x3

    const-string v5, "ContentRange"

    const-string v6, "content-range"

    invoke-direct {v0, v5, v4, v6}, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->ContentRange:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    const/4 v5, 0x4

    const-string v6, "LastModified"

    const-string v7, "last-modified"

    invoke-direct {v0, v6, v5, v7}, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->LastModified:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    const/4 v6, 0x5

    const-string v7, "ContentMD5"

    const-string v8, "content-md5"

    invoke-direct {v0, v7, v6, v8}, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->ContentMD5:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    const/4 v7, 0x6

    const-string v8, "ContentType"

    const-string v9, "content-type"

    invoke-direct {v0, v8, v7, v9}, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->ContentType:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    const/4 v8, 0x7

    const-string v9, "LastChecked"

    const-string v10, "last-checked"

    invoke-direct {v0, v9, v8, v10}, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->LastChecked:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    const/16 v9, 0x8

    const-string v10, "UploadTime"

    const-string v11, "upload-time"

    invoke-direct {v0, v10, v9, v11}, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->UploadTime:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    sget-object v11, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->CacheControl:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    aput-object v11, v10, v1

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->ContentEncoding:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    aput-object v1, v10, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->ContentLength:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    aput-object v1, v10, v3

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->ContentRange:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    aput-object v1, v10, v4

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->LastModified:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    aput-object v1, v10, v5

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->ContentMD5:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    aput-object v1, v10, v6

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->ContentType:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    aput-object v1, v10, v7

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->LastChecked:Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->header:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;
    .locals 1

    const-class v0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;
    .locals 1

    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    invoke-virtual {v0}, [Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;

    return-object v0
.end method


# virtual methods
.method public getHeader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/model/FDSObjectMetadata$PredefinedMetadata;->header:Ljava/lang/String;

    return-object v0
.end method
