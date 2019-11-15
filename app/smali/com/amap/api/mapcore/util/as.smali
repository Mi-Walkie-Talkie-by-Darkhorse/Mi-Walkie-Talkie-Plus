.class public Lcom/amap/api/mapcore/util/as;
.super Lcom/amap/api/mapcore/util/if;
.source "OfflineMapDownloadTask.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/bh$a;


# instance fields
.field private a:Lcom/amap/api/mapcore/util/bh;

.field private b:Lcom/amap/api/mapcore/util/bj;

.field private c:Lcom/amap/api/mapcore/util/bl;

.field private e:Landroid/content/Context;

.field private f:Landroid/os/Bundle;

.field private g:Lcom/amap/api/maps/AMap;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/bl;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/if;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/as;->f:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/as;->h:Z

    iput-object p1, p0, Lcom/amap/api/mapcore/util/as;->c:Lcom/amap/api/mapcore/util/bl;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/as;->e:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore/util/bl;Landroid/content/Context;Lcom/amap/api/maps/AMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/as;-><init>(Lcom/amap/api/mapcore/util/bl;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/amap/api/mapcore/util/as;->g:Lcom/amap/api/maps/AMap;

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/as;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ee;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/as;->c:Lcom/amap/api/mapcore/util/bl;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/bl;->A()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/amap/api/mapcore/util/bi;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/as;->c:Lcom/amap/api/mapcore/util/bl;

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/bl;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/as;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/as;->c:Lcom/amap/api/mapcore/util/bl;

    invoke-interface {v3}, Lcom/amap/api/mapcore/util/bl;->z()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/bi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/amap/api/mapcore/util/bh;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/as;->c:Lcom/amap/api/mapcore/util/bl;

    invoke-interface {v2}, Lcom/amap/api/mapcore/util/bl;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/as;->e:Landroid/content/Context;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/as;->c:Lcom/amap/api/mapcore/util/bl;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/amap/api/mapcore/util/bh;-><init>(Lcom/amap/api/mapcore/util/bi;Ljava/lang/String;Landroid/content/Context;Lcom/amap/api/mapcore/util/bm;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/as;->a:Lcom/amap/api/mapcore/util/bh;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/as;->a:Lcom/amap/api/mapcore/util/bh;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/bh;->a(Lcom/amap/api/mapcore/util/bh$a;)V

    new-instance v0, Lcom/amap/api/mapcore/util/bj;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/as;->c:Lcom/amap/api/mapcore/util/bl;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/as;->c:Lcom/amap/api/mapcore/util/bl;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/bj;-><init>(Lcom/amap/api/mapcore/util/bg;Lcom/amap/api/mapcore/util/bf;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/as;->b:Lcom/amap/api/mapcore/util/bj;

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/as;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/as;->a:Lcom/amap/api/mapcore/util/bh;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bh;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/as;->c:Lcom/amap/api/mapcore/util/bl;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/bl;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/as;->c:Lcom/amap/api/mapcore/util/bl;

    sget-object v1, Lcom/amap/api/mapcore/util/bm$a;->c:Lcom/amap/api/mapcore/util/bm$a;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/bl;->a(Lcom/amap/api/mapcore/util/bm$a;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/as;->g()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/as;->h:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/as;->a:Lcom/amap/api/mapcore/util/bh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/as;->a:Lcom/amap/api/mapcore/util/bh;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bh;->c()V

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/as;->b:Lcom/amap/api/mapcore/util/bj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/as;->b:Lcom/amap/api/mapcore/util/bj;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bj;->a()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/as;->e()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/mapcore/util/as;->g:Lcom/amap/api/maps/AMap;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/as;->f:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/as;->f:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/as;->f:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/as;->b:Lcom/amap/api/mapcore/util/bj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/as;->b:Lcom/amap/api/mapcore/util/bj;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bj;->b()V

    :cond_0
    return-void
.end method
