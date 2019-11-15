.class public final enum Lcom/amap/api/mapcore/util/bm$a;
.super Ljava/lang/Enum;
.source "IDownloadListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amap/api/mapcore/util/bm$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/amap/api/mapcore/util/bm$a;

.field public static final enum b:Lcom/amap/api/mapcore/util/bm$a;

.field public static final enum c:Lcom/amap/api/mapcore/util/bm$a;

.field public static final enum d:Lcom/amap/api/mapcore/util/bm$a;

.field public static final enum e:Lcom/amap/api/mapcore/util/bm$a;

.field private static final synthetic g:[Lcom/amap/api/mapcore/util/bm$a;


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v2, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/amap/api/mapcore/util/bm$a;

    const-string v1, "amap_exception"

    invoke-direct {v0, v1, v3, v2}, Lcom/amap/api/mapcore/util/bm$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amap/api/mapcore/util/bm$a;->a:Lcom/amap/api/mapcore/util/bm$a;

    new-instance v0, Lcom/amap/api/mapcore/util/bm$a;

    const-string v1, "network_exception"

    invoke-direct {v0, v1, v4, v2}, Lcom/amap/api/mapcore/util/bm$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amap/api/mapcore/util/bm$a;->b:Lcom/amap/api/mapcore/util/bm$a;

    new-instance v0, Lcom/amap/api/mapcore/util/bm$a;

    const-string v1, "file_io_exception"

    invoke-direct {v0, v1, v5, v3}, Lcom/amap/api/mapcore/util/bm$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amap/api/mapcore/util/bm$a;->c:Lcom/amap/api/mapcore/util/bm$a;

    new-instance v0, Lcom/amap/api/mapcore/util/bm$a;

    const-string v1, "success_no_exception"

    invoke-direct {v0, v1, v6, v4}, Lcom/amap/api/mapcore/util/bm$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amap/api/mapcore/util/bm$a;->d:Lcom/amap/api/mapcore/util/bm$a;

    new-instance v0, Lcom/amap/api/mapcore/util/bm$a;

    const-string v1, "cancel_no_exception"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v5}, Lcom/amap/api/mapcore/util/bm$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amap/api/mapcore/util/bm$a;->e:Lcom/amap/api/mapcore/util/bm$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amap/api/mapcore/util/bm$a;

    sget-object v1, Lcom/amap/api/mapcore/util/bm$a;->a:Lcom/amap/api/mapcore/util/bm$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amap/api/mapcore/util/bm$a;->b:Lcom/amap/api/mapcore/util/bm$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amap/api/mapcore/util/bm$a;->c:Lcom/amap/api/mapcore/util/bm$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amap/api/mapcore/util/bm$a;->d:Lcom/amap/api/mapcore/util/bm$a;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Lcom/amap/api/mapcore/util/bm$a;->e:Lcom/amap/api/mapcore/util/bm$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amap/api/mapcore/util/bm$a;->g:[Lcom/amap/api/mapcore/util/bm$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/amap/api/mapcore/util/bm$a;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/mapcore/util/bm$a;
    .locals 1

    const-class v0, Lcom/amap/api/mapcore/util/bm$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/bm$a;

    return-object v0
.end method

.method public static values()[Lcom/amap/api/mapcore/util/bm$a;
    .locals 1

    sget-object v0, Lcom/amap/api/mapcore/util/bm$a;->g:[Lcom/amap/api/mapcore/util/bm$a;

    invoke-virtual {v0}, [Lcom/amap/api/mapcore/util/bm$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/mapcore/util/bm$a;

    return-object v0
.end method
