.class public abstract Lcom/amap/api/col/l3/by;
.super Lcom/amap/api/col/l3/bz;
.source "CanDeleteState.java"


# direct methods
.method public constructor <init>(ILcom/amap/api/col/l3/av;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3/bz;-><init>(ILcom/amap/api/col/l3/av;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/bz;->b:Lcom/amap/api/col/l3/av;

    iget-object v0, v0, Lcom/amap/api/col/l3/av;->a:Lcom/amap/api/col/l3/bz;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/l3/bz;->a(Lcom/amap/api/col/l3/bz;)V

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/bz;->b:Lcom/amap/api/col/l3/av;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/bz;->b:Lcom/amap/api/col/l3/av;

    iget-object v1, v0, Lcom/amap/api/col/l3/av;->a:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/av;->a(Lcom/amap/api/col/l3/bz;)V

    .line 4
    iget-object v0, p0, Lcom/amap/api/col/l3/bz;->b:Lcom/amap/api/col/l3/av;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/av;->d()V

    return-void
.end method
