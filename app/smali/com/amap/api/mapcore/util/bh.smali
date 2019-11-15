.class public Lcom/amap/api/mapcore/util/bh;
.super Ljava/lang/Object;
.source "NetFileFetch.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/hr$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/bh$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore/util/bi;

.field b:J

.field c:J

.field d:J

.field e:Z

.field f:Lcom/amap/api/mapcore/util/bc;

.field g:J

.field h:Lcom/amap/api/mapcore/util/bh$a;

.field private i:Landroid/content/Context;

.field private j:Lcom/amap/api/mapcore/util/bm;

.field private k:Ljava/lang/String;

.field private l:Lcom/amap/api/mapcore/util/hr;

.field private m:Lcom/amap/api/mapcore/util/bd;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/bi;Ljava/lang/String;Landroid/content/Context;Lcom/amap/api/mapcore/util/bm;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bh;->a:Lcom/amap/api/mapcore/util/bi;

    iput-wide v2, p0, Lcom/amap/api/mapcore/util/bh;->b:J

    iput-wide v2, p0, Lcom/amap/api/mapcore/util/bh;->c:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/bh;->e:Z

    iput-wide v2, p0, Lcom/amap/api/mapcore/util/bh;->g:J

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bc;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bh;->f:Lcom/amap/api/mapcore/util/bc;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/bh;->a:Lcom/amap/api/mapcore/util/bi;

    iput-object p3, p0, Lcom/amap/api/mapcore/util/bh;->i:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/bh;->k:Ljava/lang/String;

    iput-object p4, p0, Lcom/amap/api/mapcore/util/bh;->j:Lcom/amap/api/mapcore/util/bm;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bh;->g()V

    return-void
.end method

.method private a(I)V
    .locals 0

    return-void
.end method

.method private a(J)V
    .locals 5

    iget-wide v0, p0, Lcom/amap/api/mapcore/util/bh;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->j:Lcom/amap/api/mapcore/util/bm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->j:Lcom/amap/api/mapcore/util/bm;

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/bh;->d:J

    invoke-interface {v0, v2, v3, p1, p2}, Lcom/amap/api/mapcore/util/bm;->a(JJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/bh;->g:J

    :cond_0
    return-void
.end method

.method private f()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v2, 0x1b7740

    new-instance v1, Lcom/amap/api/mapcore/util/bn;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->k:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore/util/bn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/bn;->a(I)V

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/bn;->b(I)V

    new-instance v0, Lcom/amap/api/mapcore/util/hr;

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/bh;->b:J

    iget-wide v4, p0, Lcom/amap/api/mapcore/util/bh;->c:J

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/hr;-><init>(Lcom/amap/api/mapcore/util/hv;JJ)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bh;->l:Lcom/amap/api/mapcore/util/hr;

    new-instance v0, Lcom/amap/api/mapcore/util/bd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/bh;->a:Lcom/amap/api/mapcore/util/bi;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/bi;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/bh;->a:Lcom/amap/api/mapcore/util/bi;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/bi;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/bh;->b:J

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/bd;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/bh;->m:Lcom/amap/api/mapcore/util/bd;

    return-void
.end method

.method private g()V
    .locals 4

    const-wide/16 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bh;->a:Lcom/amap/api/mapcore/util/bi;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/bi;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bh;->a:Lcom/amap/api/mapcore/util/bi;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/bi;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/bh;->e:Z

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/bh;->b:J

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/bh;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/bh;->d:J

    iget-wide v0, p0, Lcom/amap/api/mapcore/util/bh;->d:J

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/bh;->c:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->j:Lcom/amap/api/mapcore/util/bm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->j:Lcom/amap/api/mapcore/util/bm;

    sget-object v1, Lcom/amap/api/mapcore/util/bm$a;->c:Lcom/amap/api/mapcore/util/bm$a;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/bm;->a(Lcom/amap/api/mapcore/util/bm$a;)V

    goto :goto_0

    :cond_1
    iput-wide v2, p0, Lcom/amap/api/mapcore/util/bh;->b:J

    iput-wide v2, p0, Lcom/amap/api/mapcore/util/bh;->c:J

    goto :goto_0
.end method

.method private h()Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bh;->a:Lcom/amap/api/mapcore/util/bi;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/bi;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bh;->a:Lcom/amap/api/mapcore/util/bi;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/bi;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private i()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    sget v0, Lcom/amap/api/mapcore/util/fq;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x3

    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->i:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore/util/ee;->e()Lcom/amap/api/mapcore/util/fx;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/fq;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/fx;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "SiteFileFetch"

    const-string v3, "authOffLineDownLoad"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private j()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/bh;->a:Lcom/amap/api/mapcore/util/bi;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/bh;->g:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bh;->k()V

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/bh;->g:J

    iget-wide v0, p0, Lcom/amap/api/mapcore/util/bh;->b:J

    invoke-direct {p0, v0, v1}, Lcom/amap/api/mapcore/util/bh;->a(J)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 10

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bh;->f:Lcom/amap/api/mapcore/util/bc;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->a:Lcom/amap/api/mapcore/util/bi;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bi;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->a:Lcom/amap/api/mapcore/util/bi;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bi;->d()I

    move-result v3

    iget-wide v4, p0, Lcom/amap/api/mapcore/util/bh;->d:J

    iget-wide v6, p0, Lcom/amap/api/mapcore/util/bh;->b:J

    iget-wide v8, p0, Lcom/amap/api/mapcore/util/bh;->c:J

    invoke-virtual/range {v1 .. v9}, Lcom/amap/api/mapcore/util/bc;->a(Ljava/lang/String;IJJJ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ee;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bh;->i()V

    sget v0, Lcom/amap/api/mapcore/util/fq;->a:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->j:Lcom/amap/api/mapcore/util/bm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->j:Lcom/amap/api/mapcore/util/bm;

    sget-object v1, Lcom/amap/api/mapcore/util/bm$a;->a:Lcom/amap/api/mapcore/util/bm$a;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/bm;->a(Lcom/amap/api/mapcore/util/bm$a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->j:Lcom/amap/api/mapcore/util/bm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->j:Lcom/amap/api/mapcore/util/bm;

    sget-object v1, Lcom/amap/api/mapcore/util/bm$a;->b:Lcom/amap/api/mapcore/util/bm$a;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/bm;->a(Lcom/amap/api/mapcore/util/bm$a;)V
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SiteFileFetch"

    const-string v2, "download"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->j:Lcom/amap/api/mapcore/util/bm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->j:Lcom/amap/api/mapcore/util/bm;

    sget-object v1, Lcom/amap/api/mapcore/util/bm$a;->a:Lcom/amap/api/mapcore/util/bm$a;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/bm;->a(Lcom/amap/api/mapcore/util/bm$a;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bh;->h()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/bh;->e:Z

    :cond_3
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/bh;->e:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/bh;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/bh;->d:J

    iget-wide v0, p0, Lcom/amap/api/mapcore/util/bh;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const-string v0, "File Length is not known!"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bk;->a(Ljava/lang/String;)V

    :goto_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/bh;->b:J

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->j:Lcom/amap/api/mapcore/util/bm;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->j:Lcom/amap/api/mapcore/util/bm;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/bm;->n()V

    :cond_5
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/bh;->b:J

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/bh;->c:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/bh;->e()V
    :try_end_1
    .catch Lcom/amap/api/maps/AMapException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->j:Lcom/amap/api/mapcore/util/bm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->j:Lcom/amap/api/mapcore/util/bm;

    sget-object v1, Lcom/amap/api/mapcore/util/bm$a;->c:Lcom/amap/api/mapcore/util/bm$a;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/bm;->a(Lcom/amap/api/mapcore/util/bm$a;)V

    goto :goto_0

    :cond_6
    :try_start_2
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/bh;->d:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const-string v0, "File is not access!"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/bk;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/bh;->d:J

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/bh;->c:J

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bh;->f()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->l:Lcom/amap/api/mapcore/util/hr;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/hr;->a(Lcom/amap/api/mapcore/util/hr$a;)V
    :try_end_2
    .catch Lcom/amap/api/maps/AMapException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/util/bh$a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/bh;->h:Lcom/amap/api/mapcore/util/bh$a;

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->j:Lcom/amap/api/mapcore/util/bm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->j:Lcom/amap/api/mapcore/util/bm;

    sget-object v1, Lcom/amap/api/mapcore/util/bm$a;->b:Lcom/amap/api/mapcore/util/bm$a;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/bm;->a(Lcom/amap/api/mapcore/util/bm$a;)V

    :cond_0
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->m:Lcom/amap/api/mapcore/util/bd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->m:Lcom/amap/api/mapcore/util/bd;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bd;->a()V

    goto :goto_0
.end method

.method public a([BJ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->m:Lcom/amap/api/mapcore/util/bd;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/bd;->a([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-wide p2, p0, Lcom/amap/api/mapcore/util/bh;->b:J

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bh;->j()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const-string v1, "fileAccessI"

    const-string v2, "fileAccessI.write(byte[] data)"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->j:Lcom/amap/api/mapcore/util/bm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->j:Lcom/amap/api/mapcore/util/bm;

    sget-object v1, Lcom/amap/api/mapcore/util/bm$a;->c:Lcom/amap/api/mapcore/util/bm$a;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/bm;->a(Lcom/amap/api/mapcore/util/bm$a;)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->l:Lcom/amap/api/mapcore/util/hr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->l:Lcom/amap/api/mapcore/util/hr;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hr;->a()V

    goto :goto_0
.end method

.method public b()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/bh;->a:Lcom/amap/api/mapcore/util/bi;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/bi;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    sget-object v3, Lcom/amap/api/mapcore/util/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0x190

    if-lt v1, v3, :cond_0

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/bh;->a(I)V

    const-wide/16 v0, -0x2

    :goto_0
    return-wide v0

    :cond_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "Content-Length"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    int-to-long v0, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->l:Lcom/amap/api/mapcore/util/hr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->l:Lcom/amap/api/mapcore/util/hr;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/hr;->a()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->j:Lcom/amap/api/mapcore/util/bm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->j:Lcom/amap/api/mapcore/util/bm;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/bm;->p()V

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bh;->k()V

    return-void
.end method

.method public e()V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/bh;->j()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->j:Lcom/amap/api/mapcore/util/bm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->j:Lcom/amap/api/mapcore/util/bm;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/bm;->o()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->m:Lcom/amap/api/mapcore/util/bd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->m:Lcom/amap/api/mapcore/util/bd;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/bd;->a()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->h:Lcom/amap/api/mapcore/util/bh$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/bh;->h:Lcom/amap/api/mapcore/util/bh$a;

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/bh$a;->d()V

    :cond_2
    return-void
.end method
