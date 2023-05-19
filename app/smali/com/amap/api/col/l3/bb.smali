.class public final Lcom/amap/api/col/l3/bb;
.super Lcom/amap/api/col/l3/jd;
.source "OfflineMapDownloadTask.java"

# interfaces
.implements Lcom/amap/api/col/l3/bq$a;


# instance fields
.field private b:Lcom/amap/api/col/l3/bq;

.field private c:Lcom/amap/api/col/l3/bs;

.field private d:Lcom/amap/api/col/l3/bu;

.field private e:Landroid/content/Context;

.field private f:Landroid/os/Bundle;

.field private g:Lcom/amap/api/maps/AMap;

.field private h:Z


# direct methods
.method private constructor <init>(Lcom/amap/api/col/l3/bu;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amap/api/col/l3/jd;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3/bb;->f:Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/col/l3/bb;->h:Z

    .line 4
    iput-object p1, p0, Lcom/amap/api/col/l3/bb;->d:Lcom/amap/api/col/l3/bu;

    .line 5
    iput-object p2, p0, Lcom/amap/api/col/l3/bb;->e:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/l3/bu;Landroid/content/Context;B)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/l3/bb;-><init>(Lcom/amap/api/col/l3/bu;Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/amap/api/col/l3/bb;->g:Lcom/amap/api/maps/AMap;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/bb;->d:Lcom/amap/api/col/l3/bu;

    invoke-interface {v0}, Lcom/amap/api/col/l3/bu;->t()Z

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/bb;->d:Lcom/amap/api/col/l3/bu;

    invoke-interface {v0}, Lcom/amap/api/col/l3/bu;->v()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3/br;

    iget-object v2, p0, Lcom/amap/api/col/l3/bb;->d:Lcom/amap/api/col/l3/bu;

    invoke-interface {v2}, Lcom/amap/api/col/l3/bu;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/l3/bb;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/amap/api/col/l3/em;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/col/l3/bb;->d:Lcom/amap/api/col/l3/bu;

    invoke-interface {v4}, Lcom/amap/api/col/l3/bu;->u()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/amap/api/col/l3/br;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/col/l3/bq;

    iget-object v2, p0, Lcom/amap/api/col/l3/bb;->d:Lcom/amap/api/col/l3/bu;

    invoke-interface {v2}, Lcom/amap/api/col/l3/bu;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/l3/bb;->e:Landroid/content/Context;

    iget-object v4, p0, Lcom/amap/api/col/l3/bb;->d:Lcom/amap/api/col/l3/bu;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/col/l3/bq;-><init>(Lcom/amap/api/col/l3/br;Ljava/lang/String;Landroid/content/Context;Lcom/amap/api/col/l3/bv;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/bb;->b:Lcom/amap/api/col/l3/bq;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3/bq;->a(Lcom/amap/api/col/l3/bq$a;)V

    new-instance v0, Lcom/amap/api/col/l3/bs;

    iget-object v1, p0, Lcom/amap/api/col/l3/bb;->d:Lcom/amap/api/col/l3/bu;

    invoke-direct {v0, v1, v1}, Lcom/amap/api/col/l3/bs;-><init>(Lcom/amap/api/col/l3/bp;Lcom/amap/api/col/l3/bo;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/bb;->c:Lcom/amap/api/col/l3/bs;

    iget-boolean v0, p0, Lcom/amap/api/col/l3/bb;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/bb;->b:Lcom/amap/api/col/l3/bq;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bq;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/col/l3/bb;->h:Z

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/bb;->b:Lcom/amap/api/col/l3/bq;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/col/l3/bq;->b()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/jd;->e()V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3/bb;->c:Lcom/amap/api/col/l3/bs;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/amap/api/col/l3/bs;->a()V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/amap/api/col/l3/bb;->g:Lcom/amap/api/maps/AMap;

    .line 2
    iget-object v1, p0, Lcom/amap/api/col/l3/bb;->f:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 4
    iput-object v0, p0, Lcom/amap/api/col/l3/bb;->f:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/bb;->c:Lcom/amap/api/col/l3/bs;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/col/l3/bs;->b()V

    :cond_0
    return-void
.end method
