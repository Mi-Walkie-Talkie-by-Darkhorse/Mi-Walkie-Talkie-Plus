.class public final enum Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;
.super Ljava/lang/Enum;
.source "GLOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EAMapOverlayTpye"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

.field public static final enum AMAPOVERLAY_ARC:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

.field public static final enum AMAPOVERLAY_ARROW:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

.field public static final enum AMAPOVERLAY_GPS:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

.field public static final enum AMAPOVERLAY_MODEL:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

.field public static final enum AMAPOVERLAY_NAVI:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

.field public static final enum AMAPOVERLAY_POINT:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

.field public static final enum AMAPOVERLAY_POLYGON:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

.field public static final enum AMAPOVERLAY_POLYLINE:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

.field public static final enum AMAPOVERLAY_RCTROUTE:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

.field public static final enum AMAPOVERLAY_ROUTE:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

.field public static final enum AMAPOVERLAY_VECTOR:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    const/4 v1, 0x0

    const-string v2, "AMAPOVERLAY_POINT"

    invoke-direct {v0, v2, v1}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_POINT:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    .line 2
    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    const/4 v2, 0x1

    const-string v3, "AMAPOVERLAY_POLYLINE"

    invoke-direct {v0, v3, v2}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_POLYLINE:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    .line 3
    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    const/4 v3, 0x2

    const-string v4, "AMAPOVERLAY_POLYGON"

    invoke-direct {v0, v4, v3}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_POLYGON:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    .line 4
    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    const/4 v4, 0x3

    const-string v5, "AMAPOVERLAY_NAVI"

    invoke-direct {v0, v5, v4}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_NAVI:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    .line 5
    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    const/4 v5, 0x4

    const-string v6, "AMAPOVERLAY_GPS"

    invoke-direct {v0, v6, v5}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_GPS:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    .line 6
    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    const/4 v6, 0x5

    const-string v7, "AMAPOVERLAY_ARC"

    invoke-direct {v0, v7, v6}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_ARC:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    .line 7
    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    const/4 v7, 0x6

    const-string v8, "AMAPOVERLAY_ARROW"

    invoke-direct {v0, v8, v7}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_ARROW:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    .line 8
    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    const/4 v8, 0x7

    const-string v9, "AMAPOVERLAY_VECTOR"

    invoke-direct {v0, v9, v8}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_VECTOR:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    .line 9
    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    const/16 v9, 0x8

    const-string v10, "AMAPOVERLAY_MODEL"

    invoke-direct {v0, v10, v9}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_MODEL:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    .line 10
    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    const/16 v10, 0x9

    const-string v11, "AMAPOVERLAY_RCTROUTE"

    invoke-direct {v0, v11, v10}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_RCTROUTE:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    .line 11
    new-instance v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    const/16 v11, 0xa

    const-string v12, "AMAPOVERLAY_ROUTE"

    invoke-direct {v0, v12, v11}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_ROUTE:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    .line 12
    sget-object v13, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_POINT:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    aput-object v13, v12, v1

    sget-object v1, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_POLYLINE:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    aput-object v1, v12, v2

    sget-object v1, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_POLYGON:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    aput-object v1, v12, v3

    sget-object v1, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_NAVI:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    aput-object v1, v12, v4

    sget-object v1, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_GPS:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    aput-object v1, v12, v5

    sget-object v1, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_ARC:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    aput-object v1, v12, v6

    sget-object v1, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_ARROW:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    aput-object v1, v12, v7

    sget-object v1, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_VECTOR:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    aput-object v1, v12, v8

    sget-object v1, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_MODEL:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    aput-object v1, v12, v9

    sget-object v1, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_RCTROUTE:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->$VALUES:[Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;
    .locals 1

    .line 1
    const-class v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    return-object p0
.end method

.method public static values()[Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->$VALUES:[Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    invoke-virtual {v0}, [Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    return-object v0
.end method
