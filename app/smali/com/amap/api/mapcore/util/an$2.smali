.class Lcom/amap/api/mapcore/util/an$2;
.super Ljava/lang/Object;
.source "OfflineDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/an;->a(Lcom/amap/api/mapcore/util/am;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/am;

.field final synthetic b:Z

.field final synthetic c:Lcom/amap/api/mapcore/util/an;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/an;Lcom/amap/api/mapcore/util/am;Z)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/an$2;->c:Lcom/amap/api/mapcore/util/an;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/an$2;->a:Lcom/amap/api/mapcore/util/am;

    iput-boolean p3, p0, Lcom/amap/api/mapcore/util/an$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$2;->a:Lcom/amap/api/mapcore/util/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->c()Lcom/amap/api/mapcore/util/bq;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an$2;->a:Lcom/amap/api/mapcore/util/am;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/am;->a:Lcom/amap/api/mapcore/util/bq;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$2;->c:Lcom/amap/api/mapcore/util/an;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/an;->d(Lcom/amap/api/mapcore/util/an;)Lcom/amap/api/mapcore/util/an$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$2;->c:Lcom/amap/api/mapcore/util/an;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/an;->d(Lcom/amap/api/mapcore/util/an;)Lcom/amap/api/mapcore/util/an$a;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an$2;->a:Lcom/amap/api/mapcore/util/am;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/an$a;->c(Lcom/amap/api/mapcore/util/am;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$2;->a:Lcom/amap/api/mapcore/util/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->getState()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$2;->a:Lcom/amap/api/mapcore/util/am;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/am;->getState()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$2;->c:Lcom/amap/api/mapcore/util/an;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/an;->g:Lcom/amap/api/mapcore/util/at;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an$2;->a:Lcom/amap/api/mapcore/util/am;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/at;->a(Lcom/amap/api/mapcore/util/am;)V

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/an$2;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$2;->c:Lcom/amap/api/mapcore/util/an;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/an;->d(Lcom/amap/api/mapcore/util/an;)Lcom/amap/api/mapcore/util/an$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$2;->c:Lcom/amap/api/mapcore/util/an;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/an;->d(Lcom/amap/api/mapcore/util/an;)Lcom/amap/api/mapcore/util/an$a;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an$2;->a:Lcom/amap/api/mapcore/util/am;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/an$a;->c(Lcom/amap/api/mapcore/util/am;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "requestDelete"

    const-string v2, "removeExcecRunnable"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$2;->c:Lcom/amap/api/mapcore/util/an;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/an;->g:Lcom/amap/api/mapcore/util/at;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an$2;->a:Lcom/amap/api/mapcore/util/am;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/at;->a(Lcom/amap/api/mapcore/util/am;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$2;->c:Lcom/amap/api/mapcore/util/an;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/an;->d(Lcom/amap/api/mapcore/util/an;)Lcom/amap/api/mapcore/util/an$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/an$2;->c:Lcom/amap/api/mapcore/util/an;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/an;->d(Lcom/amap/api/mapcore/util/an;)Lcom/amap/api/mapcore/util/an$a;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/an$2;->a:Lcom/amap/api/mapcore/util/am;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/an$a;->c(Lcom/amap/api/mapcore/util/am;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
