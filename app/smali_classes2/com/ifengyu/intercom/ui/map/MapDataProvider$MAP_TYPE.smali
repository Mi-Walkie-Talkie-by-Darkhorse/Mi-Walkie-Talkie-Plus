.class public final enum Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;
.super Ljava/lang/Enum;
.source "MapDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/map/MapDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MAP_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

.field public static final enum b:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

.field public static final enum c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

.field private static final synthetic d:[Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    const/4 v1, 0x0

    const-string v2, "GOOGLE_SATELLITE_MAP"

    invoke-direct {v0, v2, v1}, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    new-instance v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    const/4 v2, 0x1

    const-string v3, "CONTOUR_MAP"

    invoke-direct {v0, v3, v2}, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->b:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    new-instance v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    const/4 v3, 0x2

    const-string v4, "GOOGLE_2D_MAP"

    invoke-direct {v0, v4, v3}, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    .line 2
    sget-object v5, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    aput-object v5, v4, v1

    sget-object v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->b:Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->d:[Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;
    .locals 1

    .line 1
    const-class v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->d:[Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;

    return-object v0
.end method
