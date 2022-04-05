.class public final Lcom/amap/api/col/l3/cc;
.super Lcom/amap/api/col/l3/by;


# direct methods
.method public constructor <init>(ILcom/amap/api/col/l3/av;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3/by;-><init>(ILcom/amap/api/col/l3/av;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/bz;->b:Lcom/amap/api/col/l3/av;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/av;->e()V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/bz;->b:Lcom/amap/api/col/l3/av;

    iget-object v0, v0, Lcom/amap/api/col/l3/av;->b:Lcom/amap/api/col/l3/bz;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/bz;->a(Lcom/amap/api/col/l3/bz;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/bz;->b:Lcom/amap/api/col/l3/av;

    iget-object v1, v0, Lcom/amap/api/col/l3/av;->b:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/av;->a(Lcom/amap/api/col/l3/bz;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/bz;->b:Lcom/amap/api/col/l3/av;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/av;->d()V

    iget-object v0, p0, Lcom/amap/api/col/l3/bz;->b:Lcom/amap/api/col/l3/av;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/av;->c()Lcom/amap/api/col/l3/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bz;->c()V

    return-void
.end method
