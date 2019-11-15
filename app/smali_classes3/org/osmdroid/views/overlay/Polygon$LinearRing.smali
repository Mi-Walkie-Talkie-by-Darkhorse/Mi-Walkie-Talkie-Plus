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
            "Ljava/util/ArrayList",
            "<",
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
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->this$0:Lorg/osmdroid/views/overlay/Polygon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mConvertedPoints:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mPrecomputed:Z

    return-void
.end method


# virtual methods
.method protected buildPathPortion(Lorg/osmdroid/views/Projection;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mConvertedPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x2

    if-ge v3, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mPrecomputed:Z

    if-nez v0, :cond_2

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mConvertedPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v4, v5, v0}, Lorg/osmdroid/views/Projection;->toProjectedPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    iput-boolean v7, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mPrecomputed:Z

    :cond_2
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mConvertedPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->this$0:Lorg/osmdroid/views/overlay/Polygon;

    invoke-static {v2}, Lorg/osmdroid/views/overlay/Polygon;->access$000(Lorg/osmdroid/views/overlay/Polygon;)Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->this$0:Lorg/osmdroid/views/overlay/Polygon;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/Polygon;->access$100(Lorg/osmdroid/views/overlay/Polygon;)Landroid/graphics/Path;

    move-result-object v0

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_2
    if-ge v1, v3, :cond_4

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mConvertedPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->this$0:Lorg/osmdroid/views/overlay/Polygon;

    invoke-static {v4}, Lorg/osmdroid/views/overlay/Polygon;->access$200(Lorg/osmdroid/views/overlay/Polygon;)Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Lorg/osmdroid/views/Projection;->toPixelsFromProjected(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    if-gt v4, v7, :cond_3

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->this$0:Lorg/osmdroid/views/overlay/Polygon;

    invoke-static {v4}, Lorg/osmdroid/views/overlay/Polygon;->access$100(Lorg/osmdroid/views/overlay/Polygon;)Landroid/graphics/Path;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget v4, v0, Landroid/graphics/Point;->x:I

    iput v4, v2, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, v2, Landroid/graphics/Point;->y:I

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->this$0:Lorg/osmdroid/views/overlay/Polygon;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/Polygon;->access$100(Lorg/osmdroid/views/overlay/Polygon;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto/16 :goto_0
.end method

.method getPoints()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    array-length v2, v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    iget-object v5, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    aget-object v5, v5, v0

    aget v5, v5, v1

    iget-object v6, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-direct {v4, v5, v6}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method setPoints(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mConvertedPoints:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    aget-object v4, v4, v1

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v5

    aput v5, v4, v2

    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mOriginalPoints:[[I

    aget-object v4, v4, v1

    const/4 v5, 0x1

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v6

    aput v6, v4, v5

    iget-object v4, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mConvertedPoints:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v6

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v0

    invoke-direct {v5, v6, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/Polygon$LinearRing;->mPrecomputed:Z

    return-void
.end method
