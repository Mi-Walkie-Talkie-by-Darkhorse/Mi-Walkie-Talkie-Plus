.class public Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay;
.super Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;
.source "GLRctRouteOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay$AmapNaviInfo;,
        Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay$AmapRctRoutePath;,
        Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay$AmapRctPolyline;
    }
.end annotation


# direct methods
.method public constructor <init>(ILcom/autonavi/amap/mapcore/interfaces/IAMap;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay;-><init>(ILcom/autonavi/amap/mapcore/interfaces/IAMap;I)V

    sget-object v0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_RCTROUTE:Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->ordinal()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->createGLOverlay(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay;->mNativeInstance:J

    return-void
.end method

.method private copy2Inter([II[Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay$AmapRctPolyline;I)I
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-ge v0, p4, :cond_0

    aget-object v2, p3, v0

    iget v2, v2, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay$AmapRctPolyline;->nCount:I

    add-int/lit8 v3, p2, 0x1

    aput v2, p1, p2

    add-int/lit8 v4, v3, 0x1

    aget-object v5, p3, v0

    iget v5, v5, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay$AmapRctPolyline;->nIndex:I

    aput v5, p1, v3

    aget-object v3, p3, v0

    iget-object v3, v3, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay$AmapRctPolyline;->xs:[I

    invoke-static {v3, v1, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v3, v4, v2

    aget-object v4, p3, v0

    iget-object v4, v4, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay$AmapRctPolyline;->ys:[I

    invoke-static {v4, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v2

    aget-object v4, p3, v0

    iget-object v4, v4, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay$AmapRctPolyline;->zs:[I

    invoke-static {v4, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int p2, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method private static native nativeSetGpsPos(JIIIF)I
.end method

.method private static native nativeSetParam(JIIIII)I
.end method

.method private static native nativeSetRCTFlyRoute(J[BI)I
.end method

.method private static native nativeSetRCTStyleParam(J[B)I
.end method

.method private static native nativeUpdataCarPos(J[F)I
.end method

.method private static native nativeUpdataNaviInfo(J[I)V
.end method


# virtual methods
.method public SetGpsPos(IIIF)I
    .locals 6

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay;->mNativeInstance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay;->nativeSetGpsPos(JIIIF)I

    move-result v0

    return v0
.end method

.method public SetNaviMode(I)I
    .locals 7

    const/4 v2, 0x0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay;->mNativeInstance:J

    move v3, p1

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay;->nativeSetParam(JIIIII)I

    move-result v0

    return v0
.end method

.method public SetRCTFlyDirection(Z)I
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "3dlandscape.xml"

    :goto_0
    iget-object v1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay;->mGLMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapCacheMgr()Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;->getMapCachePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/ae/gmap/utils/GLFileUtil;->readFileContents(Ljava/lang/String;)[B

    move-result-object v0

    :goto_1
    iget-wide v2, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay;->mNativeInstance:J

    invoke-static {v2, v3, v0}, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay;->nativeSetRCTStyleParam(J[B)I

    move-result v0

    return v0

    :cond_0
    const-string v0, "3dportrait.xml"

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/amap/api/mapcore/util/p;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map_assets/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autonavi/ae/gmap/utils/GLMapUtil;->decodeAssetResData(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1
.end method

.method public SetRCTFlyRoute([BI)I
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay;->nativeSetRCTFlyRoute(J[BI)I

    move-result v0

    return v0
.end method

.method public UpdataCarPos([F)I
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay;->nativeUpdataCarPos(J[F)I

    move-result v0

    return v0
.end method

.method public UpdataNaviInfo(Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay$AmapNaviInfo;)V
    .locals 9

    const/16 v8, 0x20

    const-wide/16 v6, -0x1

    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay$AmapNaviInfo;->ntype:I

    aput v3, v0, v1

    const/4 v1, 0x2

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay$AmapNaviInfo;->nmaneuverID:I

    aput v3, v0, v2

    const/4 v2, 0x3

    iget-wide v4, p1, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay$AmapNaviInfo;->n64routeRemainDistance:J

    and-long/2addr v4, v6

    long-to-int v3, v4

    aput v3, v0, v1

    const/4 v1, 0x4

    iget-wide v4, p1, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay$AmapNaviInfo;->n64routeRemainDistance:J

    shr-long/2addr v4, v8

    and-long/2addr v4, v6

    long-to-int v3, v4

    aput v3, v0, v2

    const/4 v2, 0x5

    iget-wide v4, p1, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay$AmapNaviInfo;->n64routeRemainTime:J

    and-long/2addr v4, v6

    long-to-int v3, v4

    aput v3, v0, v1

    const/4 v1, 0x6

    iget-wide v4, p1, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay$AmapNaviInfo;->n64routeRemainTime:J

    shr-long/2addr v4, v8

    and-long/2addr v4, v6

    long-to-int v3, v4

    aput v3, v0, v2

    const/4 v2, 0x7

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay$AmapNaviInfo;->nsegmentRemainDistance:I

    aput v3, v0, v1

    const/16 v1, 0x8

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay$AmapNaviInfo;->nsegmentLength:I

    aput v3, v0, v2

    const/16 v2, 0x9

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay$AmapNaviInfo;->nsegmentRemainTime:I

    aput v3, v0, v1

    const/16 v1, 0xa

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay$AmapNaviInfo;->ncurrentSegNumber:I

    aput v3, v0, v2

    const/16 v2, 0xb

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay$AmapNaviInfo;->ncurrentLinkNumber:I

    aput v3, v0, v1

    const/16 v1, 0xc

    iget v3, p1, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay$AmapNaviInfo;->n3DSTLinkNumber:I

    aput v3, v0, v2

    iget v2, p1, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay$AmapNaviInfo;->n3DEDLinkNumber:I

    aput v2, v0, v1

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay;->mNativeInstance:J

    invoke-static {v2, v3, v0}, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay;->nativeUpdataNaviInfo(J[I)V

    return-void
.end method

.method public navipause()I
    .locals 7

    const/4 v3, 0x0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay;->mNativeInstance:J

    const/16 v2, 0x11

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay;->nativeSetParam(JIIIII)I

    move-result v0

    return v0
.end method

.method public naviresume()I
    .locals 7

    const/4 v3, 0x0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay;->mNativeInstance:J

    const/16 v2, 0x12

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay;->nativeSetParam(JIIIII)I

    move-result v0

    return v0
.end method

.method public navistart()I
    .locals 7

    const/4 v3, 0x0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay;->mNativeInstance:J

    const/16 v2, 0x10

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay;->nativeSetParam(JIIIII)I

    move-result v0

    return v0
.end method

.method public navistop()I
    .locals 7

    const/4 v3, 0x0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay;->mNativeInstance:J

    const/16 v2, 0x13

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/autonavi/ae/gmap/gloverlay/GLRctRouteOverlay;->nativeSetParam(JIIIII)I

    move-result v0

    return v0
.end method
