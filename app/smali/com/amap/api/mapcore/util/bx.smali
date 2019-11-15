.class public Lcom/amap/api/mapcore/util/bx;
.super Lcom/amap/api/mapcore/util/bq;
.source "UnzipState.java"


# direct methods
.method public constructor <init>(ILcom/amap/api/mapcore/util/am;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/bq;-><init>(ILcom/amap/api/mapcore/util/am;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bx;->b:Lcom/amap/api/mapcore/util/am;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/am;->h:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/bx;->b(Lcom/amap/api/mapcore/util/bq;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bx;->b:Lcom/amap/api/mapcore/util/am;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bx;->b:Lcom/amap/api/mapcore/util/am;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/am;->h:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/am;->a(Lcom/amap/api/mapcore/util/bq;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bx;->b:Lcom/amap/api/mapcore/util/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->c()Lcom/amap/api/mapcore/util/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bq;->c()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bx;->b:Lcom/amap/api/mapcore/util/am;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/am;->setCompleteCode(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bx;->b:Lcom/amap/api/mapcore/util/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->d()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bx;->b:Lcom/amap/api/mapcore/util/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->d()V

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bx;->b:Lcom/amap/api/mapcore/util/am;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/am;->f:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/bx;->b(Lcom/amap/api/mapcore/util/bq;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bx;->b:Lcom/amap/api/mapcore/util/am;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bx;->b:Lcom/amap/api/mapcore/util/am;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/am;->f:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/am;->a(Lcom/amap/api/mapcore/util/bq;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bx;->b:Lcom/amap/api/mapcore/util/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->c()Lcom/amap/api/mapcore/util/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bq;->c()V

    return-void
.end method
