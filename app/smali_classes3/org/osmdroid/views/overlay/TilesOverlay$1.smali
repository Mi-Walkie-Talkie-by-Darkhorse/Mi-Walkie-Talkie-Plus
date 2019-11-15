.class Lorg/osmdroid/views/overlay/TilesOverlay$1;
.super Lorg/osmdroid/util/TileLooper;
.source "TilesOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/overlay/TilesOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/views/overlay/TilesOverlay;


# direct methods
.method constructor <init>(Lorg/osmdroid/views/overlay/TilesOverlay;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-direct {p0}, Lorg/osmdroid/util/TileLooper;-><init>()V

    return-void
.end method


# virtual methods
.method public finaliseLoop()V
    .locals 0

    return-void
.end method

.method public handleTile(Landroid/graphics/Canvas;ILorg/osmdroid/tileprovider/MapTile;II)V
    .locals 9

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v1, v1, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v1, p3}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getMapTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    if-eqz v3, :cond_4

    move-object v1, v2

    check-cast v1, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    move-object v4, v1

    :goto_0
    if-nez v2, :cond_0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v1}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$100(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_2

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v1}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Point;

    move-result-object v1

    mul-int v5, p4, p2

    mul-int v6, p5, p2

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v1}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v5, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v5}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v6}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v7}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    add-int/2addr v7, p2

    iget-object v8, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v8}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    add-int/2addr v8, p2

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v3, :cond_1

    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->beginUsingDrawable()V

    :cond_1
    if-eqz v3, :cond_6

    :try_start_0
    move-object v0, v2

    check-cast v0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->isBitmapValid()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v1}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$100(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    const/4 v3, 0x0

    move-object v1, v2

    move v2, v3

    :goto_1
    :try_start_1
    iget-object v3, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v5, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v5}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, p1, v1, v5}, Lorg/osmdroid/views/overlay/TilesOverlay;->onTileReadyToDraw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->finishUsingDrawable()V

    :cond_2
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v1}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v1

    mul-int v2, p4, p2

    mul-int v3, p5, p2

    mul-int v4, p4, p2

    add-int/2addr v4, p2

    mul-int v5, p5, p2

    add-int/2addr v5, p2

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p3}, Lorg/osmdroid/tileprovider/MapTile;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v2}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v3}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v4, v4, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v4, v4, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v1}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v1}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v1}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v1}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v6, v1, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v1}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v1}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v1}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v1}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v6, v1, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x0

    move-object v4, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move v2, v3

    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v4}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->finishUsingDrawable()V

    :cond_5
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_6
    move-object v1, v2

    move v2, v3

    goto/16 :goto_1
.end method

.method public initialiseLoop(II)V
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->mLowerRight:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->mUpperLeft:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->mLowerRight:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->mUpperLeft:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v1, v1, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v2}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$000(Lorg/osmdroid/views/overlay/TilesOverlay;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->ensureCapacity(I)V

    return-void
.end method
