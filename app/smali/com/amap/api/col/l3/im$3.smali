.class final Lcom/amap/api/col/l3/im$3;
.super Ljava/lang/Object;
.source "StatisticsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/im;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/im$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3/im;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3/in;->a(Ljava/lang/ref/WeakReference;)Lcom/amap/api/col/l3/ig;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/amap/api/col/l3/im$3;->a:Landroid/content/Context;

    sget-object v3, Lcom/amap/api/col/l3/gt;->g:Ljava/lang/String;

    const/16 v4, 0x3e8

    const v5, 0x4b000

    const-string v6, "2"

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lcom/amap/api/col/l3/in;->a(Landroid/content/Context;Lcom/amap/api/col/l3/ig;Ljava/lang/String;IILjava/lang/String;)V

    .line 3
    iget-object v1, v0, Lcom/amap/api/col/l3/ig;->g:Lcom/amap/api/col/l3/iu;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/amap/api/col/l3/io;

    new-instance v2, Lcom/amap/api/col/l3/is;

    iget-object v3, p0, Lcom/amap/api/col/l3/im$3;->a:Landroid/content/Context;

    new-instance v4, Lcom/amap/api/col/l3/ip;

    new-instance v5, Lcom/amap/api/col/l3/it;

    new-instance v6, Lcom/amap/api/col/l3/iv;

    invoke-direct {v6}, Lcom/amap/api/col/l3/iv;-><init>()V

    invoke-direct {v5, v6}, Lcom/amap/api/col/l3/it;-><init>(Lcom/amap/api/col/l3/iu;)V

    invoke-direct {v4, v5}, Lcom/amap/api/col/l3/ip;-><init>(Lcom/amap/api/col/l3/iu;)V

    invoke-direct {v2, v3, v4}, Lcom/amap/api/col/l3/is;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/iu;)V

    invoke-direct {v1, v2}, Lcom/amap/api/col/l3/io;-><init>(Lcom/amap/api/col/l3/iu;)V

    iput-object v1, v0, Lcom/amap/api/col/l3/ig;->g:Lcom/amap/api/col/l3/iu;

    :cond_0
    const v1, 0x36ee80

    .line 5
    iput v1, v0, Lcom/amap/api/col/l3/ig;->h:I

    .line 6
    iget-object v1, v0, Lcom/amap/api/col/l3/ig;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "cKey"

    .line 7
    iput-object v1, v0, Lcom/amap/api/col/l3/ig;->i:Ljava/lang/String;

    .line 8
    :cond_1
    iget-object v1, v0, Lcom/amap/api/col/l3/ig;->f:Lcom/amap/api/col/l3/ja;

    if-nez v1, :cond_2

    .line 9
    new-instance v1, Lcom/amap/api/col/l3/iz;

    iget-object v2, p0, Lcom/amap/api/col/l3/im$3;->a:Landroid/content/Context;

    iget v3, v0, Lcom/amap/api/col/l3/ig;->h:I

    iget-object v4, v0, Lcom/amap/api/col/l3/ig;->i:Ljava/lang/String;

    new-instance v5, Lcom/amap/api/col/l3/iw;

    const/16 v6, 0x1e

    iget-object v7, v0, Lcom/amap/api/col/l3/ig;->a:Ljava/lang/String;

    new-instance v8, Lcom/amap/api/col/l3/jb;

    invoke-direct {v8, v2}, Lcom/amap/api/col/l3/jb;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v6, v7, v8}, Lcom/amap/api/col/l3/iw;-><init>(ILjava/lang/String;Lcom/amap/api/col/l3/ja;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/col/l3/iz;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/amap/api/col/l3/ja;)V

    iput-object v1, v0, Lcom/amap/api/col/l3/ig;->f:Lcom/amap/api/col/l3/ja;

    .line 10
    :cond_2
    invoke-static {v0}, Lcom/amap/api/col/l3/ih;->a(Lcom/amap/api/col/l3/ig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "stm"

    const-string v2, "usd"

    .line 11
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
