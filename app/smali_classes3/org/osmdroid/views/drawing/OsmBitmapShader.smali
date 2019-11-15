.class public Lorg/osmdroid/views/drawing/OsmBitmapShader;
.super Landroid/graphics/BitmapShader;
.source "OsmBitmapShader.java"


# static fields
.field private static final sPoint:Landroid/graphics/Point;


# instance fields
.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private final mMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->sPoint:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mBitmapWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mBitmapHeight:I

    return-void
.end method


# virtual methods
.method public onDrawCycle(Lorg/osmdroid/views/Projection;)V
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->sPoint:Landroid/graphics/Point;

    invoke-virtual {p1, v1, v1, v0}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v0, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mMatrix:Landroid/graphics/Matrix;

    sget-object v1, Lorg/osmdroid/views/drawing/OsmBitmapShader;->sPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mBitmapWidth:I

    rem-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Lorg/osmdroid/views/drawing/OsmBitmapShader;->sPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    iget v3, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mBitmapHeight:I

    rem-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/drawing/OsmBitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
