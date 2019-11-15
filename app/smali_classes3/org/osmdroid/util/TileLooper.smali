.class public abstract Lorg/osmdroid/util/TileLooper;
.super Ljava/lang/Object;
.source "TileLooper.java"


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
    .locals 7

    const/4 v3, -0x1

    iget v0, p4, Landroid/graphics/Rect;->left:I

    iget v1, p4, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lorg/osmdroid/util/TileLooper;->mUpperLeft:Landroid/graphics/Point;

    invoke-static {v0, v1, v2}, Lorg/osmdroid/util/TileSystem;->PixelXYToTileXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v0, p0, Lorg/osmdroid/util/TileLooper;->mUpperLeft:Landroid/graphics/Point;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Point;->offset(II)V

    iget v0, p4, Landroid/graphics/Rect;->right:I

    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lorg/osmdroid/util/TileLooper;->mLowerRight:Landroid/graphics/Point;

    invoke-static {v0, v1, v2}, Lorg/osmdroid/util/TileSystem;->PixelXYToTileXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    const/4 v0, 0x1

    shl-int v6, v0, p2

    invoke-virtual {p0, p2, p3}, Lorg/osmdroid/util/TileLooper;->initialiseLoop(II)V

    iget-object v0, p0, Lorg/osmdroid/util/TileLooper;->mUpperLeft:Landroid/graphics/Point;

    iget v5, v0, Landroid/graphics/Point;->y:I

    :goto_0
    iget-object v0, p0, Lorg/osmdroid/util/TileLooper;->mLowerRight:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gt v5, v0, :cond_1

    iget-object v0, p0, Lorg/osmdroid/util/TileLooper;->mUpperLeft:Landroid/graphics/Point;

    iget v4, v0, Landroid/graphics/Point;->x:I

    :goto_1
    iget-object v0, p0, Lorg/osmdroid/util/TileLooper;->mLowerRight:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-gt v4, v0, :cond_0

    invoke-static {v5, v6}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v0

    invoke-static {v4, v6}, Lorg/osmdroid/util/MyMath;->mod(II)I

    move-result v1

    new-instance v3, Lorg/osmdroid/tileprovider/MapTile;

    invoke-direct {v3, p2, v1, v0}, Lorg/osmdroid/tileprovider/MapTile;-><init>(III)V

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileLooper;->handleTile(Landroid/graphics/Canvas;ILorg/osmdroid/tileprovider/MapTile;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/osmdroid/util/TileLooper;->finaliseLoop()V

    return-void
.end method
