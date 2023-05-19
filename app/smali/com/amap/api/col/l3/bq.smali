.class public final Lcom/amap/api/col/l3/bq;
.super Ljava/lang/Object;
.source "NetFileFetch.java"

# interfaces
.implements Lcom/amap/api/col/l3/hz$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/bq$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/col/l3/br;

.field b:J

.field c:J

.field d:J

.field e:Z

.field f:Lcom/amap/api/col/l3/bl;

.field g:J

.field h:Lcom/amap/api/col/l3/bq$a;

.field private i:Landroid/content/Context;

.field private j:Lcom/amap/api/col/l3/bv;

.field private k:Ljava/lang/String;

.field private l:Lcom/amap/api/col/l3/hz;

.field private m:Lcom/amap/api/col/l3/bm;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3/br;Ljava/lang/String;Landroid/content/Context;Lcom/amap/api/col/l3/bv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/amap/api/col/l3/bq;->a:Lcom/amap/api/col/l3/br;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/amap/api/col/l3/bq;->b:J

    .line 4
    iput-wide v0, p0, Lcom/amap/api/col/l3/bq;->c:J

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lcom/amap/api/col/l3/bq;->e:Z

    .line 6
    iput-wide v0, p0, Lcom/amap/api/col/l3/bq;->g:J

    .line 7
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 8
    invoke-static {v2}, Lcom/amap/api/col/l3/bl;->a(Landroid/content/Context;)Lcom/amap/api/col/l3/bl;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/l3/bq;->f:Lcom/amap/api/col/l3/bl;

    .line 9
    iput-object p1, p0, Lcom/amap/api/col/l3/bq;->a:Lcom/amap/api/col/l3/br;

    .line 10
    iput-object p3, p0, Lcom/amap/api/col/l3/bq;->i:Landroid/content/Context;

    .line 11
    iput-object p2, p0, Lcom/amap/api/col/l3/bq;->k:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/amap/api/col/l3/bq;->j:Lcom/amap/api/col/l3/bv;

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/amap/api/col/l3/bq;->a:Lcom/amap/api/col/l3/br;

    invoke-virtual {p2}, Lcom/amap/api/col/l3/br;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/amap/api/col/l3/bq;->a:Lcom/amap/api/col/l3/br;

    invoke-virtual {p2}, Lcom/amap/api/col/l3/br;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/l3/bq;->e:Z

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amap/api/col/l3/bq;->b:J

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/bq;->e()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amap/api/col/l3/bq;->d:J

    iput-wide p1, p0, Lcom/amap/api/col/l3/bq;->c:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    iget-object p1, p0, Lcom/amap/api/col/l3/bq;->j:Lcom/amap/api/col/l3/bv;

    if-eqz p1, :cond_0

    sget-object p2, Lcom/amap/api/col/l3/bv$a;->c:Lcom/amap/api/col/l3/bv$a;

    invoke-interface {p1, p2}, Lcom/amap/api/col/l3/bv;->a(Lcom/amap/api/col/l3/bv$a;)V

    :cond_0
    return-void

    :cond_1
    iput-wide v0, p0, Lcom/amap/api/col/l3/bq;->b:J

    iput-wide v0, p0, Lcom/amap/api/col/l3/bq;->c:J

    return-void
.end method

.method private e()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/amap/api/col/l3/bq;->a:Lcom/amap/api/col/l3/br;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/br;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 3
    sget-object v1, Lcom/amap/api/col/l3/p;->c:Ljava/lang/String;

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_0

    const-wide/16 v0, -0x2

    return-wide v0

    :cond_0
    const/4 v1, 0x1

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "Content-Length"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_1
    int-to-long v0, v0

    return-wide v0
.end method

.method private f()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/amap/api/col/l3/bq;->a:Lcom/amap/api/col/l3/br;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/amap/api/col/l3/bq;->g:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/amap/api/col/l3/bq;->g()V

    .line 4
    iput-wide v0, p0, Lcom/amap/api/col/l3/bq;->g:J

    .line 5
    iget-wide v0, p0, Lcom/amap/api/col/l3/bq;->b:J

    iget-wide v2, p0, Lcom/amap/api/col/l3/bq;->d:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    iget-object v4, p0, Lcom/amap/api/col/l3/bq;->j:Lcom/amap/api/col/l3/bv;

    if-eqz v4, :cond_0

    invoke-interface {v4, v2, v3, v0, v1}, Lcom/amap/api/col/l3/bv;->a(JJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/l3/bq;->g:J

    :cond_0
    return-void
.end method

.method private g()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/bq;->f:Lcom/amap/api/col/l3/bl;

    iget-object v1, p0, Lcom/amap/api/col/l3/bq;->a:Lcom/amap/api/col/l3/br;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/br;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/l3/bq;->a:Lcom/amap/api/col/l3/br;

    .line 2
    invoke-virtual {v2}, Lcom/amap/api/col/l3/br;->d()I

    move-result v2

    iget-wide v3, p0, Lcom/amap/api/col/l3/bq;->d:J

    iget-wide v5, p0, Lcom/amap/api/col/l3/bq;->b:J

    iget-wide v7, p0, Lcom/amap/api/col/l3/bq;->c:J

    .line 3
    invoke-virtual/range {v0 .. v8}, Lcom/amap/api/col/l3/bl;->a(Ljava/lang/String;IJJJ)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    const-string v0, "SiteFileFetch"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/bq;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/l3/em;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2
    sget v1, Lcom/amap/api/col/l3/fy;->a:I
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    :try_start_1
    iget-object v4, p0, Lcom/amap/api/col/l3/bq;->i:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3/em;->f()Lcom/amap/api/col/l3/gh;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amap/api/col/l3/fy;->a(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_2
    const-string v5, "authOffLineDownLoad"

    invoke-static {v4, v0, v5}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    :goto_1
    sget v1, Lcom/amap/api/col/l3/fy;->a:I

    if-eq v1, v3, :cond_3

    .line 4
    iget-object v1, p0, Lcom/amap/api/col/l3/bq;->j:Lcom/amap/api/col/l3/bv;

    if-eqz v1, :cond_2

    .line 5
    sget-object v2, Lcom/amap/api/col/l3/bv$a;->a:Lcom/amap/api/col/l3/bv$a;

    invoke-interface {v1, v2}, Lcom/amap/api/col/l3/bv;->a(Lcom/amap/api/col/l3/bv$a;)V

    :cond_2
    return-void

    .line 6
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amap/api/col/l3/bq;->a:Lcom/amap/api/col/l3/br;

    invoke-virtual {v4}, Lcom/amap/api/col/l3/br;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/amap/api/col/l3/bq;->a:Lcom/amap/api/col/l3/br;

    invoke-virtual {v5}, Lcom/amap/api/col/l3/br;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    cmp-long v1, v5, v7

    if-gez v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_5

    .line 7
    iput-boolean v3, p0, Lcom/amap/api/col/l3/bq;->e:Z

    .line 8
    :cond_5
    iget-boolean v1, p0, Lcom/amap/api/col/l3/bq;->e:Z

    if-eqz v1, :cond_7

    .line 9
    invoke-direct {p0}, Lcom/amap/api/col/l3/bq;->e()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/amap/api/col/l3/bq;->d:J

    const-wide/16 v5, -0x1

    cmp-long v3, v1, v5

    if-eqz v3, :cond_6

    const-wide/16 v5, -0x2

    cmp-long v3, v1, v5

    if-eqz v3, :cond_6

    .line 10
    iput-wide v1, p0, Lcom/amap/api/col/l3/bq;->c:J

    :cond_6
    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, p0, Lcom/amap/api/col/l3/bq;->b:J

    .line 12
    :cond_7
    iget-object v1, p0, Lcom/amap/api/col/l3/bq;->j:Lcom/amap/api/col/l3/bv;

    if-eqz v1, :cond_8

    .line 13
    invoke-interface {v1}, Lcom/amap/api/col/l3/bv;->m()V

    .line 14
    :cond_8
    iget-wide v1, p0, Lcom/amap/api/col/l3/bq;->b:J

    iget-wide v5, p0, Lcom/amap/api/col/l3/bq;->c:J

    cmp-long v3, v1, v5

    if-ltz v3, :cond_9

    .line 15
    invoke-virtual {p0}, Lcom/amap/api/col/l3/bq;->d()V

    return-void

    .line 16
    :cond_9
    new-instance v6, Lcom/amap/api/col/l3/bw;

    iget-object v1, p0, Lcom/amap/api/col/l3/bq;->k:Ljava/lang/String;

    invoke-direct {v6, v1}, Lcom/amap/api/col/l3/bw;-><init>(Ljava/lang/String;)V

    const v1, 0x1b7740

    invoke-virtual {v6, v1}, Lcom/amap/api/col/l3/ic;->a(I)V

    invoke-virtual {v6, v1}, Lcom/amap/api/col/l3/ic;->b(I)V

    new-instance v1, Lcom/amap/api/col/l3/hz;

    iget-wide v7, p0, Lcom/amap/api/col/l3/bq;->b:J

    iget-wide v9, p0, Lcom/amap/api/col/l3/bq;->c:J

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/amap/api/col/l3/hz;-><init>(Lcom/amap/api/col/l3/ic;JJ)V

    iput-object v1, p0, Lcom/amap/api/col/l3/bq;->l:Lcom/amap/api/col/l3/hz;

    new-instance v1, Lcom/amap/api/col/l3/bm;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amap/api/col/l3/bq;->a:Lcom/amap/api/col/l3/br;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/br;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/api/col/l3/bq;->a:Lcom/amap/api/col/l3/br;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/br;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/amap/api/col/l3/bq;->b:J

    invoke-direct {v1, v2, v3, v4}, Lcom/amap/api/col/l3/bm;-><init>(Ljava/lang/String;J)V

    iput-object v1, p0, Lcom/amap/api/col/l3/bq;->m:Lcom/amap/api/col/l3/bm;

    .line 17
    iget-object v1, p0, Lcom/amap/api/col/l3/bq;->l:Lcom/amap/api/col/l3/hz;

    invoke-virtual {v1, p0}, Lcom/amap/api/col/l3/hz;->a(Lcom/amap/api/col/l3/hz$a;)V

    return-void

    .line 18
    :cond_a
    iget-object v1, p0, Lcom/amap/api/col/l3/bq;->j:Lcom/amap/api/col/l3/bv;

    if-eqz v1, :cond_b

    .line 19
    sget-object v2, Lcom/amap/api/col/l3/bv$a;->b:Lcom/amap/api/col/l3/bv$a;

    invoke-interface {v1, v2}, Lcom/amap/api/col/l3/bv;->a(Lcom/amap/api/col/l3/bv$a;)V
    :try_end_2
    .catch Lcom/amap/api/maps/AMapException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_b
    return-void

    :catch_0
    nop

    .line 20
    iget-object v0, p0, Lcom/amap/api/col/l3/bq;->j:Lcom/amap/api/col/l3/bv;

    if-eqz v0, :cond_c

    .line 21
    sget-object v1, Lcom/amap/api/col/l3/bv$a;->c:Lcom/amap/api/col/l3/bv$a;

    invoke-interface {v0, v1}, Lcom/amap/api/col/l3/bv;->a(Lcom/amap/api/col/l3/bv$a;)V

    :cond_c
    return-void

    :catch_1
    move-exception v1

    const-string v2, "download"

    .line 22
    invoke-static {v1, v0, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/amap/api/col/l3/bq;->j:Lcom/amap/api/col/l3/bv;

    if-eqz v0, :cond_d

    .line 24
    sget-object v1, Lcom/amap/api/col/l3/bv$a;->a:Lcom/amap/api/col/l3/bv$a;

    invoke-interface {v0, v1}, Lcom/amap/api/col/l3/bv;->a(Lcom/amap/api/col/l3/bv$a;)V

    :cond_d
    return-void
.end method

.method public final a(Lcom/amap/api/col/l3/bq$a;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amap/api/col/l3/bq;->h:Lcom/amap/api/col/l3/bq$a;

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/amap/api/col/l3/bq;->j:Lcom/amap/api/col/l3/bv;

    if-eqz v0, :cond_0

    .line 26
    sget-object v1, Lcom/amap/api/col/l3/bv$a;->b:Lcom/amap/api/col/l3/bv$a;

    invoke-interface {v0, v1}, Lcom/amap/api/col/l3/bv;->a(Lcom/amap/api/col/l3/bv$a;)V

    .line 27
    :cond_0
    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_1

    return-void

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/bq;->m:Lcom/amap/api/col/l3/bm;

    if-eqz p1, :cond_2

    .line 29
    invoke-virtual {p1}, Lcom/amap/api/col/l3/bm;->a()V

    :cond_2
    return-void
.end method

.method public final a([BJ)V
    .locals 1

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/bq;->m:Lcom/amap/api/col/l3/bm;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/bm;->a([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    iput-wide p2, p0, Lcom/amap/api/col/l3/bq;->b:J

    .line 32
    invoke-direct {p0}, Lcom/amap/api/col/l3/bq;->f()V

    return-void

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p2, "fileAccessI"

    const-string p3, "fileAccessI.write(byte[] data)"

    .line 34
    invoke-static {p1, p2, p3}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/amap/api/col/l3/bq;->j:Lcom/amap/api/col/l3/bv;

    if-eqz p1, :cond_0

    .line 36
    sget-object p2, Lcom/amap/api/col/l3/bv$a;->c:Lcom/amap/api/col/l3/bv$a;

    invoke-interface {p1, p2}, Lcom/amap/api/col/l3/bv;->a(Lcom/amap/api/col/l3/bv$a;)V

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3/bq;->l:Lcom/amap/api/col/l3/hz;

    if-eqz p1, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/amap/api/col/l3/hz;->a()V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/bq;->l:Lcom/amap/api/col/l3/hz;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/col/l3/hz;->a()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/bq;->j:Lcom/amap/api/col/l3/bv;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/amap/api/col/l3/bv;->o()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/bq;->g()V

    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amap/api/col/l3/bq;->f()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/bq;->j:Lcom/amap/api/col/l3/bv;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/amap/api/col/l3/bv;->n()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/bq;->m:Lcom/amap/api/col/l3/bm;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/amap/api/col/l3/bm;->a()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/bq;->h:Lcom/amap/api/col/l3/bq$a;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Lcom/amap/api/col/l3/bq$a;->d()V

    :cond_2
    return-void
.end method
