.class public Lcom/liulishuo/filedownloader/services/c;
.super Ljava/lang/Object;
.source "DownloadMgrInitialParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/services/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/liulishuo/filedownloader/services/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    return-void
.end method

.method private g()Lcom/liulishuo/filedownloader/e/c$d;
    .locals 1

    new-instance v0, Lcom/liulishuo/filedownloader/services/b;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/services/b;-><init>()V

    return-object v0
.end method

.method private h()I
    .locals 1

    invoke-static {}, Lcom/liulishuo/filedownloader/e/e;->a()Lcom/liulishuo/filedownloader/e/e;

    move-result-object v0

    iget v0, v0, Lcom/liulishuo/filedownloader/e/e;->e:I

    return v0
.end method

.method private i()Lcom/liulishuo/filedownloader/b/a;
    .locals 1

    new-instance v0, Lcom/liulishuo/filedownloader/b/c;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/b/c;-><init>()V

    return-object v0
.end method

.method private j()Lcom/liulishuo/filedownloader/e/c$e;
    .locals 1

    new-instance v0, Lcom/liulishuo/filedownloader/d/b$a;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/d/b$a;-><init>()V

    return-object v0
.end method

.method private k()Lcom/liulishuo/filedownloader/e/c$b;
    .locals 1

    new-instance v0, Lcom/liulishuo/filedownloader/a/c$b;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/a/c$b;-><init>()V

    return-object v0
.end method

.method private l()Lcom/liulishuo/filedownloader/e/c$a;
    .locals 1

    new-instance v0, Lcom/liulishuo/filedownloader/a/a;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/a/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 4

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->h()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/c$a;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "initial FileDownloader manager with the customize maxNetworkThreadCount: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/e/e;->a(I)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->h()I

    move-result v0

    goto :goto_0
.end method

.method public b()Lcom/liulishuo/filedownloader/b/a;
    .locals 4

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/c$a;->a:Lcom/liulishuo/filedownloader/e/c$c;

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->i()Lcom/liulishuo/filedownloader/b/a;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/c$a;->a:Lcom/liulishuo/filedownloader/e/c$c;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/e/c$c;->a()Lcom/liulishuo/filedownloader/b/a;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-boolean v1, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "initial FileDownloader manager with the customize database: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->i()Lcom/liulishuo/filedownloader/b/a;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Lcom/liulishuo/filedownloader/e/c$e;
    .locals 4

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->j()Lcom/liulishuo/filedownloader/e/c$e;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/c$a;->c:Lcom/liulishuo/filedownloader/e/c$e;

    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "initial FileDownloader manager with the customize output stream: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->j()Lcom/liulishuo/filedownloader/e/c$e;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Lcom/liulishuo/filedownloader/e/c$b;
    .locals 4

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->k()Lcom/liulishuo/filedownloader/e/c$b;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/c$a;->d:Lcom/liulishuo/filedownloader/e/c$b;

    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "initial FileDownloader manager with the customize connection creator: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->k()Lcom/liulishuo/filedownloader/e/c$b;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Lcom/liulishuo/filedownloader/e/c$a;
    .locals 4

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->l()Lcom/liulishuo/filedownloader/e/c$a;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/c$a;->e:Lcom/liulishuo/filedownloader/e/c$a;

    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "initial FileDownloader manager with the customize connection count adapter: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->l()Lcom/liulishuo/filedownloader/e/c$a;

    move-result-object v0

    goto :goto_0
.end method

.method public f()Lcom/liulishuo/filedownloader/e/c$d;
    .locals 4

    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->g()Lcom/liulishuo/filedownloader/e/c$d;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/services/c;->a:Lcom/liulishuo/filedownloader/services/c$a;

    iget-object v0, v0, Lcom/liulishuo/filedownloader/services/c$a;->f:Lcom/liulishuo/filedownloader/e/c$d;

    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "initial FileDownloader manager with the customize id generator: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/services/c;->g()Lcom/liulishuo/filedownloader/e/c$d;

    move-result-object v0

    goto :goto_0
.end method
