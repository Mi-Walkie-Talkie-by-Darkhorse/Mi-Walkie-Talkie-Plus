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

    const/4 v1, 0x0

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v1, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    sput-object v0, Lorg/osmdroid/views/drawing/OsmPath;->sReferenceGeoPoint:Lorg/osmdroid/util/GeoPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mLastZoomLevel:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    const/4 v0, -0x1

    iput v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mLastZoomLevel:I

    return-void
.end method


# virtual methods
.method public onDrawCycle(Lorg/osmdroid/views/Projection;)V
    .locals 4

    iget v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mLastZoomLevel:I

    invoke-virtual {p1}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/osmdroid/views/drawing/OsmPath;->sReferenceGeoPoint:Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    invoke-virtual {p1, v0, v1}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    invoke-virtual {p1}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mLastZoomLevel:I

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sget-object v2, Lorg/osmdroid/views/drawing/OsmPath;->sReferenceGeoPoint:Lorg/osmdroid/util/GeoPoint;

    iget-object v3, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    invoke-virtual {p1, v2, v3}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v2, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int v0, v2, v0

    iget-object v2, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int v1, v2, v1

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/drawing/OsmPath;->offset(FF)V

    return-void
.end method
