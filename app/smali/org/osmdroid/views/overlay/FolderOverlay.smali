.class public Lorg/osmdroid/views/overlay/FolderOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "FolderOverlay.java"


# instance fields
.field protected mDescription:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    new-instance v0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;-><init>(Lorg/osmdroid/views/overlay/TilesOverlay;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    const-string v0, ""

    iput-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/FolderOverlay;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lorg/osmdroid/views/overlay/Overlay;)Z
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public closeAllInfoWindows()V
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/OverlayManager;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    instance-of v2, v0, Lorg/osmdroid/views/overlay/FolderOverlay;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/osmdroid/views/overlay/FolderOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/FolderOverlay;->closeAllInfoWindows()V

    goto :goto_0

    :cond_1
    instance-of v2, v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->closeInfoWindow()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    if-eqz p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/OverlayManager;->onDraw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;)V

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/views/overlay/Overlay;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/OverlayManager;->onDetach(Lorg/osmdroid/views/MapView;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/FolderOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/OverlayManager;->onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/FolderOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/OverlayManager;->onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/FolderOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/OverlayManager;->onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/FolderOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/OverlayManager;->onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Lorg/osmdroid/views/overlay/Overlay;)Z
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mName:Ljava/lang/String;

    return-void
.end method
