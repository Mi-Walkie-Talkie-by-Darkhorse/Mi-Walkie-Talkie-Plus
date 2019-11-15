.class public Lcom/amap/api/mapcore/util/by;
.super Lcom/amap/api/mapcore/util/bp;
.source "WaitingState.java"


# direct methods
.method public constructor <init>(ILcom/amap/api/mapcore/util/am;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/bp;-><init>(ILcom/amap/api/mapcore/util/am;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/by;->b:Lcom/amap/api/mapcore/util/am;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/am;->b(I)Lcom/amap/api/mapcore/util/bq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/by;->b(Lcom/amap/api/mapcore/util/bq;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/by;->b:Lcom/amap/api/mapcore/util/am;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/by;->b:Lcom/amap/api/mapcore/util/am;

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore/util/am;->b(I)Lcom/amap/api/mapcore/util/bq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/am;->a(Lcom/amap/api/mapcore/util/bq;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/by;->b:Lcom/amap/api/mapcore/util/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->c()Lcom/amap/api/mapcore/util/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bq;->c()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/by;->b:Lcom/amap/api/mapcore/util/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->l()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/by;->b:Lcom/amap/api/mapcore/util/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->d()V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/by;->b:Lcom/amap/api/mapcore/util/am;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/am;->c:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/by;->b(Lcom/amap/api/mapcore/util/bq;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/by;->b:Lcom/amap/api/mapcore/util/am;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/by;->b:Lcom/amap/api/mapcore/util/am;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/am;->c:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/am;->a(Lcom/amap/api/mapcore/util/bq;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/by;->b:Lcom/amap/api/mapcore/util/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->c()Lcom/amap/api/mapcore/util/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bq;->c()V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/by;->b:Lcom/amap/api/mapcore/util/am;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/am;->d:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/by;->b(Lcom/amap/api/mapcore/util/bq;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/by;->b:Lcom/amap/api/mapcore/util/am;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/by;->b:Lcom/amap/api/mapcore/util/am;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/am;->d:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/am;->a(Lcom/amap/api/mapcore/util/bq;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/by;->b:Lcom/amap/api/mapcore/util/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->c()Lcom/amap/api/mapcore/util/bq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bq;->c()V

    return-void
.end method
