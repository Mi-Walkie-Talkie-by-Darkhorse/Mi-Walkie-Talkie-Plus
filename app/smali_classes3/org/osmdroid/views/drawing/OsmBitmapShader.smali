.class public Lorg/osmdroid/views/drawing/OsmBitmapShader;
.super Landroid/graphics/BitmapShader;


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
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iput p2, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mBitmapWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mBitmapHeight:I

    return-void
.end method


# virtual methods
.method public onDrawCycle(Lorg/osmdroid/views/Projection;)V
    .locals 3

    sget-object v0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->sPoint:Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    iget-object p1, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mMatrix:Landroid/graphics/Matrix;

    sget-object v0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->sPoint:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mBitmapWidth:I

    rem-int/2addr v1, v2

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    iget v2, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mBitmapHeight:I

    rem-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p1, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
