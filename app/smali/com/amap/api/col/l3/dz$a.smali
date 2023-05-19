.class public final enum Lcom/amap/api/col/l3/dz$a;
.super Ljava/lang/Enum;
.source "IResourceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/dz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amap/api/col/l3/dz$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/amap/api/col/l3/dz$a;

.field public static final enum b:Lcom/amap/api/col/l3/dz$a;

.field public static final enum c:Lcom/amap/api/col/l3/dz$a;

.field private static final synthetic d:[Lcom/amap/api/col/l3/dz$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/amap/api/col/l3/dz$a;

    const-string v1, "unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/l3/dz$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/l3/dz$a;->a:Lcom/amap/api/col/l3/dz$a;

    new-instance v1, Lcom/amap/api/col/l3/dz$a;

    const-string v3, "marker_default"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/amap/api/col/l3/dz$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amap/api/col/l3/dz$a;->b:Lcom/amap/api/col/l3/dz$a;

    new-instance v3, Lcom/amap/api/col/l3/dz$a;

    const-string v5, "marker_gps_no_sharing"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/amap/api/col/l3/dz$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/amap/api/col/l3/dz$a;->c:Lcom/amap/api/col/l3/dz$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/amap/api/col/l3/dz$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/amap/api/col/l3/dz$a;->d:[Lcom/amap/api/col/l3/dz$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/col/l3/dz$a;
    .locals 1

    .line 1
    const-class v0, Lcom/amap/api/col/l3/dz$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amap/api/col/l3/dz$a;

    return-object p0
.end method

.method public static values()[Lcom/amap/api/col/l3/dz$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/api/col/l3/dz$a;->d:[Lcom/amap/api/col/l3/dz$a;

    invoke-virtual {v0}, [Lcom/amap/api/col/l3/dz$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/col/l3/dz$a;

    return-object v0
.end method
