.class public Lorg/osmdroid/views/overlay/Marker;
.super Lorg/osmdroid/views/overlay/OverlayWithIW;
.source "Marker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;,
        Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;
    }
.end annotation


# static fields
.field public static final ANCHOR_BOTTOM:F = 1.0f

.field public static final ANCHOR_CENTER:F = 0.5f

.field public static final ANCHOR_LEFT:F = 0.0f

.field public static final ANCHOR_RIGHT:F = 1.0f

.field public static final ANCHOR_TOP:F

.field public static ENABLE_TEXT_LABELS_WHEN_NO_IMAGE:Z

.field protected static mDefaultIcon:Landroid/graphics/drawable/Drawable;

.field protected static mDefaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;


# instance fields
.field protected mAlpha:F

.field protected mAnchorU:F

.field protected mAnchorV:F

.field protected mBearing:F

.field protected mDraggable:Z

.field protected mFlat:Z

.field protected mIWAnchorU:F

.field protected mIWAnchorV:F

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field protected mImage:Landroid/graphics/drawable/Drawable;

.field protected mIsDragged:Z

.field protected mOnMarkerClickListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

.field protected mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

.field protected mPanToView:Z

.field protected mPosition:Lorg/osmdroid/util/GeoPoint;

.field protected mPositionPixels:Landroid/graphics/Point;

.field protected mTextLabelBackgroundColor:I

.field protected mTextLabelFontSize:I

.field protected mTextLabelForegroundColor:I

.field protected resource:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lorg/osmdroid/views/overlay/Marker;->ENABLE_TEXT_LABELS_WHEN_NO_IMAGE:Z

    sput-object v1, Lorg/osmdroid/views/overlay/Marker;->mDefaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    sput-object v1, Lorg/osmdroid/views/overlay/Marker;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 1

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayWithIW;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelBackgroundColor:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelForegroundColor:I

    const/16 v0, 0x18

    iput v0, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelFontSize:I

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->resource:Landroid/content/res/Resources;

    iput v3, p0, Lorg/osmdroid/views/overlay/Marker;->mBearing:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/osmdroid/views/overlay/Marker;->mAlpha:F

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v4, v5, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    iput v1, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorU:F

    iput v1, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorV:F

    iput v1, p0, Lorg/osmdroid/views/overlay/Marker;->mIWAnchorU:F

    iput v3, p0, Lorg/osmdroid/views/overlay/Marker;->mIWAnchorV:F

    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/Marker;->mDraggable:Z

    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/Marker;->mIsDragged:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPositionPixels:Landroid/graphics/Point;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPanToView:Z

    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/Marker;->mFlat:Z

    iput-object v6, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerClickListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

    iput-object v6, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    sget-object v0, Lorg/osmdroid/views/overlay/Marker;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$drawable;->marker_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/views/overlay/Marker;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    sget-object v0, Lorg/osmdroid/views/overlay/Marker;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lorg/osmdroid/views/overlay/Marker;->mDefaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/osmdroid/views/overlay/Marker;->mDefaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->getMapView()Lorg/osmdroid/views/MapView;

    move-result-object v0

    if-eq v0, p1, :cond_2

    :cond_1
    new-instance v0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    sget v1, Lorg/osmdroid/library/R$layout;->bonuspack_bubble:I

    invoke-direct {v0, v1, p1}, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    sput-object v0, Lorg/osmdroid/views/overlay/Marker;->mDefaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    :cond_2
    sget-object v0, Lorg/osmdroid/views/overlay/Marker;->mDefaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/Marker;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;)V

    return-void
.end method

.method public static cleanDefaults()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/osmdroid/views/overlay/Marker;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    sput-object v0, Lorg/osmdroid/views/overlay/Marker;->mDefaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 6

    const/4 v4, 0x0

    if-eqz p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/Marker;->mPositionPixels:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v3, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorU:F

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    neg-int v0, v0

    iget v3, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorV:F

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    neg-int v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lorg/osmdroid/views/overlay/Marker;->mAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Marker;->mFlat:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mBearing:F

    neg-float v5, v0

    :goto_1
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPositionPixels:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPositionPixels:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->y:I

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/views/overlay/Marker;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZF)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v0

    iget v1, p0, Lorg/osmdroid/views/overlay/Marker;->mBearing:F

    sub-float v5, v0, v1

    goto :goto_1
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mAlpha:F

    return v0
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mBearing:F

    return v0
.end method

.method public getTextLabelBackgroundColor()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelBackgroundColor:I

    return v0
.end method

.method public getTextLabelFontSize()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelFontSize:I

    return v0
.end method

.method public getTextLabelForegroundColor()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelForegroundColor:I

    return v0
.end method

.method public hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/Marker;->mPositionPixels:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getIntrinsicScreenRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mPositionPixels:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/osmdroid/views/overlay/Marker;->mPositionPixels:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isDraggable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Marker;->mDraggable:Z

    return v0
.end method

.method public isFlat()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Marker;->mFlat:Z

    return v0
.end method

.method public isInfoWindowShown()Z
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    instance-of v0, v0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    check-cast v0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->getMarkerReference()Lorg/osmdroid/views/overlay/Marker;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->isInfoWindowOpen()Z

    move-result v0

    goto :goto_0
.end method

.method public moveToEventPosition(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .locals 3

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 3

    const/16 v1, 0x9

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object v2, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iput-object v2, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerClickListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

    iput-object v2, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    iput-object v2, p0, Lorg/osmdroid/views/overlay/Marker;->resource:Landroid/content/res/Resources;

    invoke-virtual {p0, v2}, Lorg/osmdroid/views/overlay/Marker;->setRelatedObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    sget-object v1, Lorg/osmdroid/views/overlay/Marker;->mDefaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->isInfoWindowShown()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->closeInfoWindow()V

    :cond_2
    invoke-virtual {p0, v2}, Lorg/osmdroid/views/overlay/Marker;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;)V

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->onDestroy()V

    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->onDetach(Lorg/osmdroid/views/MapView;)V

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/Marker;->hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/Marker;->mDraggable:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/Marker;->mIsDragged:Z

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->closeInfoWindow()V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    invoke-interface {v1, p0}, Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;->onMarkerDragStart(Lorg/osmdroid/views/overlay/Marker;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/Marker;->moveToEventPosition(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    :cond_1
    return v0
.end method

.method protected onMarkerClickDefault(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/views/MapView;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Marker;->showInfoWindow()V

    iget-boolean v0, p1, Lorg/osmdroid/views/overlay/Marker;->mPanToView:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Marker;->getPosition()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/Marker;->hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerClickListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

    if-nez v0, :cond_1

    invoke-virtual {p0, p0, p2}, Lorg/osmdroid/views/overlay/Marker;->onMarkerClickDefault(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerClickListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

    invoke-interface {v0, p0, p2}, Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;->onMarkerClick(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/Marker;->mDraggable:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/Marker;->mIsDragged:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1

    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/Marker;->mIsDragged:Z

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    invoke-interface {v1, p0}, Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;->onMarkerDragEnd(Lorg/osmdroid/views/overlay/Marker;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/Marker;->moveToEventPosition(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    invoke-interface {v1, p0}, Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;->onMarkerDrag(Lorg/osmdroid/views/overlay/Marker;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public remove(Lorg/osmdroid/views/MapView;)V
    .locals 1

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mAlpha:F

    return-void
.end method

.method public setAnchor(FF)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorU:F

    iput p2, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorV:F

    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/Marker;->mDraggable:Z

    return-void
.end method

.method public setFlat(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/Marker;->mFlat:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    const/high16 v5, 0x3f000000    # 0.5f

    sget-boolean v0, Lorg/osmdroid/views/overlay/Marker;->ENABLE_TEXT_LABELS_WHEN_NO_IMAGE:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget v1, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iget v2, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelFontSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v2, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelForegroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    neg-float v3, v3

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v4

    add-float/2addr v4, v3

    add-float/2addr v4, v5

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Marker;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->resource:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lorg/osmdroid/views/overlay/Marker;->ENABLE_TEXT_LABELS_WHEN_NO_IMAGE:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/osmdroid/views/overlay/Marker;->mDefaultIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mImage:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;)V
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    sget-object v1, Lorg/osmdroid/views/overlay/Marker;->mDefaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->onDetach()V

    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    return-void
.end method

.method public setInfoWindowAnchor(FF)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mIWAnchorU:F

    iput p2, p0, Lorg/osmdroid/views/overlay/Marker;->mIWAnchorV:F

    return-void
.end method

.method public setOnMarkerClickListener(Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerClickListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;

    return-void
.end method

.method public setOnMarkerDragListener(Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/Marker;->mOnMarkerDragListener:Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;

    return-void
.end method

.method public setPanToView(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/Marker;->mPanToView:Z

    return-void
.end method

.method public setPosition(Lorg/osmdroid/util/GeoPoint;)V
    .locals 1

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->clone()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mBearing:F

    return-void
.end method

.method public setTextLabelBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelBackgroundColor:I

    return-void
.end method

.method public setTextLabelFontSize(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelFontSize:I

    return-void
.end method

.method public setTextLabelForegroundColor(I)V
    .locals 0

    iput p1, p0, Lorg/osmdroid/views/overlay/Marker;->mTextLabelForegroundColor:I

    return-void
.end method

.method public showInfoWindow()V
    .locals 4

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Marker;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget v2, p0, Lorg/osmdroid/views/overlay/Marker;->mIWAnchorU:F

    int-to-float v3, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorU:F

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, v2, v0

    iget v2, p0, Lorg/osmdroid/views/overlay/Marker;->mIWAnchorV:F

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lorg/osmdroid/views/overlay/Marker;->mAnchorV:F

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    sub-int v1, v2, v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/Marker;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/Marker;->mPosition:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2, p0, v3, v0, v1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->open(Ljava/lang/Object;Lorg/osmdroid/util/GeoPoint;II)V

    goto :goto_0
.end method
