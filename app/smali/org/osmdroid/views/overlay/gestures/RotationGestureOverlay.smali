.class public Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "RotationGestureOverlay.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/IOverlayMenuProvider;
.implements Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector$RotationListener;


# static fields
.field private static final MENU_ENABLED:I

.field private static final MENU_ROTATE_CCW:I

.field private static final MENU_ROTATE_CW:I

.field private static final SHOW_ROTATE_MENU_ITEMS:Z


# instance fields
.field currentAngle:F

.field final deltaTime:J

.field private mMapView:Lorg/osmdroid/views/MapView;

.field private mOptionsMenuEnabled:Z

.field private final mRotationDetector:Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;

.field timeLastSet:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->MENU_ENABLED:I

    invoke-static {}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->MENU_ROTATE_CCW:I

    invoke-static {}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->MENU_ROTATE_CW:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/views/MapView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;-><init>(Lorg/osmdroid/views/MapView;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 2

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mOptionsMenuEnabled:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->timeLastSet:J

    const-wide/16 v0, 0x19

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->deltaTime:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->currentAngle:F

    iput-object p1, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    new-instance v0, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;

    invoke-direct {v0, p0}, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;-><init>(Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector$RotationListener;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mRotationDetector:Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 0

    return-void
.end method

.method public isOptionsMenuEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mOptionsMenuEnabled:Z

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 3

    const/4 v2, 0x0

    sget v0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->MENU_ENABLED:I

    add-int/2addr v0, p2

    const-string v1, "Enable rotation"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080041

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;ILorg/osmdroid/views/MapView;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sget v3, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->MENU_ENABLED:I

    add-int/2addr v3, p2

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/osmdroid/views/MapView;->setMapOrientation(F)V

    invoke-virtual {p0, v1}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->setEnabled(Z)V

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->MENU_ROTATE_CCW:I

    add-int/2addr v2, p2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v2

    sub-float/2addr v2, v4

    invoke-virtual {v0, v2}, Lorg/osmdroid/views/MapView;->setMapOrientation(F)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->MENU_ROTATE_CW:I

    add-int/2addr v2, p2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v2

    add-float/2addr v2, v4

    invoke-virtual {v0, v2}, Lorg/osmdroid/views/MapView;->setMapOrientation(F)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 2

    sget v0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->MENU_ENABLED:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Disable rotation"

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "Enable rotation"

    goto :goto_0
.end method

.method public onRotate(F)V
    .locals 4

    iget v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->currentAngle:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->currentAngle:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x19

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->timeLastSet:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->timeLastSet:J

    iget-object v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v1

    iget v2, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->currentAngle:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setMapOrientation(F)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mRotationDetector:Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/gestures/RotationGestureDetector;->onTouch(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    return v0
.end method

.method public setOptionsMenuEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->mOptionsMenuEnabled:Z

    return-void
.end method
