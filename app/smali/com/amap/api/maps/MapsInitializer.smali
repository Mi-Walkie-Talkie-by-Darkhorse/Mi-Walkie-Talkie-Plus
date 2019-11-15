.class public final Lcom/amap/api/maps/MapsInitializer;
.super Ljava/lang/Object;
.source "MapsInitializer.java"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z

.field public static sdcardDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, ""

    sput-object v0, Lcom/amap/api/maps/MapsInitializer;->sdcardDir:Ljava/lang/String;

    sput-boolean v1, Lcom/amap/api/maps/MapsInitializer;->a:Z

    sput-boolean v1, Lcom/amap/api/maps/MapsInitializer;->b:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/maps/MapsInitializer;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetWorkEnable()Z
    .locals 1

    sget-boolean v0, Lcom/amap/api/maps/MapsInitializer;->a:Z

    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "5.7.0"

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/p;->a:Landroid/content/Context;

    :goto_0
    return-void

    :cond_0
    const-string v0, "MapsInitializer"

    const-string v1, "the context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isDownloadCoordinateConvertLibrary()Z
    .locals 1

    sget-boolean v0, Lcom/amap/api/maps/MapsInitializer;->b:Z

    return v0
.end method

.method public static isLoadWorldGridMap()Z
    .locals 1

    sget-boolean v0, Lcom/amap/api/maps/MapsInitializer;->c:Z

    return v0
.end method

.method public static loadWorldGridMap(Z)V
    .locals 0

    sput-boolean p0, Lcom/amap/api/maps/MapsInitializer;->c:Z

    return-void
.end method

.method public static setApiKey(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setBuildingHeight(I)V
    .locals 0

    sput p0, Lcom/autonavi/ae/gmap/GLMapEngine;->BUILDINGHEIGHT:I

    return-void
.end method

.method public static setDownloadCoordinateConvertLibrary(Z)V
    .locals 0

    sput-boolean p0, Lcom/amap/api/maps/MapsInitializer;->b:Z

    return-void
.end method

.method public static setNetWorkEnable(Z)V
    .locals 0

    sput-boolean p0, Lcom/amap/api/maps/MapsInitializer;->a:Z

    return-void
.end method
