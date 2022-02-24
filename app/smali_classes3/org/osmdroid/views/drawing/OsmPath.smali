.class public Lorg/osmdroid/views/drawing/OsmPath;
.super Landroid/graphics/Path;
.source "OsmPath.java"


# static fields
.field private static final sReferenceGeoPoint:Lorg/osmdroid/util/GeoPoint;


# instance fields
.field private mLastZoomLevel:I

.field protected final mReferencePoint:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    sput-object v0, Lorg/osmdroid/views/drawing/OsmPath;->sReferenceGeoPoint:Lorg/osmdroid/util/GeoPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mLastZoomLevel:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 5
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lorg/osmdroid/views/drawing/OsmPath;->mLastZoomLevel:I

    return-void
.end method


# virtual methods
.method public onDrawCycle(Lorg/osmdroid/views/Projection;)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mLastZoomLevel:I

    invoke-virtual {p1}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Lorg/osmdroid/views/drawing/OsmPath;->sReferenceGeoPoint:Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    invoke-virtual {p1, v0, v1}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 3
    invoke-virtual {p1}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mLastZoomLevel:I

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 5
    iget v2, v0, Landroid/graphics/Point;->y:I

    .line 6
    sget-object v3, Lorg/osmdroid/views/drawing/OsmPath;->sReferenceGeoPoint:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p1, v3, v0}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 7
    iget-object p1, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    .line 8
    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v2

    int-to-float v0, v0

    int-to-float p1, p1

    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Path;->offset(FF)V

    return-void
.end method
