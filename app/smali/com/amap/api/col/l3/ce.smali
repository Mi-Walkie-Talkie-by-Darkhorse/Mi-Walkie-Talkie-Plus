.class public final Lcom/amap/api/col/l3/ce;
.super Lcom/amap/api/col/l3/by;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3/av;)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/amap/api/col/l3/by;-><init>(ILcom/amap/api/col/l3/av;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/bz;->b:Lcom/amap/api/col/l3/av;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/av;->d()V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/bz;->b:Lcom/amap/api/col/l3/av;

    iget-object v0, v0, Lcom/amap/api/col/l3/av;->b:Lcom/amap/api/col/l3/bz;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/bz;->a(Lcom/amap/api/col/l3/bz;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/bz;->b:Lcom/amap/api/col/l3/av;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3/bz;->b:Lcom/amap/api/col/l3/av;

    iget-object v1, v0, Lcom/amap/api/col/l3/av;->b:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/av;->a(Lcom/amap/api/col/l3/bz;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/bz;->b:Lcom/amap/api/col/l3/av;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/av;->c()Lcom/amap/api/col/l3/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bz;->c()V

    return-void
.end method
