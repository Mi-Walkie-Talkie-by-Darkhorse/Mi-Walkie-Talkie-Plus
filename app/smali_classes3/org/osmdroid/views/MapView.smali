.class public Lorg/osmdroid/views/MapView;
.super Landroid/view/ViewGroup;

# interfaces
.implements Lorg/osmdroid/api/IMapView;
.implements Lorg/osmdroid/views/util/constants/MapViewConstants;
.implements Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/MapView$LayoutParams;,
        Lorg/osmdroid/views/MapView$MapViewZoomListener;,
        Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;,
        Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;,
        Lorg/osmdroid/views/MapView$OnFirstLayoutListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/ViewGroup;",
        "Lorg/osmdroid/api/IMapView;",
        "Lorg/osmdroid/views/util/constants/MapViewConstants;",
        "Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final ZOOM_LOG_BASE_INV:D

.field private static final ZOOM_SENSITIVITY:D = 1.0

.field private static sMotionEventTransformMethod:Ljava/lang/reflect/Method;


# instance fields
.field private enableFling:Z

.field private final mController:Lorg/osmdroid/views/MapController;

.field private mEnableZoomController:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mInvalidateRect:Landroid/graphics/Rect;

.field protected final mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mIsFlinging:Z

.field private mLayoutOccurred:Z

.field private final mLayoutPoint:Landroid/graphics/Point;

.field protected mListener:Lorg/osmdroid/events/MapListener;

.field private mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

.field protected mMaximumZoomLevel:Ljava/lang/Integer;

.field protected mMinimumZoomLevel:Ljava/lang/Integer;

.field private mMultiTouchController:Lorg/metalev/multitouch/controller/MultiTouchController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/metalev/multitouch/controller/MultiTouchController<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mMultiTouchScale:F

.field protected mMultiTouchScalePoint:Landroid/graphics/PointF;

.field private final mOnFirstLayoutListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/osmdroid/views/MapView$OnFirstLayoutListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

.field protected mProjection:Lorg/osmdroid/views/Projection;

.field final mRotateScaleMatrix:Landroid/graphics/Matrix;

.field final mRotateScalePoint:Landroid/graphics/Point;

.field protected mScrollableAreaBoundingBox:Lorg/osmdroid/util/BoundingBox;

.field protected mScrollableAreaLimit:Landroid/graphics/Rect;

.field private final mScroller:Landroid/widget/Scroller;

.field protected final mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

.field private mTileRequestCompleteHandler:Landroid/os/Handler;

.field private mTilesScaledToDpi:Z

.field private final mZoomController:Landroid/widget/ZoomButtonsController;

.field private mZoomLevel:I

.field private mapOrientation:F

.field private pauseFling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    sput-wide v2, Lorg/osmdroid/views/MapView;->ZOOM_LOG_BASE_INV:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isMapViewHardwareAccelerated()Z

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;Landroid/util/AttributeSet;Z)V
    .locals 4

    invoke-direct {p0, p1, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Lorg/osmdroid/views/MapView;->mEnableZoomController:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    const/4 v1, 0x0

    iput v1, p0, Lorg/osmdroid/views/MapView;->mapOrientation:F

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lorg/osmdroid/views/MapView;->mTilesScaledToDpi:Z

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mRotateScaleMatrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mRotateScalePoint:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mLayoutPoint:Landroid/graphics/Point;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mOnFirstLayoutListeners:Ljava/util/LinkedList;

    iput-boolean v0, p0, Lorg/osmdroid/views/MapView;->mLayoutOccurred:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/osmdroid/views/MapView;->enableFling:Z

    iput-boolean v0, p0, Lorg/osmdroid/views/MapView;->pauseFling:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iput-object v3, p0, Lorg/osmdroid/views/MapView;->mTileRequestCompleteHandler:Landroid/os/Handler;

    iput-object v3, p0, Lorg/osmdroid/views/MapView;->mController:Lorg/osmdroid/views/MapController;

    iput-object v3, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    iput-object v3, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    iput-object v3, p0, Lorg/osmdroid/views/MapView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void

    :cond_0
    if-nez p5, :cond_1

    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt p5, v2, :cond_1

    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    new-instance p5, Lorg/osmdroid/views/MapController;

    invoke-direct {p5, p0}, Lorg/osmdroid/views/MapController;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object p5, p0, Lorg/osmdroid/views/MapView;->mController:Lorg/osmdroid/views/MapController;

    new-instance p5, Landroid/widget/Scroller;

    invoke-direct {p5, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    if-nez p2, :cond_3

    invoke-direct {p0, p4}, Lorg/osmdroid/views/MapView;->getTileSourceFromAttributes(Landroid/util/AttributeSet;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p4

    if-eqz p4, :cond_2

    new-instance p4, Lorg/osmdroid/tileprovider/MapTileProviderArray;

    new-array p5, v0, [Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-direct {p4, p2, v3, p5}, Lorg/osmdroid/tileprovider/MapTileProviderArray;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/IRegisterReceiver;[Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    goto :goto_0

    :cond_2
    new-instance p4, Lorg/osmdroid/tileprovider/MapTileProviderBasic;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    invoke-direct {p4, p5, p2}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    :goto_0
    move-object p2, p4

    :cond_3
    if-nez p3, :cond_4

    new-instance p3, Lorg/osmdroid/tileprovider/util/SimpleInvalidationHandler;

    invoke-direct {p3, p0}, Lorg/osmdroid/tileprovider/util/SimpleInvalidationHandler;-><init>(Landroid/view/View;)V

    :cond_4
    iput-object p3, p0, Lorg/osmdroid/views/MapView;->mTileRequestCompleteHandler:Landroid/os/Handler;

    iput-object p2, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {p2, p3}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setTileRequestCompleteHandler(Landroid/os/Handler;)V

    iget-object p2, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/osmdroid/views/MapView;->updateTileSizeForDensity(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    new-instance p2, Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object p3, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-direct {p2, p3, p1}, Lorg/osmdroid/views/overlay/TilesOverlay;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    new-instance p2, Lorg/osmdroid/views/overlay/DefaultOverlayManager;

    iget-object p3, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-direct {p2, p3}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;-><init>(Lorg/osmdroid/views/overlay/TilesOverlay;)V

    iput-object p2, p0, Lorg/osmdroid/views/MapView;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_5

    iput-object v3, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    goto :goto_1

    :cond_5
    new-instance p2, Landroid/widget/ZoomButtonsController;

    invoke-direct {p2, p0}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    new-instance p3, Lorg/osmdroid/views/MapView$MapViewZoomListener;

    invoke-direct {p3, p0, v3}, Lorg/osmdroid/views/MapView$MapViewZoomListener;-><init>(Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/MapView$1;)V

    invoke-virtual {p2, p3}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    :goto_1
    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;

    invoke-direct {p3, p0, v3}, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;-><init>(Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/MapView$1;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lorg/osmdroid/views/MapView;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance p1, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;

    invoke-direct {p1, p0, v3}, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;-><init>(Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/MapView$1;)V

    invoke-virtual {p2, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method static synthetic access$300(Lorg/osmdroid/views/MapView;)Landroid/widget/Scroller;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$400(Lorg/osmdroid/views/MapView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/osmdroid/views/MapView;->mEnableZoomController:Z

    return p0
.end method

.method static synthetic access$500(Lorg/osmdroid/views/MapView;)Landroid/widget/ZoomButtonsController;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    return-object p0
.end method

.method static synthetic access$600(Lorg/osmdroid/views/MapView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/osmdroid/views/MapView;->enableFling:Z

    return p0
.end method

.method static synthetic access$700(Lorg/osmdroid/views/MapView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/osmdroid/views/MapView;->pauseFling:Z

    return p0
.end method

.method static synthetic access$702(Lorg/osmdroid/views/MapView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/views/MapView;->pauseFling:Z

    return p1
.end method

.method static synthetic access$800(Lorg/osmdroid/views/MapView;)Lorg/metalev/multitouch/controller/MultiTouchController;
    .locals 0

    iget-object p0, p0, Lorg/osmdroid/views/MapView;->mMultiTouchController:Lorg/metalev/multitouch/controller/MultiTouchController;

    return-object p0
.end method

.method private checkZoomButtons()V
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->canZoomIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->canZoomOut()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    return-void
.end method

.method private getTileSourceFromAttributes(Landroid/util/AttributeSet;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 6

    sget-object v0, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->DEFAULT_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    const/4 v1, 0x0

    const-string v2, "OsmDroid"

    if-eqz p1, :cond_0

    const-string v3, "tilesource"

    invoke-interface {p1, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {v3}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->getTileSource(Ljava/lang/String;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using tile source specified in layout attributes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid tile source specified in layout attributes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    instance-of v3, v0, Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource;

    if-eqz v3, :cond_2

    const-string v3, "style"

    invoke-interface {p1, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Using default style: 1"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using style specified in layout attributes: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    check-cast v1, Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource;

    invoke-interface {v1, p1}, Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource;->setStyle(Ljava/lang/String;)V

    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using tile source: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private invalidateMapCoordinates(IIIIZ)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result p3

    const/4 p4, 0x0

    cmpl-float p3, p3, p4

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result p4

    const/high16 v0, 0x43340000    # 180.0f

    add-float/2addr p4, v0

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-static {p3, p1, p2, p4, v0}, Lorg/osmdroid/util/GeometryMath;->getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;

    :cond_0
    if-eqz p5, :cond_1

    iget-object p1, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p3, p1, Landroid/graphics/Rect;->top:I

    iget p4, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, p2, p3, p4, p1}, Landroid/view/ViewGroup;->postInvalidate(IIII)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private rotateTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 6

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v3, p0, Lorg/osmdroid/views/MapView;->mRotateScalePoint:Landroid/graphics/Point;

    invoke-virtual {v1, v2, p1, v3}, Lorg/osmdroid/views/Projection;->unrotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    iget-object p1, p0, Lorg/osmdroid/views/MapView;->mRotateScalePoint:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object p1, Lorg/osmdroid/views/MapView;->sMotionEventTransformMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    const-class p1, Landroid/view/MotionEvent;

    const-string v3, "transform"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Matrix;

    aput-object v5, v4, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sput-object p1, Lorg/osmdroid/views/MapView;->sMotionEventTransformMethod:Ljava/lang/reflect/Method;

    :cond_2
    sget-object p1, Lorg/osmdroid/views/MapView;->sMotionEventTransformMethod:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/osmdroid/views/Projection;->getInvertedScaleRotateCanvasMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private updateTileSizeForDensity(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 2

    invoke-interface {p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getTileSizePixels()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43800000    # 256.0f

    mul-float v0, v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->isTilesScaledToDpi()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapView()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scaling tiles to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OsmDroid"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {p1}, Lmicrosoft/mappoint/TileSystem;->setTileSize(I)V

    return-void
.end method


# virtual methods
.method public addOnFirstLayoutListener(Lorg/osmdroid/views/MapView$OnFirstLayoutListener;)V
    .locals 1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->isLayoutOccurred()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mOnFirstLayoutListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public canZoomIn()Z
    .locals 2

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v0

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    :goto_0
    if-lt v1, v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public canZoomOut()Z
    .locals 2

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMinZoomLevel()I

    move-result v0

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    :goto_0
    if-gt v1, v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lorg/osmdroid/views/MapView$LayoutParams;

    return p1
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/MapView;->scrollTo(II)V

    iget v0, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapView;->setZoomLevel(I)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/MapView;->mIsFlinging:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/MapView;->scrollTo(II)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidate()V

    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v0, "OsmDroid"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, p0, Lorg/osmdroid/views/MapView;->mRotateScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lorg/osmdroid/views/MapView;->mRotateScaleMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    iget-object v5, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v4, v6, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    iget-object v3, p0, Lorg/osmdroid/views/MapView;->mRotateScaleMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lorg/osmdroid/views/MapView;->mapOrientation:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    iget-object v3, p0, Lorg/osmdroid/views/MapView;->mRotateScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/osmdroid/views/MapView;->setProjection(Lorg/osmdroid/views/Projection;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v3

    invoke-interface {v3, p1, p0}, Lorg/osmdroid/views/overlay/OverlayManager;->onDraw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v3, "error dispatchDraw, probably in edit mode"

    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object p1

    invoke-interface {p1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapView()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rendering overall: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapView()Z

    move-result v0

    const-string v1, "OsmDroid"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchEvent("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0, p0, p1}, Landroid/widget/ZoomButtonsController;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-direct {p0, p1}, Lorg/osmdroid/views/MapView;->rotateTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapView()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "super handled onTouchEvent"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eq v0, p1, :cond_3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_3
    return v2

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v3

    invoke-interface {v3, v0, p0}, Lorg/osmdroid/views/overlay/OverlayManager;->onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_6

    if-eq v0, p1, :cond_5

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_5
    return v2

    :cond_6
    :try_start_2
    iget-object v3, p0, Lorg/osmdroid/views/MapView;->mMultiTouchController:Lorg/metalev/multitouch/controller/MultiTouchController;

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/osmdroid/views/MapView;->mMultiTouchController:Lorg/metalev/multitouch/controller/MultiTouchController;

    invoke-virtual {v3, p1}, Lorg/metalev/multitouch/controller/MultiTouchController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapView()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "mMultiTouchController handled onTouchEvent"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v3, 0x1

    goto :goto_0

    :cond_8
    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lorg/osmdroid/views/MapView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapView()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "mGestureDetector handled onTouchEvent"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    const/4 v3, 0x1

    :cond_a
    if-eqz v3, :cond_c

    if-eq v0, p1, :cond_b

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_b
    return v2

    :cond_c
    if-eq v0, p1, :cond_d

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_d
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object p1

    invoke-interface {p1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapView()Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "no-one handled onTouchEvent"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return v4

    :catchall_0
    move-exception v1

    if-eq v0, p1, :cond_f

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_f
    throw v1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 8

    new-instance v7, Lorg/osmdroid/views/MapView$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/MapView$LayoutParams;-><init>(IILorg/osmdroid/api/IGeoPoint;III)V

    return-object v7
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lorg/osmdroid/views/MapView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/osmdroid/views/MapView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lorg/osmdroid/views/MapView$LayoutParams;

    invoke-direct {v0, p1}, Lorg/osmdroid/views/MapView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public getBoundingBoxE6()Lorg/osmdroid/util/BoundingBoxE6;
    .locals 1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getBoundingBoxE6()Lorg/osmdroid/util/BoundingBoxE6;

    move-result-object v0

    return-object v0
.end method

.method public getController()Lorg/osmdroid/api/IMapController;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mController:Lorg/osmdroid/views/MapController;

    return-object v0
.end method

.method public getDraggableObjectAtPoint(Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getX()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getY()F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-object p0
.end method

.method public getIntrinsicScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1
.end method

.method public getLatitudeSpan()I
    .locals 1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getBoundingBoxE6()Lorg/osmdroid/util/BoundingBoxE6;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBoxE6;->getLatitudeSpanE6()I

    move-result v0

    return v0
.end method

.method public getLatitudeSpanDouble()D
    .locals 2

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitudeSpan()I
    .locals 1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getBoundingBoxE6()Lorg/osmdroid/util/BoundingBoxE6;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v0

    return v0
.end method

.method public getLongitudeSpanDouble()D
    .locals 2

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMapCenter()Lorg/osmdroid/api/IGeoPoint;
    .locals 4

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getMapOrientation()F
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/MapView;->mapOrientation:F

    return v0
.end method

.method public getMaxZoomLevel()I
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMaximumZoomLevel:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getMaximumZoomLevel()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMinZoomLevel()I
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMinimumZoomLevel:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getMinimumZoomLevel()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    return-object v0
.end method

.method public getOverlays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/Overlay;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/OverlayManager;->overlays()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPositionAndScale(Ljava/lang/Object;Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)V
    .locals 10

    iget v4, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v9}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->set(FFZFZFFZF)V

    return-void
.end method

.method public bridge synthetic getProjection()Lorg/osmdroid/api/IProjection;
    .locals 1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    return-object v0
.end method

.method public getProjection()Lorg/osmdroid/views/Projection;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/Projection;

    if-nez v0, :cond_0

    new-instance v0, Lorg/osmdroid/views/Projection;

    invoke-direct {v0, p0}, Lorg/osmdroid/views/Projection;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/Projection;

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/Projection;

    return-object v0
.end method

.method public getScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/MapView;->getIntrinsicScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v2

    invoke-static {p1, v0, v1, v2, p1}, Lorg/osmdroid/util/GeometryMath;->getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;

    :cond_0
    return-object p1
.end method

.method public getScrollableAreaLimit()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaBoundingBox:Lorg/osmdroid/util/BoundingBox;

    return-object v0
.end method

.method public getScroller()Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method public getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    return-object v0
.end method

.method public getTileRequestCompleteHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileRequestCompleteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getZoomLevel()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)I

    move-result v0

    return v0
.end method

.method public getZoomLevel(Z)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/osmdroid/views/MapView;->mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    return p1

    :cond_0
    iget p1, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    return p1
.end method

.method public invalidateMapCoordinates(IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/MapView;->invalidateMapCoordinates(IIIIZ)V

    return-void
.end method

.method public invalidateMapCoordinates(Landroid/graphics/Rect;)V
    .locals 6

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/MapView;->invalidateMapCoordinates(IIIIZ)V

    return-void
.end method

.method public isAnimating()Z
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isFlingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/views/MapView;->enableFling:Z

    return v0
.end method

.method public isLayoutOccurred()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/views/MapView;->mLayoutOccurred:Z

    return v0
.end method

.method public isTilesScaledToDpi()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/views/MapView;->mTilesScaledToDpi:Z

    return v0
.end method

.method public onDetach()V
    .locals 2

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/osmdroid/views/overlay/OverlayManager;->onDetach(Lorg/osmdroid/views/MapView;)V

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->detach()V

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->clearTileCache()V

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileRequestCompleteHandler:Landroid/os/Handler;

    instance-of v1, v0, Lorg/osmdroid/tileprovider/util/SimpleInvalidationHandler;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/osmdroid/tileprovider/util/SimpleInvalidationHandler;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/util/SimpleInvalidationHandler;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/MapView;->mTileRequestCompleteHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/Projection;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/osmdroid/views/Projection;->detach()V

    :cond_1
    iput-object v0, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/Projection;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->onDetach()V

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p0}, Lorg/osmdroid/views/overlay/OverlayManager;->onKeyDown(ILandroid/view/KeyEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p0}, Lorg/osmdroid/views/overlay/OverlayManager;->onKeyUp(ILandroid/view/KeyEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-ge v0, p1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/views/MapView$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v6

    iget-object v7, v3, Lorg/osmdroid/views/MapView$LayoutParams;->geoPoint:Lorg/osmdroid/api/IGeoPoint;

    iget-object v8, p0, Lorg/osmdroid/views/MapView;->mLayoutPoint:Landroid/graphics/Point;

    invoke-virtual {v6, v7, v8}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v6

    iget-object v7, p0, Lorg/osmdroid/views/MapView;->mLayoutPoint:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v8, v7, v1}, Lorg/osmdroid/views/Projection;->rotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    iget-object v6, p0, Lorg/osmdroid/views/MapView;->mLayoutPoint:Landroid/graphics/Point;

    iget v7, v1, Landroid/graphics/Point;->x:I

    iput v7, v6, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v6, Landroid/graphics/Point;->y:I

    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    iget-object v6, p0, Lorg/osmdroid/views/MapView;->mLayoutPoint:Landroid/graphics/Point;

    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v7, v8, v6}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mLayoutPoint:Landroid/graphics/Point;

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v7, v3, Lorg/osmdroid/views/MapView$LayoutParams;->alignment:I

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, v6

    sub-int v6, v7, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, v6

    div-int/lit8 v6, v5, 0x2

    sub-int v6, v7, v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    :goto_1
    add-int/2addr v7, v1

    sub-int v1, v7, v4

    goto :goto_4

    :pswitch_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, v6

    sub-int v6, v7, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v1

    div-int/lit8 v1, v4, 0x2

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, v6

    div-int/lit8 v6, v5, 0x2

    sub-int v6, v7, v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v1

    div-int/lit8 v1, v4, 0x2

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v1

    div-int/lit8 v1, v4, 0x2

    :goto_2
    sub-int v1, v7, v1

    goto :goto_4

    :pswitch_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, v6

    sub-int v6, v7, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    goto :goto_3

    :pswitch_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, v6

    div-int/lit8 v6, v5, 0x2

    sub-int v6, v7, v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    goto :goto_3

    :pswitch_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    :goto_3
    add-int/2addr v1, v7

    :goto_4
    iget v7, v3, Lorg/osmdroid/views/MapView$LayoutParams;->offsetX:I

    add-int/2addr v6, v7

    iget v3, v3, Lorg/osmdroid/views/MapView$LayoutParams;->offsetY:I

    add-int/2addr v1, v3

    add-int/2addr v5, v6

    add-int/2addr v4, v1

    invoke-virtual {v2, v6, v1, v5, v4}, Landroid/view/View;->layout(IIII)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->isLayoutOccurred()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/osmdroid/views/MapView;->mLayoutOccurred:Z

    iget-object p1, p0, Lorg/osmdroid/views/MapView;->mOnFirstLayoutListeners:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/osmdroid/views/MapView$OnFirstLayoutListener;

    move-object v3, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lorg/osmdroid/views/MapView$OnFirstLayoutListener;->onFirstLayout(Landroid/view/View;IIII)V

    goto :goto_5

    :cond_3
    iget-object p1, p0, Lorg/osmdroid/views/MapView;->mOnFirstLayoutListeners:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    :cond_4
    invoke-virtual {p0, v1}, Lorg/osmdroid/views/MapView;->setProjection(Lorg/osmdroid/views/Projection;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lorg/osmdroid/views/overlay/OverlayManager;->onTrackballEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->scrollBy(II)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public postInvalidateMapCoordinates(IIII)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/MapView;->invalidateMapCoordinates(IIIIZ)V

    return-void
.end method

.method public removeOnFirstLayoutListener(Lorg/osmdroid/views/MapView$OnFirstLayoutListener;)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mOnFirstLayoutListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public scrollTo(II)V
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)I

    move-result v1

    invoke-static {v1}, Lmicrosoft/mappoint/TileSystem;->MapSize(I)I

    move-result v1

    :goto_0
    if-gez p1, :cond_0

    add-int/2addr p1, v1

    goto :goto_0

    :cond_0
    :goto_1
    if-lt p1, v1, :cond_1

    sub-int/2addr p1, v1

    goto :goto_1

    :cond_1
    :goto_2
    if-gez p2, :cond_2

    add-int/2addr p2, v1

    goto :goto_2

    :cond_2
    :goto_3
    if-lt p2, v1, :cond_3

    sub-int/2addr p2, v1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    if-eqz v1, :cond_b

    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v1

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    shr-int/2addr v2, v1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    shr-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->right:I

    shr-int/2addr v4, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    shr-int/2addr v0, v1

    sub-int v1, v4, v2

    sub-int v5, v0, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    if-gt v1, v6, :cond_5

    if-le p1, v2, :cond_4

    goto :goto_4

    :cond_4
    add-int v1, p1, v6

    if-ge v1, v4, :cond_7

    goto :goto_5

    :cond_5
    if-ge p1, v2, :cond_6

    :goto_4
    move p1, v2

    goto :goto_6

    :cond_6
    add-int v1, p1, v6

    if-le v1, v4, :cond_7

    :goto_5
    sub-int p1, v4, v6

    :cond_7
    :goto_6
    if-gt v5, v7, :cond_9

    if-le p2, v3, :cond_8

    move p2, v3

    goto :goto_8

    :cond_8
    add-int v1, p2, v7

    if-ge v1, v0, :cond_b

    goto :goto_7

    :cond_9
    add-int/lit8 v1, p2, 0x0

    if-ge v1, v3, :cond_a

    add-int/lit8 p2, v3, 0x0

    goto :goto_8

    :cond_a
    add-int v1, p2, v7

    if-le v1, v0, :cond_b

    :goto_7
    sub-int p2, v0, v7

    :cond_b
    :goto_8
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapView;->setProjection(Lorg/osmdroid/views/Projection;)V

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/views/MapView;->onLayout(ZIIII)V

    :cond_c
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    if-eqz v0, :cond_d

    new-instance v0, Lorg/osmdroid/events/ScrollEvent;

    invoke-direct {v0, p0, p1, p2}, Lorg/osmdroid/events/ScrollEvent;-><init>(Lorg/osmdroid/views/MapView;II)V

    iget-object p1, p0, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    invoke-interface {p1, v0}, Lorg/osmdroid/events/MapListener;->onScroll(Lorg/osmdroid/events/ScrollEvent;)Z

    :cond_d
    return-void
.end method

.method public selectObject(Ljava/lang/Object;Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)V
    .locals 4

    const/high16 p2, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    iget p1, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    cmpl-float v0, p1, p2

    if-eqz v0, :cond_1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lorg/osmdroid/views/MapView;->ZOOM_LOG_BASE_INV:D

    mul-double v0, v0, v2

    double-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v3, p0, Lorg/osmdroid/views/MapView;->mRotateScalePoint:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v0, v3}, Lorg/osmdroid/views/Projection;->unrotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mRotateScalePoint:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lorg/osmdroid/views/MapView;->scrollTo(II)V

    :cond_0
    iget v0, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapView;->setZoomLevel(I)I

    :cond_1
    iput p2, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/TilesOverlay;->setLoadingBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/views/MapView;->mEnableZoomController:Z

    invoke-direct {p0}, Lorg/osmdroid/views/MapView;->checkZoomButtons()V

    return-void
.end method

.method public setFlingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/views/MapView;->enableFling:Z

    return-void
.end method

.method setMapCenter(DD)V
    .locals 1

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapView;->setMapCenter(Lorg/osmdroid/api/IGeoPoint;)V

    return-void
.end method

.method setMapCenter(II)V
    .locals 1

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapView;->setMapCenter(Lorg/osmdroid/api/IGeoPoint;)V

    return-void
.end method

.method setMapCenter(Lorg/osmdroid/api/IGeoPoint;)V
    .locals 1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    return-void
.end method

.method public setMapListener(Lorg/osmdroid/events/MapListener;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    return-void
.end method

.method public setMapOrientation(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    iput p1, p0, Lorg/osmdroid/views/MapView;->mapOrientation:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setMaxZoomLevel(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/MapView;->mMaximumZoomLevel:Ljava/lang/Integer;

    return-void
.end method

.method public setMinZoomLevel(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/MapView;->mMinimumZoomLevel:Ljava/lang/Integer;

    return-void
.end method

.method public setMultiTouchControls(Z)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/metalev/multitouch/controller/MultiTouchController;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/metalev/multitouch/controller/MultiTouchController;-><init>(Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/osmdroid/views/MapView;->mMultiTouchController:Lorg/metalev/multitouch/controller/MultiTouchController;

    return-void
.end method

.method public setOverlayManager(Lorg/osmdroid/views/overlay/OverlayManager;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/MapView;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    return-void
.end method

.method public setPositionAndScale(Ljava/lang/Object;Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)Z
    .locals 0

    invoke-virtual {p2}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->getScale()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p3, p1, p2

    if-lez p3, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->canZoomIn()Z

    move-result p3

    if-nez p3, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    cmpg-float p3, p1, p2

    if-gez p3, :cond_1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->canZoomOut()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    move p2, p1

    :goto_0
    iput p2, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method protected setProjection(Lorg/osmdroid/views/Projection;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/Projection;

    return-void
.end method

.method public setScrollableAreaLimit(Lorg/osmdroid/util/BoundingBoxE6;)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v9, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLatNorthE6()I

    move-result v0

    int-to-double v0, v0

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double v1, v0, v10

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLonEastE6()I

    move-result v0

    int-to-double v3, v0

    div-double/2addr v3, v10

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLatSouthE6()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v5, v10

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLonWestE6()I

    move-result v0

    int-to-double v7, v0

    div-double/2addr v7, v10

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object v9, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaBoundingBox:Lorg/osmdroid/util/BoundingBox;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLatNorthE6()I

    move-result v0

    int-to-double v0, v0

    div-double v2, v0, v10

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLonWestE6()I

    move-result v0

    int-to-double v0, v0

    div-double v4, v0, v10

    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lmicrosoft/mappoint/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLatSouthE6()I

    move-result v1

    int-to-double v1, v1

    div-double v3, v1, v10

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLonEastE6()I

    move-result p1

    int-to-double v1, p1

    div-double v5, v1, v10

    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lmicrosoft/mappoint/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v0, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    return-void
.end method

.method public setScrollableAreaLimitDouble(Lorg/osmdroid/util/BoundingBox;)V
    .locals 7

    iput-object p1, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaBoundingBox:Lorg/osmdroid/util/BoundingBox;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v2

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lmicrosoft/mappoint/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v3

    const/16 v5, 0x17

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lmicrosoft/mappoint/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v0, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    return-void
.end method

.method public setTileProvider(Lorg/osmdroid/tileprovider/MapTileProviderBase;)V
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->detach()V

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->clearTileCache()V

    iput-object p1, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileRequestCompleteHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setTileRequestCompleteHandler(Landroid/os/Handler;)V

    iget-object p1, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/osmdroid/views/MapView;->updateTileSizeForDensity(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    new-instance p1, Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/osmdroid/views/overlay/TilesOverlay;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/OverlayManager;->setTilesOverlay(Lorg/osmdroid/views/overlay/TilesOverlay;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    invoke-direct {p0, p1}, Lorg/osmdroid/views/MapView;->updateTileSizeForDensity(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    invoke-direct {p0}, Lorg/osmdroid/views/MapView;->checkZoomButtons()V

    iget p1, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/MapView;->setZoomLevel(I)I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidate()V

    return-void
.end method

.method public setTilesScaledToDpi(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/views/MapView;->mTilesScaledToDpi:Z

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-result-object p1

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/osmdroid/views/MapView;->updateTileSizeForDensity(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    return-void
.end method

.method public setUseDataConnection(Z)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/TilesOverlay;->setUseDataConnection(Z)V

    return-void
.end method

.method setZoomLevel(I)I
    .locals 8

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMinZoomLevel()I

    move-result v0

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/osmdroid/views/MapView;->mIsFlinging:Z

    :cond_1
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    iput p1, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/osmdroid/views/MapView;->setProjection(Lorg/osmdroid/views/Projection;)V

    invoke-direct {p0}, Lorg/osmdroid/views/MapView;->checkZoomButtons()V

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->isLayoutOccurred()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v4

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v5

    iget-object v6, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v6, v6, Landroid/graphics/PointF;->y:F

    float-to-int v6, v6

    invoke-interface {v5, v7, v6, v2, p0}, Lorg/osmdroid/views/overlay/OverlayManager;->onSnapToItem(IILandroid/graphics/Point;Lorg/osmdroid/api/IMapView;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    :cond_2
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {p0, v3}, Lorg/osmdroid/views/MapView;->getScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v4, p1, v0, v3}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->rescaleCache(Lorg/osmdroid/views/Projection;IILandroid/graphics/Rect;)V

    iput-boolean v1, p0, Lorg/osmdroid/views/MapView;->pauseFling:Z

    :cond_3
    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    if-eqz v0, :cond_4

    new-instance v0, Lorg/osmdroid/events/ZoomEvent;

    invoke-direct {v0, p0, p1}, Lorg/osmdroid/events/ZoomEvent;-><init>(Lorg/osmdroid/views/MapView;I)V

    iget-object p1, p0, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    invoke-interface {p1, v0}, Lorg/osmdroid/events/MapListener;->onZoom(Lorg/osmdroid/events/ZoomEvent;)Z

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    iget p1, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    return p1
.end method

.method public useDataConnection()Z
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->useDataConnection()Z

    move-result v0

    return v0
.end method

.method zoomIn()Z
    .locals 1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IMapController;->zoomIn()Z

    move-result v0

    return v0
.end method

.method zoomInFixing(II)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/api/IMapController;->zoomInFixing(II)Z

    move-result p1

    return p1
.end method

.method zoomInFixing(Lorg/osmdroid/api/IGeoPoint;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v1, p1}, Lorg/osmdroid/api/IMapController;->zoomInFixing(II)Z

    move-result p1

    return p1
.end method

.method zoomOut()Z
    .locals 1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IMapController;->zoomOut()Z

    move-result v0

    return v0
.end method

.method zoomOutFixing(II)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/api/IMapController;->zoomOutFixing(II)Z

    move-result p1

    return p1
.end method

.method zoomOutFixing(Lorg/osmdroid/api/IGeoPoint;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1}, Lorg/osmdroid/views/MapView;->zoomOutFixing(II)Z

    move-result p1

    return p1
.end method

.method public zoomToBoundingBox(Lorg/osmdroid/util/BoundingBox;Z)V
    .locals 13

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v2

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v5

    iget v6, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v1, v5

    :goto_0
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v7

    div-double/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    sub-double/2addr v5, v7

    iget v7, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v8

    if-ne v7, v8, :cond_1

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v7

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v7

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v9

    iget v10, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:I

    sub-int/2addr v9, v10

    int-to-double v9, v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    div-double/2addr v7, v9

    :goto_1
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v9

    int-to-double v9, v9

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v11

    div-double/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    sub-double/2addr v9, v3

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current bounds "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OsmDroid"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZoomToBoundingBox calculations: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object p2

    cmpg-double v0, v5, v9

    if-gez v0, :cond_3

    goto :goto_2

    :cond_3
    move-wide v5, v9

    :goto_2
    double-to-int v0, v5

    invoke-interface {p2, v0}, Lorg/osmdroid/api/IMapController;->zoomTo(I)Z

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object p2

    cmpg-double v0, v5, v9

    if-gez v0, :cond_5

    goto :goto_3

    :cond_5
    move-wide v5, v9

    :goto_3
    double-to-int v0, v5

    invoke-interface {p2, v0}, Lorg/osmdroid/api/IMapController;->setZoom(I)I

    :goto_4
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object p2

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {p2, v0}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    return-void
.end method

.method public zoomToBoundingBox(Lorg/osmdroid/util/BoundingBoxE6;)V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v9, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLatNorthE6()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double v4, v0, v2

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLonEastE6()I

    move-result v0

    int-to-double v0, v0

    div-double v6, v0, v2

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLatSouthE6()I

    move-result v0

    div-int/lit16 v0, v0, 0xba

    int-to-double v10, v0

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLonWestE6()I

    move-result p1

    int-to-double v0, p1

    div-double v12, v0, v2

    move-object v0, v9

    move-wide v1, v4

    move-wide v3, v6

    move-wide v5, v10

    move-wide v7, v12

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    const/4 p1, 0x0

    invoke-virtual {p0, v9, p1}, Lorg/osmdroid/views/MapView;->zoomToBoundingBox(Lorg/osmdroid/util/BoundingBox;Z)V

    return-void
.end method
