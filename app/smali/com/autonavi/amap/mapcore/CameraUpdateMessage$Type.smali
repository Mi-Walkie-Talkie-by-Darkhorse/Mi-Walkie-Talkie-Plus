.class public final enum Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

.field public static final enum changeBearing:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

.field public static final enum changeBearingGeoCenter:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

.field public static final enum changeCenter:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

.field public static final enum changeGeoCenterZoom:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

.field public static final enum changeGeoCenterZoomTiltBearing:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

.field public static final enum changeTilt:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

.field public static final enum newCameraPosition:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

.field public static final enum newLatLngBounds:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

.field public static final enum newLatLngBoundsWithSize:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

.field public static final enum none:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

.field public static final enum scrollBy:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

.field public static final enum zoomBy:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

.field public static final enum zoomIn:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

.field public static final enum zoomOut:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

.field public static final enum zoomTo:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/4 v1, 0x0

    const-string v2, "none"

    invoke-direct {v0, v2, v1}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->none:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/4 v2, 0x1

    const-string v3, "zoomIn"

    invoke-direct {v0, v3, v2}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->zoomIn:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/4 v3, 0x2

    const-string v4, "changeCenter"

    invoke-direct {v0, v4, v3}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->changeCenter:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/4 v4, 0x3

    const-string v5, "changeTilt"

    invoke-direct {v0, v5, v4}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->changeTilt:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/4 v5, 0x4

    const-string v6, "changeBearing"

    invoke-direct {v0, v6, v5}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->changeBearing:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/4 v6, 0x5

    const-string v7, "changeBearingGeoCenter"

    invoke-direct {v0, v7, v6}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->changeBearingGeoCenter:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/4 v7, 0x6

    const-string v8, "changeGeoCenterZoom"

    invoke-direct {v0, v8, v7}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->changeGeoCenterZoom:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/4 v8, 0x7

    const-string v9, "zoomOut"

    invoke-direct {v0, v9, v8}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->zoomOut:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/16 v9, 0x8

    const-string v10, "zoomTo"

    invoke-direct {v0, v10, v9}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->zoomTo:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/16 v10, 0x9

    const-string v11, "zoomBy"

    invoke-direct {v0, v11, v10}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->zoomBy:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/16 v11, 0xa

    const-string v12, "scrollBy"

    invoke-direct {v0, v12, v11}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->scrollBy:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/16 v12, 0xb

    const-string v13, "newCameraPosition"

    invoke-direct {v0, v13, v12}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/16 v13, 0xc

    const-string v14, "newLatLngBounds"

    invoke-direct {v0, v14, v13}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newLatLngBounds:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/16 v14, 0xd

    const-string v15, "newLatLngBoundsWithSize"

    invoke-direct {v0, v15, v14}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newLatLngBoundsWithSize:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/16 v15, 0xe

    const-string v14, "changeGeoCenterZoomTiltBearing"

    invoke-direct {v0, v14, v15}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->changeGeoCenterZoomTiltBearing:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/16 v14, 0xf

    new-array v14, v14, [Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    sget-object v16, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->none:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    aput-object v16, v14, v1

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->zoomIn:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    aput-object v1, v14, v2

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->changeCenter:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    aput-object v1, v14, v3

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->changeTilt:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    aput-object v1, v14, v4

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->changeBearing:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    aput-object v1, v14, v5

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->changeBearingGeoCenter:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    aput-object v1, v14, v6

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->changeGeoCenterZoom:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    aput-object v1, v14, v7

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->zoomOut:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    aput-object v1, v14, v8

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->zoomTo:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    aput-object v1, v14, v9

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->zoomBy:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    aput-object v1, v14, v10

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->scrollBy:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    aput-object v1, v14, v11

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    aput-object v1, v14, v12

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newLatLngBounds:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    aput-object v1, v14, v13

    sget-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newLatLngBoundsWithSize:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    aput-object v0, v14, v15

    sput-object v14, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->$VALUES:[Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;
    .locals 1

    const-class v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    return-object p0
.end method

.method public static values()[Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;
    .locals 1

    sget-object v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->$VALUES:[Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    invoke-virtual {v0}, [Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    return-object v0
.end method
