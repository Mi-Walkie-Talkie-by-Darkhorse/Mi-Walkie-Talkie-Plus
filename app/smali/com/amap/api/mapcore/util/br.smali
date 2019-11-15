.class public Lcom/amap/api/mapcore/util/br;
.super Lcom/amap/api/mapcore/util/bp;
.source "CompleteState.java"


# direct methods
.method public constructor <init>(ILcom/amap/api/mapcore/util/am;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/bp;-><init>(ILcom/amap/api/mapcore/util/am;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/br;->b:Lcom/amap/api/mapcore/util/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->e()V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/br;->b:Lcom/amap/api/mapcore/util/am;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/am;->g:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/br;->b(Lcom/amap/api/mapcore/util/bq;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/br;->b:Lcom/amap/api/mapcore/util/am;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/br;->b:Lcom/amap/api/mapcore/util/am;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/am;->g:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/am;->a(Lcom/amap/api/mapcore/util/bq;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/br;->b:Lcom/amap/api/mapcore/util/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->d()V

    return-void
.end method
