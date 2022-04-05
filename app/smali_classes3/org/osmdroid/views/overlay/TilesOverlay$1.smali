.class Lorg/osmdroid/views/overlay/TilesOverlay$1;
.super Lorg/osmdroid/util/TileLooper;


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
    .locals 8

    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0, p3}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getMapTile(Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$100(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_5

    iget-object v3, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v3}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Point;

    move-result-object v3

    mul-int v4, p4, p2

    mul-int v5, p5, p2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    iget-object v3, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v3}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v4}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v5}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v6}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v6, p2

    iget-object v7, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v7}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v7, p2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->beginUsingDrawable()V

    :cond_2
    if-eqz v1, :cond_3

    :try_start_0
    move-object v3, v0

    check-cast v3, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->isBitmapValid()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$100(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    :cond_3
    iget-object v3, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v4, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v4}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, p1, v0, v4}, Lorg/osmdroid/views/overlay/TilesOverlay;->onTileReadyToDraw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->finishUsingDrawable()V

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->finishUsingDrawable()V

    :cond_4
    throw p1

    :cond_5
    :goto_1
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v0

    mul-int p4, p4, p2

    mul-int p5, p5, p2

    add-int v1, p4, p2

    add-int/2addr p2, p5

    invoke-virtual {v0, p4, p5, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p3}, Lorg/osmdroid/tileprovider/MapTile;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {p3}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->left:I

    add-int/lit8 p3, p3, 0x1

    int-to-float p3, p3

    iget-object p4, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {p4}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    iget-object p5, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object p5, p5, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p5}, Landroid/graphics/Paint;->getTextSize()F

    move-result p5

    add-float/2addr p4, p5

    iget-object p5, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object p5, p5, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {p2}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, p2

    iget-object p2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {p2}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, p2

    iget-object p2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {p2}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, p2

    iget-object p2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {p2}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, p2

    iget-object p2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v5, p2, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object p2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {p2}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, p2

    iget-object p2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {p2}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, p2

    iget-object p2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {p2}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, p2

    iget-object p2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {p2}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$300(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, p2

    iget-object p2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v5, p2, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method public initialiseLoop(II)V
    .locals 2

    iget-object p1, p0, Lorg/osmdroid/util/TileLooper;->mLowerRight:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lorg/osmdroid/util/TileLooper;->mUpperLeft:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, v1

    add-int/lit8 p2, p2, 0x1

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    mul-int p2, p2, p1

    iget-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$1;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v0, p1, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-static {p1}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$000(Lorg/osmdroid/views/overlay/TilesOverlay;)I

    move-result p1

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->ensureCapacity(I)V

    return-void
.end method
