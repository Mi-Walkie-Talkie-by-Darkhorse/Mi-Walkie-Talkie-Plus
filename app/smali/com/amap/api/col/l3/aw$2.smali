.class final Lcom/amap/api/col/l3/aw$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/aw;->a(Lcom/amap/api/col/l3/av;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/av;

.field final synthetic b:Z

.field final synthetic c:Lcom/amap/api/col/l3/aw;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/aw;Lcom/amap/api/col/l3/av;Z)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/aw$2;->c:Lcom/amap/api/col/l3/aw;

    iput-object p2, p0, Lcom/amap/api/col/l3/aw$2;->a:Lcom/amap/api/col/l3/av;

    iput-boolean p3, p0, Lcom/amap/api/col/l3/aw$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/aw$2;->a:Lcom/amap/api/col/l3/av;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/av;->c()Lcom/amap/api/col/l3/bz;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3/aw$2;->a:Lcom/amap/api/col/l3/av;

    iget-object v1, v1, Lcom/amap/api/col/l3/av;->a:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/aw$2;->c:Lcom/amap/api/col/l3/aw;

    invoke-static {v0}, Lcom/amap/api/col/l3/aw;->d(Lcom/amap/api/col/l3/aw;)Lcom/amap/api/col/l3/aw$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/aw$2;->c:Lcom/amap/api/col/l3/aw;

    invoke-static {v0}, Lcom/amap/api/col/l3/aw;->d(Lcom/amap/api/col/l3/aw;)Lcom/amap/api/col/l3/aw$a;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3/aw$2;->a:Lcom/amap/api/col/l3/av;

    invoke-interface {v0, v1}, Lcom/amap/api/col/l3/aw$a;->c(Lcom/amap/api/col/l3/av;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/aw$2;->a:Lcom/amap/api/col/l3/av;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3/aw$2;->a:Lcom/amap/api/col/l3/av;

    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/aw$2;->c:Lcom/amap/api/col/l3/aw;

    iget-object v0, v0, Lcom/amap/api/col/l3/aw;->g:Lcom/amap/api/col/l3/bc;

    iget-object v1, p0, Lcom/amap/api/col/l3/aw$2;->a:Lcom/amap/api/col/l3/av;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/bc;->a(Lcom/amap/api/col/l3/av;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/aw$2;->c:Lcom/amap/api/col/l3/aw;

    invoke-static {v0}, Lcom/amap/api/col/l3/aw;->d(Lcom/amap/api/col/l3/aw;)Lcom/amap/api/col/l3/aw$a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3/aw$2;->c:Lcom/amap/api/col/l3/aw;

    invoke-static {v0}, Lcom/amap/api/col/l3/aw;->d(Lcom/amap/api/col/l3/aw;)Lcom/amap/api/col/l3/aw$a;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3/aw$2;->a:Lcom/amap/api/col/l3/av;

    invoke-interface {v0, v1}, Lcom/amap/api/col/l3/aw$a;->c(Lcom/amap/api/col/l3/av;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3/aw$2;->c:Lcom/amap/api/col/l3/aw;

    iget-object v0, v0, Lcom/amap/api/col/l3/aw;->g:Lcom/amap/api/col/l3/bc;

    iget-object v1, p0, Lcom/amap/api/col/l3/aw$2;->a:Lcom/amap/api/col/l3/av;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/bc;->a(Lcom/amap/api/col/l3/av;)V

    iget-boolean v0, p0, Lcom/amap/api/col/l3/aw$2;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3/aw$2;->c:Lcom/amap/api/col/l3/aw;

    invoke-static {v0}, Lcom/amap/api/col/l3/aw;->d(Lcom/amap/api/col/l3/aw;)Lcom/amap/api/col/l3/aw$a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3/aw$2;->c:Lcom/amap/api/col/l3/aw;

    invoke-static {v0}, Lcom/amap/api/col/l3/aw;->d(Lcom/amap/api/col/l3/aw;)Lcom/amap/api/col/l3/aw$a;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3/aw$2;->a:Lcom/amap/api/col/l3/av;

    invoke-interface {v0, v1}, Lcom/amap/api/col/l3/aw$a;->c(Lcom/amap/api/col/l3/av;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "requestDelete"

    const-string v2, "removeExcecRunnable"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
