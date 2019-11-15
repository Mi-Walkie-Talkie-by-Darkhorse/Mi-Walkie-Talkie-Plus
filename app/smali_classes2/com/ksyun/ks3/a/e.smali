.class public Lcom/ksyun/ks3/a/e;
.super Ljava/lang/Object;
.source "RequestUtils.java"


# static fields
.field public static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "acl"

    aput-object v1, v0, v3

    const-string v1, "lifecycle"

    aput-object v1, v0, v4

    const-string v1, "location"

    aput-object v1, v0, v5

    const-string v1, "logging"

    aput-object v1, v0, v6

    const-string v1, "notification"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "partNumber"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "policy"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "requestPayment"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "torrent"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "uploadId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "uploads"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "versionId"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "versioning"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "versions"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "website"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "delete"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "thumbnail"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ksyun/ks3/a/e;->a:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "response-content-type"

    aput-object v1, v0, v3

    const-string v1, "response-content-language"

    aput-object v1, v0, v4

    const-string v1, "response-expires"

    aput-object v1, v0, v5

    const-string v1, "response-cache-control"

    aput-object v1, v0, v6

    const-string v1, "response-content-disposition"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "response-content-encoding"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "height"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ksyun/ks3/a/e;->b:Ljava/util/List;

    return-void
.end method
