.class public abstract Lorg/osmdroid/util/TileLooper;
.super Ljava/lang/Object;


# instance fields
.field protected final mLowerRight:Landroid/graphics/Point;

.field protected final mUpperLeft:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/TileLooper;->mUpperLeft:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/TileLooper;->mLowerRight:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public abstract finaliseLoop()V
.end method

.method public abstract handleTile(Landroid/graphics/Canvas;ILorg/osmdroid/tileprovider/MapTile;II)V
.end method

.method public abstract initialiseLoop(II)V
.end method

.method public final loop(Landroid/graphics/Canvas;IILandroid/graphics/Rect;)V
    .locals 8

    iget v0, p4, Landroid/graphics/Rect;->left:I

    iget v1, p4, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lorg/osmdroid/util/TileLooper;->mUpperLeft:Landroid/graphics/Point;

    invoke-static {v0, v1, v2}, Lorg/osmdroid/util/TileSystem;->PixelXYToTileXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v0, p0, Lorg/osmdroid/util/TileLooper;->mUpperLeft:Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->offset(II)V

    iget v0, p4, Landroid/graphics/Rect;->right:I

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lorg/osmdroid/util/TileLooper;->mLowerRight:Landroid/graphics/Point;

    invoke-static {v0, p4, v1}, Lorg/osmdroid/util/TileSystem;->PixelXYToTileXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    const/4 p4, 0x1

    shl-int/2addr p4, p2

    invoke-virtual {p0, p2, p3}, Lorg/osmdroid/util/TileLooper;->initialiseLoop(II)V

    iget-object v0, p0, Lorg/osmdroid/util/TileLooper;->mUpperLeft:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_0
    iget-object v1, p0, Lorg/osmdroid/util/TileLooper;->mLowerRight:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lorg/osmdroid/util/TileLooper;->mUpperLeft:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    move v7, v1

    :goto_1
    iget-object v1, p0, Lorg/osmdroid/util/TileLooper;->mLowerRight:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-gt v7, v1, :cond_0

    invoke-static {v0, p4}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v1

    invoke-static {v7, p4}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v2

    new-instance v4, Lorg/osmdroid/tileprovider/MapTile;

    invoke-direct {v4, p2, v2, v1}, Lorg/osmdroid/tileprovider/MapTile;-><init>(III)V

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v5, v7

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/util/TileLooper;->handleTile(Landroid/graphics/Canvas;ILorg/osmdroid/tileprovider/MapTile;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/osmdroid/util/TileLooper;->finaliseLoop()V

    return-void
.end method
