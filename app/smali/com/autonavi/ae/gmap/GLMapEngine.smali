.class public Lcom/autonavi/ae/gmap/GLMapEngine;
.super Ljava/lang/Object;
.source "GLMapEngine.java"

# interfaces
.implements Lcom/autonavi/ae/gmap/callback/JniIndoorCallback;
.implements Lcom/autonavi/ae/gmap/callback/JniMapCoreCallback;
.implements Lcom/autonavi/ae/gmap/callback/JniMapHeatCallback;
.implements Lcom/autonavi/ae/gmap/callback/JniScenicCallback;


# static fields
.field public static final ANIM_ACTION_MOVE:I = 0x1

.field public static final ANIM_ACTION_ROTATECAMERA:I = 0x8

.field public static final ANIM_ACTION_ROTATEMAP:I = 0x4

.field public static final ANIM_ACTION_ZOOM:I = 0x2

.field public static BUILDINGHEIGHT:I = 0x0

.field public static final DATA_IN_DISK:I = 0x1

.field public static final DATA_IN_MEMORY:I = 0x2

.field public static final DATA_NOTEXIT:I = 0x0

.field private static final LONG_LONG_TICK_COUNT:I = 0x3

.field private static final LONG_TICK_COUNT:I = 0x2

.field private static final MAX_CUR_SCREEN_GRIDS_COUNT:I = 0xc8

.field private static final NORMAL_TICK_COUNT:I = 0x1

.field public static final TAP_LINES:I = 0x2

.field public static final TAP_POINTS:I = 0x1

.field public static final TAP_POLYGON:I = 0x4

.field private static final charset:Ljava/nio/charset/Charset;


# instance fields
.field private bldReqMapGrids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private canStopRender:Z

.field private copyGLMapState:Lcom/autonavi/ae/gmap/GLMapState;

.field private geometryReqMapGrids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private guideReqMapGirds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private indoorMapGrids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field isGestureStep:Z

.field isMoveCameraStep:Z

.field public mAMapListener:Lcom/autonavi/amap/mapcore/interfaces/IAMapListener;

.field private mAnimateStateMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/CameraUpdateMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mBoardDataListener:Lcom/autonavi/ae/gmap/listener/RouteBoardDataListener;

.field mCacheMgr:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;

.field private mConnectionManager:Lcom/autonavi/ae/gmap/maploader/ConnectionManager;

.field private mContext:Landroid/content/Context;

.field private mCurGridFillLock:Ljava/lang/Object;

.field private mCurScreenGirds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private mCurScreenGridsCount:I

.field private mEagleEyeScreenGirds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureEndMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/message/GestureMapMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/message/GestureMapMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

.field private mMapHeatListener:Lcom/autonavi/ae/gmap/scenic/MapHeatListener;

.field public mMapListener:Lcom/autonavi/ae/gmap/listener/MapListener;

.field private mNativeMapengineInstance:J

.field private mScenicListener:Lcom/autonavi/ae/gmap/scenic/ScenicListener;

.field private mShowErrowTipCouont:I

.field private mStateMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/amap/mapcore/CameraUpdateMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mStateSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/autonavi/ae/gmap/utils/GLStateInstance;",
            ">;"
        }
    .end annotation
.end field

.field private mTextTextureGenerator:Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;

.field public mTileProcessCtrl:Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;

.field public mUserAgent:Ljava/lang/String;

.field private mapHeatReqMapGirds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private mapReqModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private map_anims_mgr:Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;

.field private map_gesture_count:I

.field private mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

.field private mut_lock:Ljava/lang/Object;

.field private poiReqMapGrids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private regionReqMapGrids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private roadReqMapGrids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field s:Lcom/autonavi/ae/gmap/GLMapState;

.field private stiReqMapGirds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private tmp_3072bytes_data:[B

.field private vectmcReqMapGirds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field

.field private versionMapGrids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/autonavi/ae/gmap/GLMapEngine;->BUILDINGHEIGHT:I

    const-string v0, "utf-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/autonavi/ae/gmap/GLMapEngine;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/amap/mapcore/interfaces/IAMap;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->geometryReqMapGrids:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->roadReqMapGrids:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->bldReqMapGrids:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->regionReqMapGrids:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->poiReqMapGrids:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->versionMapGrids:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->indoorMapGrids:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->vectmcReqMapGirds:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->stiReqMapGirds:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapReqModels:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->guideReqMapGirds:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapHeatReqMapGirds:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurScreenGirds:Ljava/util/List;

    iput-object v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mEagleEyeScreenGirds:Ljava/util/List;

    iput v3, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurScreenGridsCount:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurGridFillLock:Ljava/lang/Object;

    iput-object v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mTextTextureGenerator:Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;

    iput-object v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mConnectionManager:Lcom/autonavi/ae/gmap/maploader/ConnectionManager;

    iput-object v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mTileProcessCtrl:Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;

    iput-object v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    iput-object v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mBoardDataListener:Lcom/autonavi/ae/gmap/listener/RouteBoardDataListener;

    iput-object v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mScenicListener:Lcom/autonavi/ae/gmap/scenic/ScenicListener;

    iput-object v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mMapListener:Lcom/autonavi/ae/gmap/listener/MapListener;

    iput-object v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mAMapListener:Lcom/autonavi/amap/mapcore/interfaces/IAMapListener;

    iput-object v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mMapHeatListener:Lcom/autonavi/ae/gmap/scenic/MapHeatListener;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateMessageList:Ljava/util/List;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mAnimateStateMessageList:Ljava/util/List;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGestureMessageList:Ljava/util/List;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGestureEndMessageList:Ljava/util/List;

    iput-boolean v3, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->canStopRender:Z

    iput-boolean v3, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->isMoveCameraStep:Z

    iput-boolean v3, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->isGestureStep:Z

    iput v3, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->map_gesture_count:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    iput-object v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mut_lock:Ljava/lang/Object;

    iput v3, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mShowErrowTipCouont:I

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mUserAgent:Ljava/lang/String;

    iput-object v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->map_anims_mgr:Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;

    iput-object v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->copyGLMapState:Lcom/autonavi/ae/gmap/GLMapState;

    iput-object v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCacheMgr:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;

    new-instance v0, Lcom/autonavi/ae/gmap/GLMapState;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/GLMapState;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->s:Lcom/autonavi/ae/gmap/GLMapState;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateSparseArray:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    new-instance v0, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->map_anims_mgr:Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->map_anims_mgr:Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;

    new-instance v1, Lcom/autonavi/ae/gmap/GLMapEngine$1;

    invoke-direct {v1, p0}, Lcom/autonavi/ae/gmap/GLMapEngine$1;-><init>(Lcom/autonavi/ae/gmap/GLMapEngine;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->setMapAnimationListener(Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr$MapAnimationListener;)V

    const/16 v0, 0xc00

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->tmp_3072bytes_data:[B

    new-instance v0, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mTextTextureGenerator:Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mTextTextureGenerator:Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->getFontVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Map_Assert"

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/autonavi/ae/gmap/GLMapEngine;->BUILDINGHEIGHT:I

    invoke-static {v1, v0, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeCreate(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " amap/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/autonavi/ae/gmap/utils/GLMapUtil;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/ae/gmap/GLMapEngine;Lcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->doMapAnimationFinishCallback(Lcom/amap/api/maps/AMap$CancelableCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/autonavi/ae/gmap/GLMapEngine;)J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/autonavi/ae/gmap/GLMapEngine;)Lcom/autonavi/ae/gmap/scenic/ScenicListener;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mScenicListener:Lcom/autonavi/ae/gmap/scenic/ScenicListener;

    return-object v0
.end method

.method static synthetic access$1100(IJIIII[B)Z
    .locals 1

    invoke-static/range {p0 .. p7}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeMapDataControl(IJIIII[B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(IJLjava/lang/String;I)V
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeUpdateStyleOrIcons(IJLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/autonavi/ae/gmap/GLMapEngine;)Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->map_anims_mgr:Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;

    return-object v0
.end method

.method static synthetic access$400(IJIIIIIZ)V
    .locals 1

    invoke-static/range {p0 .. p8}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeAddGeoAndScreenCenterGroupAnimation(IJIIIIIZ)V

    return-void
.end method

.method static synthetic access$500(IJ)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeClearAnimation(IJ)V

    return-void
.end method

.method static synthetic access$600(IJIFIII)V
    .locals 1

    invoke-static/range {p0 .. p7}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeAddZoomRotateAnimation(IJIFIII)V

    return-void
.end method

.method static synthetic access$700(IJ)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeFinishAnimations(IJ)V

    return-void
.end method

.method static synthetic access$800(IJIFII)V
    .locals 1

    invoke-static/range {p0 .. p6}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeAddPivotZoomAnimation(IJIFII)V

    return-void
.end method

.method static synthetic access$900(Lcom/autonavi/ae/gmap/GLMapEngine;)Lcom/autonavi/amap/mapcore/interfaces/IAMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    return-object v0
.end method

.method private bitmap2bytes(Landroid/graphics/Bitmap;)[B
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public static bytes2Long([B)J
    .locals 7

    const/16 v6, 0x8

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    shl-long/2addr v2, v6

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public static destoryOverlay(IJ)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeDestoryOverlay(IJ)V

    return-void
.end method

.method private doMapAnimationCancelCallback(Lcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/autonavi/ae/gmap/GLMapEngine$7;

    invoke-direct {v1, p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine$7;-><init>(Lcom/autonavi/ae/gmap/GLMapEngine;Lcom/amap/api/maps/AMap$CancelableCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private doMapAnimationFinishCallback(Lcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/autonavi/ae/gmap/GLMapEngine$8;

    invoke-direct {v1, p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine$8;-><init>(Lcom/autonavi/ae/gmap/GLMapEngine;Lcom/amap/api/maps/AMap$CancelableCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private fillCurScreenGrids(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v0, 0xc8

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-wide v4, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurGridFillLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-wide v6, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    iget-object v3, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->tmp_3072bytes_data:[B

    const/4 v4, 0x5

    invoke-static {p1, v6, v7, v3, v4}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeGetScreenGrids(IJ[BI)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->tmp_3072bytes_data:[B

    aget-byte v3, v4, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v3, :cond_1

    :try_start_1
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    if-le v3, v0, :cond_b

    move v4, v0

    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurScreenGridsCount:I

    if-ne p1, v2, :cond_7

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurScreenGirds:Ljava/util/List;

    if-eqz v0, :cond_5

    move v3, v1

    :goto_2
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurScreenGirds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurScreenGirds:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->recycle()V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurScreenGirds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    :goto_3
    move v0, v1

    move v1, v2

    :goto_4
    if-ge v0, v4, :cond_6

    const/16 v3, 0xc00

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->tmp_3072bytes_data:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v3, v1

    if-lez v1, :cond_6

    const/16 v3, 0x14

    if-gt v1, v3, :cond_6

    add-int v3, v6, v1

    const/16 v7, 0xc00

    if-gt v3, v7, :cond_6

    new-instance v3, Ljava/lang/String;

    iget-object v7, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->tmp_3072bytes_data:[B

    sget-object v8, Lcom/autonavi/ae/gmap/GLMapEngine;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v3, v7, v6, v1, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x1

    if-ne p1, v2, :cond_a

    invoke-static {}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->obtain()Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v3, v7}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->setGridData(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurScreenGirds:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurScreenGridsCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurScreenGridsCount:I

    :cond_4
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurScreenGirds:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_6
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_7
    if-ne p1, v9, :cond_3

    :try_start_4
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mEagleEyeScreenGirds:Ljava/util/List;

    if-eqz v0, :cond_9

    move v3, v1

    :goto_6
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mEagleEyeScreenGirds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mEagleEyeScreenGirds:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->recycle()V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mEagleEyeScreenGirds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mEagleEyeScreenGirds:Ljava/util/List;

    goto :goto_3

    :cond_a
    if-ne p1, v9, :cond_4

    invoke-static {}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->obtain()Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v3, v7}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->setGridData(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mEagleEyeScreenGirds:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurScreenGridsCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurScreenGridsCount:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :cond_b
    move v4, v3

    goto/16 :goto_1
.end method

.method private gestureBegin()V
    .locals 1

    iget v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->map_gesture_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->map_gesture_count:I

    return-void
.end method

.method private gestureEnd()V
    .locals 1

    iget v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->map_gesture_count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->map_gesture_count:I

    iget v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->map_gesture_count:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/GLMapEngine;->recycleMessage()V

    :cond_0
    return-void
.end method

.method private getReqGridList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;",
            ">;"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->geometryReqMapGrids:Ljava/util/List;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->roadReqMapGrids:Ljava/util/List;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->bldReqMapGrids:Ljava/util/List;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->regionReqMapGrids:Ljava/util/List;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->poiReqMapGrids:Ljava/util/List;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->vectmcReqMapGirds:Ljava/util/List;

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->stiReqMapGirds:Ljava/util/List;

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->versionMapGrids:Ljava/util/List;

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->indoorMapGrids:Ljava/util/List;

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->guideReqMapGirds:Ljava/util/List;

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapHeatReqMapGirds:Ljava/util/List;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getStateInstanceWithEngineID(I)J
    .locals 2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/utils/GLStateInstance;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/utils/GLStateInstance;->getStateInstance()J

    move-result-wide v0

    goto :goto_0
.end method

.method private initAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mAnimateStateMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mAnimateStateMessageList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->generateMapAnimation(Lcom/autonavi/ae/gmap/GLMapEngine;)V

    :cond_0
    return-void
.end method

.method private isGridInList(ILjava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v4, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurScreenGridsCount:I

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurScreenGirds:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mEagleEyeScreenGirds:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private isIndoorGridInList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->getKeyGridName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static native nativeAddEngine(I)V
.end method

.method private static native nativeAddFlingAnimation(IJIII)V
.end method

.method private static native nativeAddGeoAndScreenCenterGroupAnimation(IJIIIIIZ)V
.end method

.method private static native nativeAddGroupAnimation(IJIIFIIIIZ)V
.end method

.method private static native nativeAddLabels3rd(IJI[Lcom/autonavi/ae/gmap/scenic/Label3rd;Z)V
.end method

.method private static native nativeAddMapGestureMsg(IJIFFF)V
.end method

.method private static native nativeAddMapNaviMsg(IJJJLandroid/graphics/Point;Landroid/graphics/Point;FFFFF)V
.end method

.method private static native nativeAddOverlayTexture(IJIIFFLandroid/graphics/Bitmap;ZZ)Z
.end method

.method private static native nativeAddPivotZoomAnimation(IJIFII)V
.end method

.method private static native nativeAddPoiFilter(IJIIIFFFFLjava/lang/String;I)V
.end method

.method private static native nativeAddZoomRotateAnimation(IJIFIII)V
.end method

.method private static native nativeAppendOpenLayer(IJ[B)V
.end method

.method private static native nativeCanStopRenderMap(IJ)Z
.end method

.method private static native nativeChangeMapEnv(IJLjava/lang/String;)V
.end method

.method private static native nativeChangeSurface(IJIIIIIILcom/autonavi/ae/gmap/GLMapEngine;)V
.end method

.method private static native nativeClearAllMessage(IJ)V
.end method

.method private static native nativeClearAnimation(IJ)V
.end method

.method private static native nativeClearAnimationByType(IJI)V
.end method

.method private static native nativeClearLabels3rd(IJIZ)V
.end method

.method private static native nativeClearOverlayTexture(IJ)V
.end method

.method private static native nativeClearPoiFilter(IJ)V
.end method

.method private static native nativeClearSelectedScenicPois(IJ)V
.end method

.method private static native nativeCreate(Ljava/lang/String;Ljava/lang/String;I)J
.end method

.method private static native nativeCreateEngineWithFrame(IJIIIIIIZ)I
.end method

.method protected static native nativeCreateOverlay(IJI)J
.end method

.method private static native nativeCreateSurface(IJLcom/autonavi/ae/gmap/GLMapEngine;)V
.end method

.method private static native nativeDeleteOpenLayer(IJI)Z
.end method

.method protected static native nativeDestoryOverlay(IJ)V
.end method

.method private static native nativeDestorySurface(JLcom/autonavi/ae/gmap/GLMapEngine;)V
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeDrawFrame(J)V
.end method

.method private static native nativeFinishAnimations(IJ)V
.end method

.method private static native nativeGetAnimationCount(IJ)I
.end method

.method private static native nativeGetEngineIDArray(J)[I
.end method

.method private static native nativeGetEngineIDWithGestureInfo(JLcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I
.end method

.method private static native nativeGetGestureMsgCount(IJ)I
.end method

.method private static native nativeGetGlOverlayMgrPtr(IJ)J
.end method

.method private static native nativeGetIsProcessBuildingMark(IJ)Z
.end method

.method private static native nativeGetMapCachePath(IJ)Ljava/lang/String;
.end method

.method public static native nativeGetMapEngineVersion(I)Ljava/lang/String;
.end method

.method private static native nativeGetMapHeatPoiId(IJ)Ljava/lang/String;
.end method

.method private static native nativeGetMapModeState(IJZ)[I
.end method

.method private static native nativeGetMapStateInstance(IJ)J
.end method

.method private static native nativeGetRealCityDataVerSion(IJI)Ljava/lang/String;
.end method

.method private static native nativeGetScreenGrids(IJ[BI)V
.end method

.method private static native nativeGetSrvViewStateBoolValue(IJI)Z
.end method

.method private static native nativeGetSrvViewStateFloatValue(IJI)F
.end method

.method private static native nativeGetSrvViewStateIntValue(IJI)I
.end method

.method private static native nativeIndoorBuildingHitTest(IJII[B)I
.end method

.method private static native nativeInsertEngine(IJ)V
.end method

.method private static native nativeInsertOpenLayer(IJ[BI)V
.end method

.method private static native nativeIsRealCityAnimateFinish(IJ)I
.end method

.method private static native nativeIsShowFeatureSpotIcon(IJ)Z
.end method

.method private static native nativeIsShowLandMarkBuildingPoi(IJ)Z
.end method

.method private static native nativeIsShowMask(IJ)Z
.end method

.method private static native nativeIsSkinExist(IJ[I)Z
.end method

.method private static native nativeIsSupportRealcity(IJI)I
.end method

.method public static native nativeLoadStartResource(IJLcom/autonavi/ae/gmap/GLMapEngine;[III)V
.end method

.method private static native nativeMapDataControl(IJIIII[B)Z
.end method

.method private static native nativePopRenderState(IJ)V
.end method

.method private static native nativePostDrawFrame(J)V
.end method

.method private static native nativePushRendererState(IJ)V
.end method

.method private static native nativePutMapdata(IJI[BI)I
.end method

.method private static native nativePutResourceData(IJ[B)V
.end method

.method private static native nativeRemoveEngine(IJ)V
.end method

.method private static native nativeRemovePoiFilter(IJLjava/lang/String;)V
.end method

.method private static native nativeSelectMapPois(IJIII[B)I
.end method

.method private static native nativeSetBackGroundColor(IJFFFF)V
.end method

.method private static native nativeSetIndoorBuildingToBeActive(IJLjava/lang/String;ILjava/lang/String;)V
.end method

.method private static native nativeSetInternalTexture(IJ[BI)V
.end method

.method private static native nativeSetMapHeatPoiRegion(IJLjava/lang/String;[I[I)V
.end method

.method private static native nativeSetMapModeAndStyle(IJ[IZZ[Lcom/autonavi/ae/gmap/style/StyleItem;)Z
.end method

.method private static native nativeSetMaskColor(IJI)V
.end method

.method private static native nativeSetParmater(IJIIIII)V
.end method

.method private static native nativeSetScenicFilter(IJI[I)V
.end method

.method private static native nativeSetSearchedSubwayIds(IJ[Ljava/lang/String;)V
.end method

.method private static native nativeSetServiceViewRect(IJIIIIII)V
.end method

.method private static native nativeSetServiceViewVisible(IZJ)V
.end method

.method private static native nativeSetShowFeatureSpotIcon(IJZ)V
.end method

.method private static native nativeSetShowMask(IJZ)V
.end method

.method private static native nativeSetSrvViewStateBoolValue(IJIZ)V
.end method

.method private static native nativeSetSrvViewStateFloatValue(IJIF)V
.end method

.method private static native nativeSetSrvViewStateIntValue(IJII)V
.end method

.method private static native nativeTmcCacheCheckValid(IJLjava/lang/String;ZZ[B)I
.end method

.method private static native nativeUpdateStyleOrIcons(IJLjava/lang/String;I)V
.end method

.method private static native nativeUpdateTmcCache(IJI[BLjava/lang/String;Z)V
.end method

.method private parseTiles([BI)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_0
    aget-byte v4, p1, v0

    if-gtz v4, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    move v2, v3

    :goto_1
    if-ge v1, v4, :cond_0

    add-int/lit8 v3, v2, 0x1

    :try_start_1
    aget-byte v2, p1, v2

    new-instance v5, Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-direct {v5, p1, v3, v2, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    new-instance v3, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    invoke-direct {v3, v5, p2}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_2
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private processAnimations(Lcom/autonavi/ae/gmap/GLMapState;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->recalculate()V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->map_anims_mgr:Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->getAnimationsCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->map_anims_mgr:Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;

    invoke-virtual {v0, p1}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->doAnimations(Lcom/autonavi/ae/gmap/GLMapState;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private processGestureMessage(Lcom/autonavi/ae/gmap/GLMapState;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGestureMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->isGestureStep:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->isGestureStep:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->isGestureStep:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->recalculate()V

    :goto_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGestureMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGestureMessageList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;

    if-eqz v0, :cond_7

    iget v1, v0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->width:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapWidth()I

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->width:I

    :cond_2
    iget v1, v0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->height:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapHeight()I

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->height:I

    :cond_3
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->getMapGestureState()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_5

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/GLMapEngine;->gestureBegin()V

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGestureEndMessageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const/16 v2, 0x65

    if-ne v1, v2, :cond_6

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->runCameraUpdate(Lcom/autonavi/ae/gmap/GLMapState;)V

    goto :goto_2

    :cond_6
    const/16 v2, 0x66

    if-ne v1, v2, :cond_4

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/GLMapEngine;->gestureEnd()V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGestureEndMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/GLMapEngine;->recycleMessage()V

    goto :goto_0
.end method

.method private processMessage()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getCloneMapState()Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->reset()V

    invoke-direct {p0, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->processGestureMessage(Lcom/autonavi/ae/gmap/GLMapState;)V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGestureMessageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->processStateMapMessage(Lcom/autonavi/ae/gmap/GLMapState;)V

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->processAnimations(Lcom/autonavi/ae/gmap/GLMapState;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->setMapState(ILcom/autonavi/ae/gmap/GLMapState;)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateMessageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateMessageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private processRequiredData(ILjava/util/List;ILjava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/autonavi/ae/gmap/maploader/NetworkState;->getInstance()Lcom/autonavi/ae/gmap/maploader/NetworkState;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/maploader/NetworkState;->isInternetConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mShowErrowTipCouont:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mShowErrowTipCouont:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mShowErrowTipCouont:I

    const/16 v0, 0x3ea

    invoke-virtual {p0, p1, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->onException(II)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    new-instance v1, Lcom/autonavi/ae/gmap/GLMapEngine$2;

    invoke-direct {v1, p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine$2;-><init>(Lcom/autonavi/ae/gmap/GLMapEngine;I)V

    invoke-interface {v0, v1}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->postQueueEvent(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mShowErrowTipCouont:I

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v10, :cond_8

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mTileProcessCtrl:Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->getKeyGridName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;->isProcessing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_4
    const/4 v1, 0x4

    if-ne p3, v1, :cond_7

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x64

    new-array v7, v1, [B

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v1, p1

    invoke-static/range {v1 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeTmcCacheCheckValid(IJLjava/lang/String;ZZ[B)I

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_3

    if-nez v1, :cond_6

    const/4 v1, 0x0

    aget-byte v2, v7, v1

    const/4 v1, 0x0

    if-lez v2, :cond_5

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    invoke-direct {v1, v7, v3, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iput-object v1, v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->mObj:Ljava/lang/Object;

    :cond_6
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapModeState(IZ)[I

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v1, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;

    invoke-direct {v1, p1, p0, p3}, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;-><init>(ILcom/autonavi/ae/gmap/GLMapEngine;I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->setGetRequestMethod(Z)V

    move-object v0, v1

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;

    invoke-virtual {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapZoomer(I)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x2

    aget v2, v2, v5

    invoke-virtual {v0, v3, v4, v2}, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->setMapParams(III)V

    :cond_9
    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_4
    if-ge v2, v3, :cond_a

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    iget-object v4, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mTileProcessCtrl:Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->getKeyGridName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;->addProcessingTile(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->addRequestTiles(Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :pswitch_1
    new-instance v1, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;

    invoke-direct {v1, p1, p0, p3}, Lcom/autonavi/ae/gmap/maploader/IndoorMapLoader;-><init>(ILcom/autonavi/ae/gmap/GLMapEngine;I)V

    goto :goto_3

    :pswitch_2
    new-instance v1, Lcom/autonavi/ae/gmap/maploader/GuideMapLoader;

    invoke-direct {v1, p1, p0, p3}, Lcom/autonavi/ae/gmap/maploader/GuideMapLoader;-><init>(ILcom/autonavi/ae/gmap/GLMapEngine;I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->setGetRequestMethod(Z)V

    goto :goto_3

    :pswitch_3
    new-instance v1, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;

    invoke-direct {v1, p1, p0, p3}, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;-><init>(ILcom/autonavi/ae/gmap/GLMapEngine;I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->setGetRequestMethod(Z)V

    move-object v0, v1

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;

    invoke-virtual {v0, p4}, Lcom/autonavi/ae/gmap/maploader/HeatMapLoader;->setMapHeatPoiId(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_4
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapModeState(IZ)[I

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v1, Lcom/autonavi/ae/gmap/maploader/TmcMapLoader;

    invoke-direct {v1, p1, p0, p3}, Lcom/autonavi/ae/gmap/maploader/TmcMapLoader;-><init>(ILcom/autonavi/ae/gmap/GLMapEngine;I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;->setGetRequestMethod(Z)V

    move-object v0, v1

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;

    invoke-virtual {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapZoomer(I)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x2

    aget v2, v2, v5

    invoke-virtual {v0, v3, v4, v2}, Lcom/autonavi/ae/gmap/maploader/NormalMapLoader;->setMapParams(III)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mConnectionManager:Lcom/autonavi/ae/gmap/maploader/ConnectionManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mConnectionManager:Lcom/autonavi/ae/gmap/maploader/ConnectionManager;

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->insertConntionTask(Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private processStateMapMessage(Lcom/autonavi/ae/gmap/GLMapState;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->isMoveCameraStep:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->isMoveCameraStep:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->isMoveCameraStep:Z

    if-eqz p1, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateMessageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->width:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapWidth()I

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->width:I

    :cond_2
    iget v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->height:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapHeight()I

    move-result v1

    iput v1, v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->height:I

    :cond_3
    invoke-virtual {p1}, Lcom/autonavi/ae/gmap/GLMapState;->recalculate()V

    invoke-virtual {v0, p1}, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;->runCameraUpdate(Lcom/autonavi/ae/gmap/GLMapState;)V

    goto :goto_0
.end method

.method private recycleMessage()V
    .locals 2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGestureEndMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGestureEndMessageList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;

    if-eqz v0, :cond_4

    instance-of v1, v0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->recycle()V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/autonavi/amap/mapcore/message/HoverGestureMapMessage;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/autonavi/amap/mapcore/message/HoverGestureMapMessage;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/message/HoverGestureMapMessage;->recycle()V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->recycle()V

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->recycle()V

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public AddGeoAndScreenCenterGroupAnimation(IILcom/autonavi/ae/gmap/glinterface/GLGeoPoint;Landroid/graphics/Point;Z)V
    .locals 8

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    new-instance v0, Lcom/autonavi/ae/gmap/GLMapEngine$9;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine$9;-><init>(Lcom/autonavi/ae/gmap/GLMapEngine;IILcom/autonavi/ae/gmap/glinterface/GLGeoPoint;Landroid/graphics/Point;Z)V

    invoke-interface {v7, v0}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->postQueueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public AddGroupAnimation(IIFIIIILcom/amap/api/maps/AMap$CancelableCallback;)V
    .locals 10

    iget-object v9, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    new-instance v0, Lcom/autonavi/ae/gmap/GLMapEngine$6;

    move-object v1, p0

    move v2, p2

    move v3, p5

    move v4, p4

    move v5, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/autonavi/ae/gmap/GLMapEngine$6;-><init>(Lcom/autonavi/ae/gmap/GLMapEngine;IIIFIILcom/amap/api/maps/AMap$CancelableCallback;)V

    invoke-interface {v9, v0}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->postQueueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public FinishAnimations(IZ)V
    .locals 2

    if-eqz p2, :cond_1

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeFinishAnimations(IJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    new-instance v1, Lcom/autonavi/ae/gmap/GLMapEngine$13;

    invoke-direct {v1, p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine$13;-><init>(Lcom/autonavi/ae/gmap/GLMapEngine;I)V

    invoke-interface {v0, v1}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->postQueueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public GetCurrentGrideNameLen(I)I
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/GLMapEngine;->isMapEngineValid()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurGridFillLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurScreenGridsCount:I

    if-gtz v0, :cond_1

    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurScreenGirds:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    :try_start_3
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mEagleEyeScreenGirds:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    monitor-exit v2

    goto :goto_0

    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method public GetRealCityDataVerSion(II)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeGetRealCityDataVerSion(IJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IsRealCityAnimateFinish(I)I
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeIsRealCityAnimateFinish(IJ)I

    move-result v0

    return v0
.end method

.method public IsSkinExist(IIIIII)Z
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v1, 0x2

    aput p4, v0, v1

    const/4 v1, 0x3

    aput p5, v0, v1

    const/4 v1, 0x4

    aput p6, v0, v1

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v2, v3, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeIsSkinExist(IJ[I)Z

    move-result v0

    return v0
.end method

.method public IsSupportRealcity(II)I
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeIsSupportRealcity(IJI)I

    move-result v0

    return v0
.end method

.method public OnMapAnimationFinished(II)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mMapListener:Lcom/autonavi/ae/gmap/listener/MapListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mMapListener:Lcom/autonavi/ae/gmap/listener/MapListener;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/ae/gmap/listener/MapListener;->onMapAnimationFinished(II)V

    :cond_0
    return-void
.end method

.method public OnMapLoadResourceByName(ILjava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "icons_5"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapCacheMgr()Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomTextureResourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;->getOtherResDataFromDisk(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    if-nez v0, :cond_0

    move-object v1, v0

    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapCacheMgr()Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :cond_3
    :try_start_2
    const-string v1, "bktile"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapCacheMgr()Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;->getOtherResData(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    :try_start_3
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getCustomBackgroundColor()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->writeCustomBackground([BI)[B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_3
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_2
.end method

.method public OnMapResourceReLoad(ILjava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->UpdateStyleOrIcons(ILjava/lang/String;I)V

    return-void
.end method

.method public OnMapResourceRequired(ILjava/lang/String;I)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;-><init>()V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCacheMgr:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;

    if-eqz v1, :cond_0

    iput-object p2, v0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->fullName:Ljava/lang/String;

    const-string v1, "_|\\."

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lt v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    :try_start_1
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->clientVersion:I

    array-length v2, v1

    if-le v2, v4, :cond_2

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->serverVersion:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iput p3, v0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->type:I

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapSvrAddress()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;

    invoke-direct {v2, p1, p0, v0}, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;-><init>(ILcom/autonavi/ae/gmap/GLMapEngine;Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ws/mps/vmap?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/autonavi/ae/gmap/style/StylesIconsUpdate;->start(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :try_start_3
    iput v1, v0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->serverVersion:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_1
    move-exception v1

    const/4 v1, 0x1

    :try_start_4
    iput v1, v0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->clientVersion:I

    const/4 v1, 0x1

    iput v1, v0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager$RetStyleIconsFile;->serverVersion:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method public PutResourceData(I[B)V
    .locals 6

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mut_lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v2, v3, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativePutResourceData(IJ[B)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    invoke-interface {v0}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->resetRenderTimeLong()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public SetMapModeAndStyle(IIIIZZ[Lcom/autonavi/ae/gmap/style/StyleItem;)Z
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x5

    new-array v4, v0, [I

    aput p2, v4, v1

    const/4 v0, 0x1

    aput p3, v4, v0

    const/4 v0, 0x2

    aput p4, v4, v0

    const/4 v0, 0x3

    aput v1, v4, v0

    const/4 v0, 0x4

    aput v1, v4, v0

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    move v1, p1

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-static/range {v1 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeSetMapModeAndStyle(IJ[IZZ[Lcom/autonavi/ae/gmap/style/StyleItem;)Z

    move-result v0

    return v0
.end method

.method public UpdateStyleOrIcons(ILjava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    new-instance v1, Lcom/autonavi/ae/gmap/GLMapEngine$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapEngine$3;-><init>(Lcom/autonavi/ae/gmap/GLMapEngine;ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->postQueueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public declared-synchronized addGestureMessage(ILcom/autonavi/amap/mapcore/message/GestureMapMessage;ZII)V
    .locals 1

    monitor-enter p0

    if-nez p2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iput-boolean p3, p2, Lcom/autonavi/amap/mapcore/message/GestureMapMessage;->isGestureScaleByMapCenter:Z

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGestureMessageList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addLabels3rd(II[Lcom/autonavi/ae/gmap/scenic/Label3rd;Z)V
    .locals 7

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    move v1, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeAddLabels3rd(IJI[Lcom/autonavi/ae/gmap/scenic/Label3rd;Z)V

    return-void
.end method

.method public addMessage(Lcom/autonavi/amap/mapcore/CameraUpdateMessage;Z)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mAnimateStateMessageList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mAnimateStateMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mAnimateStateMessageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateMessageList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateMessageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addOverlayTexture(ILcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;)V
    .locals 11

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    iget v4, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mId:I

    iget v5, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mAnchor:I

    iget v6, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mXRatio:F

    iget v7, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mYRatio:F

    iget-object v8, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->mBitmap:Landroid/graphics/Bitmap;

    iget-boolean v9, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->isGenMimps:Z

    iget-boolean v10, p2, Lcom/autonavi/ae/gmap/gloverlay/GLTextureProperty;->isRepeat:Z

    move v1, p1

    invoke-static/range {v1 .. v10}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeAddOverlayTexture(IJIIFFLandroid/graphics/Bitmap;ZZ)Z

    :cond_0
    return-void
.end method

.method public addPoiFilter(IIIIFFLjava/lang/String;I)V
    .locals 13

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const/high16 v9, 0x40400000    # 3.0f

    const/high16 v10, 0x41a00000    # 20.0f

    move v1, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v1 .. v12}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeAddPoiFilter(IJIIIFFFFLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public appendOpenLayer(I[B)V
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeAppendOpenLayer(IJ[B)V

    :cond_0
    return-void
.end method

.method public canStopMapRender(I)Z
    .locals 6

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mut_lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeCanStopRenderMap(IJ)Z

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public changeMapEnv(I)V
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeChangeMapEnv(IJLjava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCacheMgr:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeGetMapCachePath(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;->setMapCachePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCacheMgr:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;->checkDir()V

    :cond_0
    return-void
.end method

.method public changeSurface(IIIIIII)V
    .locals 11

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    move v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object v10, p0

    invoke-static/range {v1 .. v10}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeChangeSurface(IJIIIIIILcom/autonavi/ae/gmap/GLMapEngine;)V

    :cond_0
    return-void
.end method

.method public clearAllMessages(I)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeClearAllMessage(IJ)V

    return-void
.end method

.method public clearAllRequestTiles()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mTileProcessCtrl:Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mTileProcessCtrl:Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;->clearAll()V

    :cond_0
    return-void
.end method

.method public clearAnimations(IZ)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->map_anims_mgr:Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->clearAnimations()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    new-instance v1, Lcom/autonavi/ae/gmap/GLMapEngine$4;

    invoke-direct {v1, p0}, Lcom/autonavi/ae/gmap/GLMapEngine$4;-><init>(Lcom/autonavi/ae/gmap/GLMapEngine;)V

    invoke-interface {v0, v1}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->postQueueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public clearAnimations(IZI)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->map_anims_mgr:Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->clearAnimations()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    new-instance v1, Lcom/autonavi/ae/gmap/GLMapEngine$5;

    invoke-direct {v1, p0}, Lcom/autonavi/ae/gmap/GLMapEngine$5;-><init>(Lcom/autonavi/ae/gmap/GLMapEngine;)V

    invoke-interface {v0, v1}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->postQueueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public clearException(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    invoke-interface {v0, p1}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->clearException(I)V

    :cond_0
    return-void
.end method

.method public clearLabels3rd(IIZ)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeClearLabels3rd(IJIZ)V

    return-void
.end method

.method public clearPoiFilter(I)V
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeClearPoiFilter(IJ)V

    :cond_0
    return-void
.end method

.method public clearSelectMapPois(I)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeClearSelectedScenicPois(IJ)V

    return-void
.end method

.method public createEngineWithFrame(ILandroid/graphics/Rect;II)V
    .locals 11

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mEagleEyeScreenGirds:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mEagleEyeScreenGirds:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCacheMgr:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeGetMapCachePath(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManagerImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCacheMgr:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCacheMgr:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;->checkDir()V

    :cond_1
    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v10, 0x0

    move v1, p1

    move v8, p3

    move v9, p4

    invoke-static/range {v1 .. v10}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeCreateEngineWithFrame(IJIIIIIIZ)I

    new-instance v0, Lcom/autonavi/ae/gmap/utils/GLStateInstance;

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeGetMapStateInstance(IJ)J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lcom/autonavi/ae/gmap/utils/GLStateInstance;-><init>(IJ)V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public createOverlay(II)J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeCreateOverlay(IJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteOpenLayer(II)V
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeDeleteOpenLayer(IJI)Z

    :cond_0
    return-void
.end method

.method public destorySurface()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mTileProcessCtrl:Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mTileProcessCtrl:Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;->clearAll()V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mConnectionManager:Lcom/autonavi/ae/gmap/maploader/ConnectionManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mConnectionManager:Lcom/autonavi/ae/gmap/maploader/ConnectionManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->threadFlag:Z

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mConnectionManager:Lcom/autonavi/ae/gmap/maploader/ConnectionManager;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mConnectionManager:Lcom/autonavi/ae/gmap/maploader/ConnectionManager;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mConnectionManager:Lcom/autonavi/ae/gmap/maploader/ConnectionManager;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->shutDown()V

    iput-object v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mConnectionManager:Lcom/autonavi/ae/gmap/maploader/ConnectionManager;

    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateSparseArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_2
    invoke-static {}, Lcom/autonavi/amap/mapcore/message/MoveGestureMapMessage;->destory()V

    invoke-static {}, Lcom/autonavi/amap/mapcore/message/HoverGestureMapMessage;->destory()V

    invoke-static {}, Lcom/autonavi/amap/mapcore/message/RotateGestureMapMessage;->destory()V

    invoke-static {}, Lcom/autonavi/amap/mapcore/message/ScaleGestureMapMessage;->destory()V

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {v0, v1, p0}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeDestorySurface(JLcom/autonavi/ae/gmap/GLMapEngine;)V

    :cond_3
    iput-object v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->tmp_3072bytes_data:[B

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mut_lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeDestroy(J)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->copyGLMapState:Lcom/autonavi/ae/gmap/GLMapState;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->copyGLMapState:Lcom/autonavi/ae/gmap/GLMapState;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/GLMapState;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->copyGLMapState:Lcom/autonavi/ae/gmap/GLMapState;

    :cond_4
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    :cond_5
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public doMapDataControl(IIIII)Z
    .locals 8

    const/4 v7, 0x1

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-ne p2, v7, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    if-ne p5, v7, :cond_0

    new-instance v0, Lcom/autonavi/ae/gmap/maploader/MessageDataThread;

    move v1, p1

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/ae/gmap/maploader/MessageDataThread;-><init>(ILcom/autonavi/ae/gmap/GLMapEngine;IIII)V

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/MessageDataThread;->start()V

    :cond_0
    return v7
.end method

.method public drawFrame()V
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/GLMapEngine;->processMessage()V

    const-class v1, Lcom/autonavi/ae/gmap/GLMapEngine;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeDrawFrame(J)V

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativePostDrawFrame(J)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/GLMapEngine;->initAnimation()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getAnimateionsCount()I
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->map_anims_mgr:Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->getAnimationsCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getCameraDegree(I)F
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateInstanceWithEngineID(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetCameraDegree(J)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCloneMapState()Lcom/autonavi/ae/gmap/GLMapState;
    .locals 4

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->copyGLMapState:Lcom/autonavi/ae/gmap/GLMapState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/ae/gmap/GLMapState;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapEnginePtr()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/autonavi/ae/gmap/GLMapState;-><init>(IJ)V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->copyGLMapState:Lcom/autonavi/ae/gmap/GLMapState;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->copyGLMapState:Lcom/autonavi/ae/gmap/GLMapState;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_z()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setMapZoomer(F)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->copyGLMapState:Lcom/autonavi/ae/gmap/GLMapState;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_c()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setCameraDegree(F)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->copyGLMapState:Lcom/autonavi/ae/gmap/GLMapState;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_r()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setMapAngle(F)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->copyGLMapState:Lcom/autonavi/ae/gmap/GLMapState;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_x()I

    move-result v1

    iget-object v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/MapConfig;->getS_y()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/ae/gmap/GLMapState;->setMapGeoCenter(II)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->copyGLMapState:Lcom/autonavi/ae/gmap/GLMapState;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurScreenGridList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurGridFillLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurScreenGridsCount:I

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurScreenGirds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEngineIDWithGestureInfo(Lcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {v0, v1, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeGetEngineIDWithGestureInfo(JLcom/autonavi/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getEngineIDWithType(I)I
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getEngineIDs()[I
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeGetEngineIDArray(J)[I

    move-result-object v0

    return-object v0
.end method

.method public getGLUnitWithPixel20(II)F
    .locals 2

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateInstanceWithEngineID(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetGLUnitWithPixel20(JI)F

    move-result v0

    return v0
.end method

.method public getGLUnitWithWin(II)F
    .locals 2

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateInstanceWithEngineID(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetGLUnitWithWin(JI)F

    move-result v0

    return v0
.end method

.method public getGLUnitWithWinByY(III)F
    .locals 2

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateInstanceWithEngineID(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetGLUnitWithWinByY(JII)F

    move-result v0

    return v0
.end method

.method public getGlOverlayMgrPtr(I)J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeGetGlOverlayMgrPtr(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIsProcessBuildingMark(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeGetIsProcessBuildingMark(IJ)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getLabelBuffer(IIII)[B
    .locals 8

    monitor-enter p0

    const/16 v0, 0xc00

    :try_start_0
    new-array v7, v0, [B

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    move v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeSelectMapPois(IJIII[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v7

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMapAngle(I)F
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateInstanceWithEngineID(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetMapAngle(J)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMapCacheMgr()Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCacheMgr:Lcom/autonavi/ae/gmap/style/MapTilsCacheAndResManager;

    return-object v0
.end method

.method public declared-synchronized getMapCenter(I)Landroid/graphics/Point;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateInstanceWithEngineID(I)J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetMapCenter(JLandroid/graphics/Point;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMapEnginePtr()J
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    return-wide v0
.end method

.method public getMapIndoorAddress()Ljava/lang/String;
    .locals 1

    const-string v0, "http://m5.amap.com"

    return-object v0
.end method

.method public getMapModeState(IZ)[I
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeGetMapModeState(IJZ)[I

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->s:Lcom/autonavi/ae/gmap/GLMapState;

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateInstanceWithEngineID(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/ae/gmap/GLMapState;->setMapstateInstance(J)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->s:Lcom/autonavi/ae/gmap/GLMapState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMapStateInstance(I)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateInstanceWithEngineID(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMapSvrAddress()Ljava/lang/String;
    .locals 1

    const-string v0, "http://mps.amap.com"

    return-object v0
.end method

.method public getMapZoomer(I)F
    .locals 2

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateInstanceWithEngineID(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetMapZoomer(J)F

    move-result v0

    return v0
.end method

.method public getMaxZoomLevel(I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateInstanceWithEngineID(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetMaxZoomLevel(J)I

    move-result v0

    return v0
.end method

.method public getMinZoomLevel(I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateInstanceWithEngineID(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetMinZoomLevel(J)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getNewMapState(I)Lcom/autonavi/ae/gmap/GLMapState;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Lcom/autonavi/ae/gmap/GLMapState;

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-direct {v0, p1, v2, v3}, Lcom/autonavi/ae/gmap/GLMapState;-><init>(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOvelayBundle(I)Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle",
            "<",
            "Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay",
            "<**>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/utils/GLStateInstance;

    iget-object v0, v0, Lcom/autonavi/ae/gmap/utils/GLStateInstance;->mOverlayBundle:Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;

    goto :goto_0
.end method

.method public getPixel20Bound(ILandroid/graphics/Rect;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateInstanceWithEngineID(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lcom/autonavi/ae/gmap/GLMapState;->nativeGetPixel20Bound(JLandroid/graphics/Rect;)V

    return-void
.end method

.method public getSrvViewStateBoolValue(II)Z
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeGetSrvViewStateBoolValue(IJI)Z

    move-result v0

    return v0
.end method

.method public getSrvViewStateFloatValue(II)F
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeGetSrvViewStateFloatValue(IJI)F

    move-result v0

    return v0
.end method

.method public getSrvViewStateIntValue(II)I
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeGetSrvViewStateIntValue(IJI)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getStateMessage()Lcom/autonavi/amap/mapcore/CameraUpdateMessage;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateMessageList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateMessageList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amap/mapcore/CameraUpdateMessage;

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateMessageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStateMessageCount()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public initConnectionManager()V
    .locals 1

    new-instance v0, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;

    invoke-direct {v0, p0}, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;-><init>(Lcom/autonavi/ae/gmap/GLMapEngine;)V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mConnectionManager:Lcom/autonavi/ae/gmap/maploader/ConnectionManager;

    new-instance v0, Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;-><init>()V

    iput-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mTileProcessCtrl:Lcom/autonavi/ae/gmap/maploader/TilesProcessingCtrl;

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mConnectionManager:Lcom/autonavi/ae/gmap/maploader/ConnectionManager;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->start()V

    return-void
.end method

.method public interruptAnimation()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->isInMapAnimation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->map_anims_mgr:Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/glanimation/ADGLMapAnimationMgr;->getCancelCallback()Lcom/amap/api/maps/AMap$CancelableCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->doMapAnimationCancelCallback(Lcom/amap/api/maps/AMap$CancelableCallback;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->clearAnimations(IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CancelableCallback.onCancel"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isEngineCreated(I)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getEngineIDs()[I

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v1, v2

    if-lez v1, :cond_0

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v2, v1

    if-ne v4, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isGridInScreen(IILjava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/GLMapEngine;->isMapEngineValid()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurGridFillLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, p1, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->isGridInList(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public isGridsInScreen(ILjava/util/List;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;",
            ">;I)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/GLMapEngine;->isMapEngineValid()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mCurGridFillLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    move v3, v1

    :goto_1
    if-ge v3, v5, :cond_3

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->getGridName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->isGridInList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v4

    move v0, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    monitor-exit v4

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_0
.end method

.method public isInMapAction(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeGetGestureMsgCount(IJ)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInMapAnimation(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/ae/gmap/GLMapEngine;->getAnimateionsCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIndoorGridInScreen(ILjava/lang/String;S)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isIndoorGridsInScreen(Ljava/util/List;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public isMapEngineValid()Z
    .locals 6

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mut_lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isShowFeatureSpotIcon(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeIsShowFeatureSpotIcon(IJ)Z

    move-result v0

    return v0
.end method

.method public isShowLandMarkBuildingPoi(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeIsShowLandMarkBuildingPoi(IJ)Z

    move-result v0

    return v0
.end method

.method public isShowMask(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeIsShowMask(IJ)Z

    move-result v0

    return v0
.end method

.method public loadStartResource(IIIIZII)V
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x5

    new-array v5, v0, [I

    aput p2, v5, v1

    const/4 v0, 0x1

    aput p3, v5, v0

    const/4 v0, 0x2

    aput p4, v5, v0

    const/4 v0, 0x3

    aput v1, v5, v0

    const/4 v0, 0x4

    aput v1, v5, v0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    move v1, p1

    move-object v4, p0

    move v6, p6

    move v7, p7

    invoke-static/range {v1 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeLoadStartResource(IJLcom/autonavi/ae/gmap/GLMapEngine;[III)V

    :cond_0
    return-void
.end method

.method public mapToP20Point(IFFLandroid/graphics/Point;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateInstanceWithEngineID(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3, p4}, Lcom/autonavi/ae/gmap/GLMapState;->nativeMapToP20Point(JFFLandroid/graphics/Point;)V

    return-void
.end method

.method public mapToScreenPoint(IFFLandroid/graphics/PointF;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateInstanceWithEngineID(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3, p4}, Lcom/autonavi/ae/gmap/GLMapState;->nativeMapToScreenPoint(JFFLandroid/graphics/PointF;)V

    return-void
.end method

.method public mapToScreenPointWithZ(IFFFLandroid/graphics/PointF;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateInstanceWithEngineID(I)J

    move-result-wide v0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/autonavi/ae/gmap/GLMapState;->nativeMapToScreenPointWithZ(JFFFLandroid/graphics/PointF;)V

    return-void
.end method

.method public onCharBitmapRequired(II)[B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mTextTextureGenerator:Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;

    invoke-virtual {v0, p2}, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->getTextPixelBuffer(I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    invoke-interface {v1}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->resetRenderTimeLong()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClearCache(I)V
    .locals 1

    invoke-static {}, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->getInstance()Lcom/autonavi/ae/gmap/maploader/VMapDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/VMapDataCache;->reset()V

    return-void
.end method

.method public onClearOverlayTexture(I)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeClearOverlayTexture(IJ)V

    return-void
.end method

.method public onException(II)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->onException(II)V

    :cond_0
    return-void
.end method

.method public onIndoorBuildingActivity(I[B)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->onIndoorBuildingActivity(I[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onIndoorDataRequired(II[Ljava/lang/String;[I[I)V
    .locals 6

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->getReqGridList(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    move v2, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->recycle()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->clear()V

    move v0, v1

    :goto_2
    array-length v1, p3

    if-ge v0, v1, :cond_3

    invoke-static {}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->obtain()Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    move-result-object v1

    aget-object v2, p3, v0

    aget v4, p4, v0

    aget v5, p5, v0

    invoke-virtual {v1, v2, p2, v4, v5}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->setGridData(Ljava/lang/String;III)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v3, p2, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->processRequiredData(ILjava/util/List;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onLoadTextureByName(ILjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onLogOfflineDataStatusReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLogReport(IIILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMapCharsWidthsRequired(I[III)[B
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mTextTextureGenerator:Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;

    invoke-virtual {v0, p2}, Lcom/autonavi/ae/gmap/utils/TextTextureGenerator;->getCharsWidths([I)[B

    move-result-object v0

    return-object v0
.end method

.method public onMapDataRequired(II[Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->getReqGridList(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    move v3, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->recycle()V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->clear()V

    array-length v3, p3

    move v0, v1

    move-object v1, v2

    :goto_2
    if-ge v0, v3, :cond_6

    const/16 v5, 0xc

    if-ne p2, v5, :cond_5

    iget-wide v6, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v6, v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeGetMapHeatPoiId(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->obtain()Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    move-result-object v1

    aget-object v5, p3, v0

    invoke-virtual {v1, v5, v2, p2}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->setGridData(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->obtain()Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;

    move-result-object v1

    aget-object v5, p3, v0

    invoke-virtual {v1, v5, p2}, Lcom/autonavi/ae/gmap/maploader/MapSourceGridData;->setGridData(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    :try_start_1
    invoke-direct {p0, p1, v4, p2, v2}, Lcom/autonavi/ae/gmap/GLMapEngine;->processRequiredData(ILjava/util/List;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onMapHeatActive(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mMapHeatListener:Lcom/autonavi/ae/gmap/scenic/MapHeatListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mMapHeatListener:Lcom/autonavi/ae/gmap/scenic/MapHeatListener;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/ae/gmap/scenic/MapHeatListener;->onMapHeatActive(IZ)V

    :cond_0
    return-void
.end method

.method public onMapProcessEvent(I)V
    .locals 0

    return-void
.end method

.method public onMapSufaceChanged(III)V
    .locals 0

    return-void
.end method

.method public onMapSurfaceRenderer(II)V
    .locals 2

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mMapListener:Lcom/autonavi/ae/gmap/listener/MapListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mMapListener:Lcom/autonavi/ae/gmap/listener/MapListener;

    invoke-virtual {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/autonavi/ae/gmap/listener/MapListener;->beforeDrawFrame(ILcom/autonavi/ae/gmap/GLMapState;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mMapListener:Lcom/autonavi/ae/gmap/listener/MapListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mMapListener:Lcom/autonavi/ae/gmap/listener/MapListener;

    invoke-virtual {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/autonavi/ae/gmap/listener/MapListener;->afterDrawFrame(ILcom/autonavi/ae/gmap/GLMapState;)V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mAMapListener:Lcom/autonavi/amap/mapcore/interfaces/IAMapListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mAMapListener:Lcom/autonavi/amap/mapcore/interfaces/IAMapListener;

    invoke-virtual {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMapListener;->afterDrawFrame(ILcom/autonavi/ae/gmap/GLMapState;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->fillCurScreenGrids(I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    invoke-interface {v0}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->resetRenderTimeLong()V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mAMapListener:Lcom/autonavi/amap/mapcore/interfaces/IAMapListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mAMapListener:Lcom/autonavi/amap/mapcore/interfaces/IAMapListener;

    invoke-virtual {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMapListener;->beforeDrawLabel(ILcom/autonavi/ae/gmap/GLMapState;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mAMapListener:Lcom/autonavi/amap/mapcore/interfaces/IAMapListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mAMapListener:Lcom/autonavi/amap/mapcore/interfaces/IAMapListener;

    invoke-virtual {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMapState(I)Lcom/autonavi/ae/gmap/GLMapState;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMapListener;->afterDrawLabel(ILcom/autonavi/ae/gmap/GLMapState;)V

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x2

    invoke-virtual {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->IsRealCityAnimateFinish(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mMapListener:Lcom/autonavi/ae/gmap/listener/MapListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mMapListener:Lcom/autonavi/ae/gmap/listener/MapListener;

    invoke-interface {v0, p1}, Lcom/autonavi/ae/gmap/listener/MapListener;->onRealCityAnimateFinish(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_0
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_1
        0xb -> :sswitch_2
        0x2710 -> :sswitch_3
    .end sparse-switch
.end method

.method public onOfflineMap(ILjava/lang/String;I)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mMapListener:Lcom/autonavi/ae/gmap/listener/MapListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mMapListener:Lcom/autonavi/ae/gmap/listener/MapListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/autonavi/ae/gmap/listener/MapListener;->onOfflineMap(ILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onOpenLayerDataRequired(ILjava/lang/String;III[Ljava/lang/String;)V
    .locals 7

    new-instance v0, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;

    move v1, p1

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;-><init>(ILcom/autonavi/ae/gmap/GLMapEngine;Ljava/lang/String;III)V

    invoke-virtual {v0, p6}, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->createDownUrl([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mConnectionManager:Lcom/autonavi/ae/gmap/maploader/ConnectionManager;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/ae/gmap/maploader/OpenLayerMapLoader;->setGetRequestMethod(Z)V

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mConnectionManager:Lcom/autonavi/ae/gmap/maploader/ConnectionManager;

    invoke-virtual {v1, v0}, Lcom/autonavi/ae/gmap/maploader/ConnectionManager;->insertConntionTask(Lcom/autonavi/ae/gmap/maploader/BaseMapLoader;)V

    :cond_0
    return-void
.end method

.method public onRoadTips(I[B)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mBoardDataListener:Lcom/autonavi/ae/gmap/listener/RouteBoardDataListener;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mBoardDataListener:Lcom/autonavi/ae/gmap/listener/RouteBoardDataListener;

    invoke-interface {v0, p1, p2}, Lcom/autonavi/ae/gmap/listener/RouteBoardDataListener;->setRouteBoardData(I[B)V

    :cond_0
    return-void
.end method

.method public onScenicActive(I[B)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    const/4 v0, 0x0

    const/4 v4, 0x1

    :try_start_0
    aget-byte v5, p2, v0

    new-instance v0, Lcom/autonavi/ae/gmap/scenic/ScenicInfor;

    invoke-direct {v0}, Lcom/autonavi/ae/gmap/scenic/ScenicInfor;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-direct {v1, p2, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, v0, Lcom/autonavi/ae/gmap/scenic/ScenicInfor;->mAoiId:Ljava/lang/String;

    add-int/lit8 v1, v5, 0x1

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p2, v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/autonavi/ae/gmap/scenic/ScenicInfor;->mHasWidget:Z

    add-int/lit8 v5, v4, 0x1

    aget-byte v1, p2, v4

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lcom/autonavi/ae/gmap/scenic/ScenicInfor;->mHasGuideMap:Z

    add-int/lit8 v4, v5, 0x1

    aget-byte v1, p2, v5

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, v0, Lcom/autonavi/ae/gmap/scenic/ScenicInfor;->mHasGuideVoice:Z

    add-int/lit8 v5, v4, 0x1

    aget-byte v1, p2, v4

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    iput-boolean v1, v0, Lcom/autonavi/ae/gmap/scenic/ScenicInfor;->mHasFootPrint:Z

    add-int/lit8 v4, v5, 0x1

    aget-byte v1, p2, v5

    if-eqz v1, :cond_5

    move v1, v2

    :goto_4
    iput-boolean v1, v0, Lcom/autonavi/ae/gmap/scenic/ScenicInfor;->mHasThermal:Z

    add-int/lit8 v5, v4, 0x1

    aget-byte v1, p2, v4

    if-eqz v1, :cond_6

    move v1, v2

    :goto_5
    iput-boolean v1, v0, Lcom/autonavi/ae/gmap/scenic/ScenicInfor;->mHasRoute:Z

    add-int/lit8 v1, v5, 0x1

    aget-byte v1, p2, v5

    iput v1, v0, Lcom/autonavi/ae/gmap/scenic/ScenicInfor;->mRouteNumber:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    new-instance v2, Lcom/autonavi/ae/gmap/GLMapEngine$14;

    invoke-direct {v2, p0, p1, v0}, Lcom/autonavi/ae/gmap/GLMapEngine$14;-><init>(Lcom/autonavi/ae/gmap/GLMapEngine;ILcom/autonavi/ae/gmap/scenic/ScenicInfor;)V

    invoke-interface {v1, v2}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->postOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    move v1, v3

    goto :goto_4

    :cond_6
    move v1, v3

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_7
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_7

    :cond_7
    move-object v0, v1

    goto :goto_6
.end method

.method public onTransferParam(I[I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget v0, p2, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    invoke-interface {v0, v1}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->resetRenderTime(Z)V

    goto :goto_0

    :pswitch_1
    aget v0, p2, v2

    if-nez v0, :cond_0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    if-eqz v0, :cond_0

    aget v0, p2, v2

    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    invoke-interface {v0, v1}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->resetRenderTime(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    invoke-interface {v0}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->resetRenderTimeLong()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    invoke-interface {v0}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->resetRenderTimeLongLong()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public p20ToMapPoint(IIILandroid/graphics/PointF;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateInstanceWithEngineID(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3, p4}, Lcom/autonavi/ae/gmap/GLMapState;->nativeP20ToMapPoint(JIILandroid/graphics/PointF;)V

    return-void
.end method

.method public p20ToScreenPoint(IIILandroid/graphics/PointF;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateInstanceWithEngineID(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3, p4}, Lcom/autonavi/ae/gmap/GLMapState;->nativeP20ToScreenPoint(JIILandroid/graphics/PointF;)V

    return-void
.end method

.method public popRendererState()V
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {v0, v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativePopRenderState(IJ)V

    :cond_0
    return-void
.end method

.method public pushRendererState()V
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {v0, v2, v3}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativePushRendererState(IJ)V

    :cond_0
    return-void
.end method

.method public putMapData(I[BIIII)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mut_lock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    array-length v1, p2

    if-ne v1, p4, :cond_2

    if-nez p3, :cond_2

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    move v1, p1

    move v4, p5

    move-object v5, p2

    move v6, p6

    invoke-static/range {v1 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativePutMapdata(IJI[BI)I

    move-result v1

    if-lez v1, :cond_1

    :goto_0
    move v7, v0

    :goto_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    invoke-interface {v0}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->resetRenderTimeLong()V

    :cond_0
    monitor-exit v8

    return v7

    :cond_1
    move v0, v7

    goto :goto_0

    :cond_2
    new-array v5, p4, [B

    const/4 v1, 0x0

    invoke-static {p2, p3, v5, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    move v1, p1

    move v4, p5

    move v6, p6

    invoke-static/range {v1 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativePutMapdata(IJI[BI)I

    move-result v1

    if-lez v1, :cond_3

    :goto_2
    move v7, v0

    goto :goto_1

    :cond_3
    move v0, v7

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putMapHeatData(I[BIIILjava/lang/String;)Z
    .locals 9

    const/4 v7, 0x0

    array-length v0, p2

    if-eqz v0, :cond_0

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v8, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mut_lock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    :try_start_1
    const-string v0, "utf-8"

    invoke-virtual {p6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v2, p4

    new-array v5, v2, [B

    const/4 v2, 0x0

    int-to-byte v3, v1

    aput-byte v3, v5, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v1, 0x1

    invoke-static {p2, p3, v5, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const/16 v4, 0xc

    move v1, p1

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativePutMapdata(IJI[BI)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-lez v0, :cond_3

    const/4 v1, 0x1

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    invoke-interface {v0}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->resetRenderTimeLong()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    move v0, v1

    :goto_2
    :try_start_3
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    move v1, v7

    :goto_3
    :try_start_4
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_4
    move v0, v7

    goto :goto_2
.end method

.method public putMapTMCData(II[BLjava/lang/String;Z)V
    .locals 9

    iget-object v8, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mut_lock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    move v1, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeUpdateTmcCache(IJI[BLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    invoke-interface {v0}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->resetRenderTimeLong()V

    :cond_0
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putScenicData(I[BILjava/lang/String;)V
    .locals 8

    iget-object v7, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mut_lock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "utf-8"

    invoke-virtual {p4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    int-to-byte v1, v1

    add-int v2, v1, p3

    add-int/lit8 v2, v2, 0x1

    new-array v5, v2, [B

    const/4 v2, 0x0

    aput-byte v1, v5, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p2, v0, v5, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const/16 v4, 0x65

    const/4 v6, 0x0

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativePutMapdata(IJI[BI)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v7

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public removeEngine(I)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeRemoveEngine(IJ)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateSparseArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method public removePoiFilter(ILjava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeRemovePoiFilter(IJLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resetRenderTime(I)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    invoke-interface {v0}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->resetRenderTimeLongLong()V

    :cond_0
    return-void
.end method

.method public screenToMapGPoint(IFFLandroid/graphics/PointF;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateInstanceWithEngineID(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3, p4}, Lcom/autonavi/ae/gmap/GLMapState;->nativeScreenToMapGPoint(JFFLandroid/graphics/PointF;)V

    return-void
.end method

.method public screenToP20Point(IFFLandroid/graphics/Point;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateInstanceWithEngineID(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3, p4}, Lcom/autonavi/ae/gmap/GLMapState;->nativeScreenToP20Point(JFFLandroid/graphics/Point;)V

    return-void
.end method

.method public setBackGroundColor(IFFFF)V
    .locals 8

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    move v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeSetBackGroundColor(IJFFFF)V

    return-void
.end method

.method public declared-synchronized setCameraDegree(IF)V
    .locals 7

    monitor-enter p0

    const/high16 v0, 0x42820000    # 65.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    const/16 v2, 0x76c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateInstanceWithEngineID(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lcom/autonavi/ae/gmap/GLMapState;->nativeSetCameraDegree(JF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEngineVisible(IZ)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, p2, v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeSetServiceViewVisible(IZJ)V

    return-void
.end method

.method public setIndoorBuildingToBeActive(ILjava/lang/String;ILjava/lang/String;)V
    .locals 7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    move v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeSetIndoorBuildingToBeActive(IJLjava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    invoke-interface {v0}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->resetRenderTimeLongLong()V

    goto :goto_0
.end method

.method public setInternaltexture(I[BI)V
    .locals 2

    if-eqz p2, :cond_0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeSetInternalTexture(IJ[BI)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setMapAngle(IF)V
    .locals 2

    const/high16 v1, 0x43b40000    # 360.0f

    monitor-enter p0

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    add-float/2addr p2, v1

    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateInstanceWithEngineID(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lcom/autonavi/ae/gmap/GLMapState;->nativeSetMapAngle(JF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    cmpl-float v0, p2, v1

    if-ltz v0, :cond_0

    sub-float/2addr p2, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMapCenter(III)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateInstanceWithEngineID(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapState;->nativeSetMapCenter(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMapCoreListener(Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    return-void
.end method

.method public setMapDataConrol(IIIII[B)V
    .locals 9

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    if-eqz v0, :cond_0

    iget-object v8, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    new-instance v0, Lcom/autonavi/ae/gmap/GLMapEngine$15;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/autonavi/ae/gmap/GLMapEngine$15;-><init>(Lcom/autonavi/ae/gmap/GLMapEngine;IIIII[B)V

    invoke-interface {v8, v0}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->postQueueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setMapHeatEnable(IZ)V
    .locals 7

    const/4 v4, 0x0

    const/16 v2, 0x7df

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    move-object v0, p0

    move v1, p1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    return-void

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public setMapHeatListener(Lcom/autonavi/ae/gmap/scenic/MapHeatListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mMapHeatListener:Lcom/autonavi/ae/gmap/scenic/MapHeatListener;

    return-void
.end method

.method public setMapHeatPoiRegion(ILjava/lang/String;[I[I)V
    .locals 7

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeSetMapHeatPoiRegion(IJLjava/lang/String;[I[I)V

    return-void
.end method

.method public setMapListener(Lcom/autonavi/amap/mapcore/interfaces/IAMapListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mAMapListener:Lcom/autonavi/amap/mapcore/interfaces/IAMapListener;

    return-void
.end method

.method public setMapState(ILcom/autonavi/ae/gmap/GLMapState;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/autonavi/ae/gmap/GLMapEngine;->setMapState(ILcom/autonavi/ae/gmap/GLMapState;Z)V

    return-void
.end method

.method public declared-synchronized setMapState(ILcom/autonavi/ae/gmap/GLMapState;Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0, p2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->checkMapState(Lcom/autonavi/ae/gmap/GLMapState;)V

    :cond_0
    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-virtual {p2, p1, v0, v1}, Lcom/autonavi/ae/gmap/GLMapState;->setNativeMapengineState(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMapZoom(IF)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMaxZoomLevel(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getMaxZoomLevel(I)I

    move-result v0

    int-to-float p2, v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/autonavi/ae/gmap/GLMapEngine;->getStateInstanceWithEngineID(I)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lcom/autonavi/ae/gmap/GLMapState;->nativeSetMapZoomer(JF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaskColor(II)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeSetMaskColor(IJI)V

    return-void
.end method

.method public setNaviRouteBoardDataListener(Lcom/autonavi/ae/gmap/listener/RouteBoardDataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mBoardDataListener:Lcom/autonavi/ae/gmap/listener/RouteBoardDataListener;

    return-void
.end method

.method public setOvelayBundle(ILcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle",
            "<",
            "Lcom/autonavi/ae/gmap/gloverlay/BaseMapOverlay",
            "<**>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mStateSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/utils/GLStateInstance;

    iput-object p2, v0, Lcom/autonavi/ae/gmap/utils/GLStateInstance;->mOverlayBundle:Lcom/autonavi/ae/gmap/gloverlay/GLOverlayBundle;

    goto :goto_0
.end method

.method public declared-synchronized setParamater(IIIIII)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    move v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v1 .. v8}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeSetParmater(IJIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setScenicGuideEnable(IZ)V
    .locals 7

    const/4 v4, 0x0

    const/16 v2, 0x403

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    move-object v0, p0

    move v1, p1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine;->setParamater(IIIIII)V

    return-void

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public setScenicListener(Lcom/autonavi/ae/gmap/scenic/ScenicListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mScenicListener:Lcom/autonavi/ae/gmap/scenic/ScenicListener;

    return-void
.end method

.method public setScenicWidgetFilter(ILcom/autonavi/ae/gmap/scenic/ScenicWidgetItem;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const/4 v1, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeSetScenicFilter(IJI[I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p2, Lcom/autonavi/ae/gmap/scenic/ScenicWidgetItem;->mFilters:[Lcom/autonavi/ae/gmap/scenic/ScenicWidgetItem$ScenicWidgetFilter;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [I

    :goto_1
    iget-object v2, p2, Lcom/autonavi/ae/gmap/scenic/ScenicWidgetItem;->mFilters:[Lcom/autonavi/ae/gmap/scenic/ScenicWidgetItem$ScenicWidgetFilter;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x3

    iget-object v3, p2, Lcom/autonavi/ae/gmap/scenic/ScenicWidgetItem;->mFilters:[Lcom/autonavi/ae/gmap/scenic/ScenicWidgetItem$ScenicWidgetFilter;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/autonavi/ae/gmap/scenic/ScenicWidgetItem$ScenicWidgetFilter;->mMainKey:I

    aput v3, v1, v2

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p2, Lcom/autonavi/ae/gmap/scenic/ScenicWidgetItem;->mFilters:[Lcom/autonavi/ae/gmap/scenic/ScenicWidgetItem$ScenicWidgetFilter;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/autonavi/ae/gmap/scenic/ScenicWidgetItem$ScenicWidgetFilter;->mSubKey:I

    aput v3, v1, v2

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p2, Lcom/autonavi/ae/gmap/scenic/ScenicWidgetItem;->mFilters:[Lcom/autonavi/ae/gmap/scenic/ScenicWidgetItem$ScenicWidgetFilter;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/autonavi/ae/gmap/scenic/ScenicWidgetItem$ScenicWidgetFilter;->mPoiFlag:I

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    iget v0, p2, Lcom/autonavi/ae/gmap/scenic/ScenicWidgetItem;->mItemIndex:I

    invoke-static {p1, v2, v3, v0, v1}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeSetScenicFilter(IJI[I)V

    goto :goto_0
.end method

.method public setSearchedSubwayIds(I[Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeSetSearchedSubwayIds(IJ[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setServiceViewRect(IIIIIII)V
    .locals 10

    iget-wide v2, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    move v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeSetServiceViewRect(IJIIIIII)V

    return-void
.end method

.method public setShowFeatureSpotIcon(Z)V
    .locals 0

    return-void
.end method

.method public setShowMask(IZ)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1, p2}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeSetShowMask(IJZ)V

    return-void
.end method

.method public setSrvViewStateBoolValue(IIZ)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeSetSrvViewStateBoolValue(IJIZ)V

    return-void
.end method

.method public setSrvViewStateFloatValue(IIF)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeSetSrvViewStateFloatValue(IJIF)V

    return-void
.end method

.method public setSrvViewStateIntValue(III)V
    .locals 2

    iget-wide v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mNativeMapengineInstance:J

    invoke-static {p1, v0, v1, p2, p3}, Lcom/autonavi/ae/gmap/GLMapEngine;->nativeSetSrvViewStateIntValue(IJII)V

    return-void
.end method

.method public startMapSlidAnim(ILandroid/graphics/Point;FF)V
    .locals 7

    iget-object v6, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    new-instance v0, Lcom/autonavi/ae/gmap/GLMapEngine$12;

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/ae/gmap/GLMapEngine$12;-><init>(Lcom/autonavi/ae/gmap/GLMapEngine;Landroid/graphics/Point;IFF)V

    invoke-interface {v6, v0}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->postQueueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startPivotZoomAnim(ILandroid/graphics/Point;FI)V
    .locals 7

    if-eqz p2, :cond_0

    iget v0, p2, Landroid/graphics/Point;->x:I

    if-gtz v0, :cond_0

    iget v0, p2, Landroid/graphics/Point;->y:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p2, Landroid/graphics/Point;->y:I

    :cond_0
    iget-object v0, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mGlMapView:Lcom/autonavi/amap/mapcore/interfaces/IAMap;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMapConfig()Lcom/autonavi/amap/mapcore/MapConfig;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v1

    cmpl-float v1, p3, v1

    if-gtz v1, :cond_1

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/MapConfig;->getMinZoomLevel()F

    move-result v0

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_1

    iget-object v6, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    new-instance v0, Lcom/autonavi/ae/gmap/GLMapEngine$11;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/ae/gmap/GLMapEngine$11;-><init>(Lcom/autonavi/ae/gmap/GLMapEngine;ILandroid/graphics/Point;IF)V

    invoke-interface {v6, v0}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->postQueueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public startPivotZoomRotateAnim(ILandroid/graphics/Point;FII)V
    .locals 8

    const/16 v1, -0x270f

    const v0, -0x39e3c400    # -9999.0f

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    if-ne p4, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eq p4, v1, :cond_1

    if-gez p4, :cond_1

    add-int/lit16 p4, p4, 0x168

    move v6, p4

    :goto_1
    iget-object v7, p0, Lcom/autonavi/ae/gmap/GLMapEngine;->mapcoreListener:Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;

    new-instance v0, Lcom/autonavi/ae/gmap/GLMapEngine$10;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p5

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/autonavi/ae/gmap/GLMapEngine$10;-><init>(Lcom/autonavi/ae/gmap/GLMapEngine;ILandroid/graphics/Point;IFI)V

    invoke-interface {v7, v0}, Lcom/autonavi/ae/gmap/callback/GLMapCoreCallback;->postQueueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    move v6, p4

    goto :goto_1
.end method

.method public writeCustomBackground([BI)[B
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    array-length v2, p1

    invoke-static {p1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    invoke-virtual {v4, v2, v0, p2}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4}, Lcom/autonavi/ae/gmap/GLMapEngine;->bitmap2bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, p1

    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_2
    return-object p1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2
.end method
