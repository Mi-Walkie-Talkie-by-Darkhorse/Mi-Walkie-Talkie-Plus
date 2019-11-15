.class public Lcom/amap/api/mapcore/util/dl;
.super Ljava/lang/Object;
.source "Bounds.java"


# instance fields
.field public final a:D

.field public final b:D

.field public final c:D

.field public final d:D

.field public final e:D

.field public final f:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 5

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/amap/api/mapcore/util/dl;->a:D

    iput-wide p5, p0, Lcom/amap/api/mapcore/util/dl;->b:D

    iput-wide p3, p0, Lcom/amap/api/mapcore/util/dl;->c:D

    iput-wide p7, p0, Lcom/amap/api/mapcore/util/dl;->d:D

    add-double v0, p1, p3

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/dl;->e:D

    add-double v0, p5, p7

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/dl;->f:D

    return-void
.end method


# virtual methods
.method public a(DD)Z
    .locals 3

    iget-wide v0, p0, Lcom/amap/api/mapcore/util/dl;->a:D

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/amap/api/mapcore/util/dl;->c:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/amap/api/mapcore/util/dl;->b:D

    cmpg-double v0, v0, p3

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/amap/api/mapcore/util/dl;->d:D

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(DDDD)Z
    .locals 3

    iget-wide v0, p0, Lcom/amap/api/mapcore/util/dl;->c:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/amap/api/mapcore/util/dl;->a:D

    cmpg-double v0, v0, p3

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/amap/api/mapcore/util/dl;->d:D

    cmpg-double v0, p5, v0

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/amap/api/mapcore/util/dl;->b:D

    cmpg-double v0, v0, p7

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/util/dl;)Z
    .locals 10

    iget-wide v2, p1, Lcom/amap/api/mapcore/util/dl;->a:D

    iget-wide v4, p1, Lcom/amap/api/mapcore/util/dl;->c:D

    iget-wide v6, p1, Lcom/amap/api/mapcore/util/dl;->b:D

    iget-wide v8, p1, Lcom/amap/api/mapcore/util/dl;->d:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/amap/api/mapcore/util/dl;->a(DDDD)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/autonavi/amap/mapcore/DPoint;)Z
    .locals 4

    iget-wide v0, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v2, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/dl;->a(DD)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/amap/api/mapcore/util/dl;)Z
    .locals 4

    iget-wide v0, p1, Lcom/amap/api/mapcore/util/dl;->a:D

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/dl;->a:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p1, Lcom/amap/api/mapcore/util/dl;->c:D

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/dl;->c:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p1, Lcom/amap/api/mapcore/util/dl;->b:D

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/dl;->b:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p1, Lcom/amap/api/mapcore/util/dl;->d:D

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/dl;->d:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
