.class final Lcom/amap/api/col/l3/av$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amap/api/col/l3/bn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/amap/api/col/l3/av;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/av;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/av$1;->c:Lcom/amap/api/col/l3/av;

    iput-object p2, p0, Lcom/amap/api/col/l3/av$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/col/l3/av$1;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/col/l3/av$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/amap/api/col/l3/av$1;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/amap/api/col/l3/bt;->b(Ljava/io/File;)Z

    iget-object v0, p0, Lcom/amap/api/col/l3/av$1;->c:Lcom/amap/api/col/l3/av;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3/av$1;->c:Lcom/amap/api/col/l3/av;

    iget-object v0, v0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bz;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object v0, p0, Lcom/amap/api/col/l3/av$1;->c:Lcom/amap/api/col/l3/av;

    iget-object v1, v0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    iget-object v0, v0, Lcom/amap/api/col/l3/av;->k:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bz;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3/bz;->a(I)V

    return-void
.end method

.method public final a(F)V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/col/l3/av$1;->c:Lcom/amap/api/col/l3/av;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    move-result v0

    float-to-double v1, p1

    const-wide v3, 0x3fd8f5c28f5c28f6L    # 0.39

    mul-double v1, v1, v3

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    add-double/2addr v1, v3

    double-to-int p1, v1

    sub-int v0, p1, v0

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/col/l3/av$1;->c:Lcom/amap/api/col/l3/av;

    invoke-static {v2}, Lcom/amap/api/col/l3/av;->a(Lcom/amap/api/col/l3/av;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/av$1;->c:Lcom/amap/api/col/l3/av;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3/av$1;->c:Lcom/amap/api/col/l3/av;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/av;->a(Lcom/amap/api/col/l3/av;J)J

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/av$1;->c:Lcom/amap/api/col/l3/av;

    iget-object v1, v0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    iget-object v0, v0, Lcom/amap/api/col/l3/av;->k:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bz;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3/bz;->a(I)V

    return-void
.end method
