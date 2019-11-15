.class public abstract Lorg/osmdroid/views/overlay/ClickableIconOverlay;
.super Lorg/osmdroid/views/overlay/IconOverlay;
.source "ClickableIconOverlay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/osmdroid/views/overlay/IconOverlay;"
    }
.end annotation


# instance fields
.field private mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field protected mId:I


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/IconOverlay;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mData:Ljava/lang/Object;

    iput-object p1, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mData:Ljava/lang/Object;

    return-void
.end method

.method public static find(Ljava/util/List;I)Lorg/osmdroid/views/overlay/ClickableIconOverlay;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/views/overlay/ClickableIconOverlay;",
            ">;I)",
            "Lorg/osmdroid/views/overlay/ClickableIconOverlay;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;

    if-eqz v0, :cond_0

    iget v2, v0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mId:I

    if-ne v2, p1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDataType;"
        }
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getID()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mId:I

    return v0
.end method

.method protected hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mPositionPixels:Landroid/graphics/Point;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mPositionPixels:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getIntrinsicScreenRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mPositionPixels:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mPositionPixels:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mId:I

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mData:Ljava/lang/Object;

    invoke-virtual {p0, p2, v0, v1, v2}, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->onMarkerLongPress(Lorg/osmdroid/views/MapView;ILorg/osmdroid/api/IGeoPoint;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/IconOverlay;->onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    goto :goto_0
.end method

.method protected abstract onMarkerClicked(Lorg/osmdroid/views/MapView;ILorg/osmdroid/api/IGeoPoint;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/views/MapView;",
            "I",
            "Lorg/osmdroid/api/IGeoPoint;",
            "TDataType;)Z"
        }
    .end annotation
.end method

.method protected onMarkerLongPress(Lorg/osmdroid/views/MapView;ILorg/osmdroid/api/IGeoPoint;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mId:I

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mData:Ljava/lang/Object;

    invoke-virtual {p0, p2, v0, v1, v2}, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->onMarkerClicked(Lorg/osmdroid/views/MapView;ILorg/osmdroid/api/IGeoPoint;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/IconOverlay;->onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    goto :goto_0
.end method

.method public set(ILorg/osmdroid/api/IGeoPoint;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)Lorg/osmdroid/views/overlay/ClickableIconOverlay;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/osmdroid/api/IGeoPoint;",
            "Landroid/graphics/drawable/Drawable;",
            "TDataType;)",
            "Lorg/osmdroid/views/overlay/ClickableIconOverlay;"
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->set(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/drawable/Drawable;)Lorg/osmdroid/views/overlay/IconOverlay;

    iput p1, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mId:I

    iput-object p4, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mData:Ljava/lang/Object;

    return-object p0
.end method
