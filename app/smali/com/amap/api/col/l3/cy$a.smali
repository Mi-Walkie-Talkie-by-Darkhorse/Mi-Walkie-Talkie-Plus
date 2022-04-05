.class public final Lcom/amap/api/col/l3/cy$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/cy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/cy;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3/cy;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/cy$a;->a:Lcom/amap/api/col/l3/cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p2, Lcom/amap/api/maps/model/LatLng;

    check-cast p3, Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    float-to-double v2, p1

    iget-wide v4, p3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    sub-double/2addr v4, v0

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    iget-wide p1, p2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, p3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    sub-double/2addr v4, p1

    mul-double v2, v2, v4

    add-double/2addr p1, v2

    new-instance p3, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {p3, v0, v1, p1, p2}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    return-object p3
.end method
