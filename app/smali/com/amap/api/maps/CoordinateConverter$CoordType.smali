.class public final enum Lcom/amap/api/maps/CoordinateConverter$CoordType;
.super Ljava/lang/Enum;
.source "CoordinateConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps/CoordinateConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CoordType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amap/api/maps/CoordinateConverter$CoordType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALIYUN:Lcom/amap/api/maps/CoordinateConverter$CoordType;

.field public static final enum BAIDU:Lcom/amap/api/maps/CoordinateConverter$CoordType;

.field public static final enum GOOGLE:Lcom/amap/api/maps/CoordinateConverter$CoordType;

.field public static final enum GPS:Lcom/amap/api/maps/CoordinateConverter$CoordType;

.field public static final enum MAPABC:Lcom/amap/api/maps/CoordinateConverter$CoordType;

.field public static final enum MAPBAR:Lcom/amap/api/maps/CoordinateConverter$CoordType;

.field public static final enum SOSOMAP:Lcom/amap/api/maps/CoordinateConverter$CoordType;

.field private static final synthetic a:[Lcom/amap/api/maps/CoordinateConverter$CoordType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/amap/api/maps/CoordinateConverter$CoordType;

    const-string v1, "BAIDU"

    invoke-direct {v0, v1, v3}, Lcom/amap/api/maps/CoordinateConverter$CoordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/maps/CoordinateConverter$CoordType;->BAIDU:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    new-instance v0, Lcom/amap/api/maps/CoordinateConverter$CoordType;

    const-string v1, "MAPBAR"

    invoke-direct {v0, v1, v4}, Lcom/amap/api/maps/CoordinateConverter$CoordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/maps/CoordinateConverter$CoordType;->MAPBAR:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    new-instance v0, Lcom/amap/api/maps/CoordinateConverter$CoordType;

    const-string v1, "GPS"

    invoke-direct {v0, v1, v5}, Lcom/amap/api/maps/CoordinateConverter$CoordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/maps/CoordinateConverter$CoordType;->GPS:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    new-instance v0, Lcom/amap/api/maps/CoordinateConverter$CoordType;

    const-string v1, "MAPABC"

    invoke-direct {v0, v1, v6}, Lcom/amap/api/maps/CoordinateConverter$CoordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/maps/CoordinateConverter$CoordType;->MAPABC:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    new-instance v0, Lcom/amap/api/maps/CoordinateConverter$CoordType;

    const-string v1, "SOSOMAP"

    invoke-direct {v0, v1, v7}, Lcom/amap/api/maps/CoordinateConverter$CoordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/maps/CoordinateConverter$CoordType;->SOSOMAP:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    new-instance v0, Lcom/amap/api/maps/CoordinateConverter$CoordType;

    const-string v1, "ALIYUN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/amap/api/maps/CoordinateConverter$CoordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/maps/CoordinateConverter$CoordType;->ALIYUN:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    new-instance v0, Lcom/amap/api/maps/CoordinateConverter$CoordType;

    const-string v1, "GOOGLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/amap/api/maps/CoordinateConverter$CoordType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/maps/CoordinateConverter$CoordType;->GOOGLE:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/amap/api/maps/CoordinateConverter$CoordType;

    sget-object v1, Lcom/amap/api/maps/CoordinateConverter$CoordType;->BAIDU:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amap/api/maps/CoordinateConverter$CoordType;->MAPBAR:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amap/api/maps/CoordinateConverter$CoordType;->GPS:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amap/api/maps/CoordinateConverter$CoordType;->MAPABC:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amap/api/maps/CoordinateConverter$CoordType;->SOSOMAP:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/amap/api/maps/CoordinateConverter$CoordType;->ALIYUN:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amap/api/maps/CoordinateConverter$CoordType;->GOOGLE:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amap/api/maps/CoordinateConverter$CoordType;->a:[Lcom/amap/api/maps/CoordinateConverter$CoordType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/maps/CoordinateConverter$CoordType;
    .locals 1

    const-class v0, Lcom/amap/api/maps/CoordinateConverter$CoordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/CoordinateConverter$CoordType;

    return-object v0
.end method

.method public static values()[Lcom/amap/api/maps/CoordinateConverter$CoordType;
    .locals 1

    sget-object v0, Lcom/amap/api/maps/CoordinateConverter$CoordType;->a:[Lcom/amap/api/maps/CoordinateConverter$CoordType;

    invoke-virtual {v0}, [Lcom/amap/api/maps/CoordinateConverter$CoordType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/maps/CoordinateConverter$CoordType;

    return-object v0
.end method
