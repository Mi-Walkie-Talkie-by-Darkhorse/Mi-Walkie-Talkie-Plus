.class public final enum Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;
.super Ljava/lang/Enum;
.source "CameraUpdateMessage.java"


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
    .locals 18

    .line 1
    new-instance v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const-string v1, "none"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->none:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const-string v3, "zoomIn"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->zoomIn:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    .line 2
    new-instance v3, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const-string v5, "changeCenter"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->changeCenter:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    .line 3
    new-instance v5, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const-string v7, "changeTilt"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->changeTilt:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    .line 4
    new-instance v7, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const-string v9, "changeBearing"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->changeBearing:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v9, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const-string v11, "changeBearingGeoCenter"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->changeBearingGeoCenter:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    .line 5
    new-instance v11, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const-string v13, "changeGeoCenterZoom"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->changeGeoCenterZoom:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v13, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const-string v15, "zoomOut"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->zoomOut:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v15, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const-string v14, "zoomTo"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->zoomTo:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v14, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const-string v12, "zoomBy"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->zoomBy:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v12, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const-string v10, "scrollBy"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->scrollBy:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v10, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const-string v8, "newCameraPosition"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v8, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const-string v6, "newLatLngBounds"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newLatLngBounds:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v6, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const-string v4, "newLatLngBoundsWithSize"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->newLatLngBoundsWithSize:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    new-instance v4, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const-string v2, "changeGeoCenterZoomTiltBearing"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->changeGeoCenterZoomTiltBearing:Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    .line 6
    sput-object v2, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->$VALUES:[Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    return-object p0
.end method

.method public static values()[Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->$VALUES:[Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    invoke-virtual {v0}, [Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/amap/mapcore/CameraUpdateMessage$Type;

    return-object v0
.end method
