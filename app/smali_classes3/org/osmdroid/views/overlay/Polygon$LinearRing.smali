.class Lorg/osmdroid/views/overlay/Polygon$LinearRing;
.super Ljava/lang/Object;
.source "Polygon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/overlay/Polygon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LinearRing"
.end annotation


# instance fields
.field mConvertedPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field mOriginalPoints:[[I

.field mPrecomputed:Z

.field final synthetic this$0:Lorg/osmdroid/views/overlay/Polygon;


# direct methods
.method constructor <init>(Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->this$0:Lorg/osmdroid/views/overlay/Polygon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 2
    fill-array-data p1, :array_0

    const-class v0, I

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mConvertedPoints:Ljava/util/ArrayList;

    .line 4
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mPrecomputed:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data
.end method


# virtual methods
.method protected buildPathPortion(Lorg/osmdroid/views/Projection;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mConvertedPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mPrecomputed:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mConvertedPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 4
    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v5, v6, v4}, Lorg/osmdroid/views/Projection;->toProjectedPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iput-boolean v3, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mPrecomputed:Z

    .line 6
    :cond_2
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mConvertedPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 7
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->this$0:Lorg/osmdroid/views/overlay/Polygon;

    invoke-static {v4}, Lorg/osmdroid/views/overlay/Polygon;->access$000(Lorg/osmdroid/views/overlay/Polygon;)Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 8
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->this$0:Lorg/osmdroid/views/overlay/Polygon;

    invoke-static {v4}, Lorg/osmdroid/views/overlay/Polygon;->access$100(Lorg/osmdroid/views/overlay/Polygon;)Landroid/graphics/Path;

    move-result-object v4

    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_1
    if-ge v2, v0, :cond_4

    .line 9
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mConvertedPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 10
    iget-object v5, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->this$0:Lorg/osmdroid/views/overlay/Polygon;

    invoke-static {v5}, Lorg/osmdroid/views/overlay/Polygon;->access$200(Lorg/osmdroid/views/overlay/Polygon;)Landroid/graphics/Point;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v4

    .line 11
    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, v4, Landroid/graphics/Point;->y:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v5, v6

    if-gt v5, v3, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    iget-object v5, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->this$0:Lorg/osmdroid/views/overlay/Polygon;

    invoke-static {v5}, Lorg/osmdroid/views/overlay/Polygon;->access$100(Lorg/osmdroid/views/overlay/Polygon;)Landroid/graphics/Path;

    move-result-object v5

    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 13
    iget v5, v4, Landroid/graphics/Point;->x:I

    iput v5, v1, Landroid/graphics/Point;->x:I

    .line 14
    iget v4, v4, Landroid/graphics/Point;->y:I

    iput v4, v1, Landroid/graphics/Point;->y:I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 15
    :cond_4
    iget-object p1, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->this$0:Lorg/osmdroid/views/overlay/Polygon;

    invoke-static {p1}, Lorg/osmdroid/views/overlay/Polygon;->access$100(Lorg/osmdroid/views/overlay/Polygon;)Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method getPoints()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    array-length v0, v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 3
    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    iget-object v5, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    aget-object v6, v5, v3

    aget v6, v6, v2

    aget-object v5, v5, v3

    const/4 v7, 0x1

    aget v5, v5, v7

    invoke-direct {v4, v6, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    .line 4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method setPoints(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    .line 2
    const-class v4, I

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mConvertedPoints:Ljava/util/ArrayList;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    .line 5
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    aget-object v4, v4, v0

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v5

    aput v5, v4, v1

    .line 6
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    aget-object v4, v4, v0

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v5

    aput v5, v4, v3

    .line 7
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mConvertedPoints:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v6

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v2

    invoke-direct {v5, v6, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v3

    goto :goto_0

    .line 8
    :cond_0
    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mPrecomputed:Z

    return-void
.end method
