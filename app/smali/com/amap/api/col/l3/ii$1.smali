.class final Lcom/amap/api/col/l3/ii$1;
.super Ljava/lang/Object;
.source "MarkInfoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/ii;->a(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/amap/api/col/l3/ii$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    const-class v0, Lcom/amap/api/col/l3/ii;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3/ii;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v1}, Lcom/amap/api/col/l3/in;->a(Ljava/lang/ref/WeakReference;)Lcom/amap/api/col/l3/ig;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/amap/api/col/l3/ii$1;->a:Landroid/content/Context;

    sget-object v4, Lcom/amap/api/col/l3/gt;->i:Ljava/lang/String;

    const/16 v5, 0x32

    const v6, 0x19000

    const-string v7, "10"

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lcom/amap/api/col/l3/in;->a(Landroid/content/Context;Lcom/amap/api/col/l3/ig;Ljava/lang/String;IILjava/lang/String;)V

    .line 4
    iget-object v2, v1, Lcom/amap/api/col/l3/ig;->g:Lcom/amap/api/col/l3/iu;

    if-nez v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/amap/api/col/l3/ii$1;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/col/l3/ii;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v3, Lcom/amap/api/col/l3/ir;

    new-instance v10, Lcom/amap/api/col/l3/iq;

    iget-object v5, p0, Lcom/amap/api/col/l3/ii$1;->a:Landroid/content/Context;

    new-instance v6, Lcom/amap/api/col/l3/iv;

    invoke-direct {v6}, Lcom/amap/api/col/l3/iv;-><init>()V

    new-instance v7, Lcom/amap/api/col/l3/gl;

    new-instance v4, Lcom/amap/api/col/l3/gp;

    new-instance v8, Lcom/amap/api/col/l3/gn;

    invoke-direct {v8}, Lcom/amap/api/col/l3/gn;-><init>()V

    invoke-direct {v4, v8}, Lcom/amap/api/col/l3/gp;-><init>(Lcom/amap/api/col/l3/gm;)V

    invoke-direct {v7, v4}, Lcom/amap/api/col/l3/gl;-><init>(Lcom/amap/api/col/l3/gm;)V

    const-string v8, "WImFwcG5hbWUiOiIlcyIsInBrZyI6IiVzIiwiZGl1IjoiJXMi"

    const/4 v4, 0x3

    new-array v9, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v11, p0, Lcom/amap/api/col/l3/ii$1;->a:Landroid/content/Context;

    .line 7
    invoke-static {v11}, Lcom/amap/api/col/l3/fw;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v4

    const/4 v4, 0x1

    iget-object v11, p0, Lcom/amap/api/col/l3/ii$1;->a:Landroid/content/Context;

    invoke-static {v11}, Lcom/amap/api/col/l3/fw;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v4

    const/4 v4, 0x2

    aput-object v2, v9, v4

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/amap/api/col/l3/iq;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/iu;Lcom/amap/api/col/l3/gm;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v3, v10}, Lcom/amap/api/col/l3/ir;-><init>(Lcom/amap/api/col/l3/iu;)V

    iput-object v3, v1, Lcom/amap/api/col/l3/ig;->g:Lcom/amap/api/col/l3/iu;

    :cond_0
    const v2, 0xdbba00

    .line 8
    iput v2, v1, Lcom/amap/api/col/l3/ig;->h:I

    .line 9
    iget-object v2, v1, Lcom/amap/api/col/l3/ig;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "eKey"

    .line 10
    iput-object v2, v1, Lcom/amap/api/col/l3/ig;->i:Ljava/lang/String;

    .line 11
    :cond_1
    iget-object v2, v1, Lcom/amap/api/col/l3/ig;->f:Lcom/amap/api/col/l3/ja;

    if-nez v2, :cond_2

    .line 12
    new-instance v2, Lcom/amap/api/col/l3/iz;

    iget-object v3, p0, Lcom/amap/api/col/l3/ii$1;->a:Landroid/content/Context;

    iget v4, v1, Lcom/amap/api/col/l3/ig;->h:I

    iget-object v5, v1, Lcom/amap/api/col/l3/ig;->i:Ljava/lang/String;

    new-instance v6, Lcom/amap/api/col/l3/iw;

    const/4 v7, 0x5

    iget-object v8, v1, Lcom/amap/api/col/l3/ig;->a:Ljava/lang/String;

    new-instance v9, Lcom/amap/api/col/l3/jb;

    invoke-direct {v9, v3}, Lcom/amap/api/col/l3/jb;-><init>(Landroid/content/Context;)V

    invoke-direct {v6, v7, v8, v9}, Lcom/amap/api/col/l3/iw;-><init>(ILjava/lang/String;Lcom/amap/api/col/l3/ja;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/col/l3/iz;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/amap/api/col/l3/ja;)V

    iput-object v2, v1, Lcom/amap/api/col/l3/ig;->f:Lcom/amap/api/col/l3/ja;

    .line 13
    :cond_2
    invoke-static {v1}, Lcom/amap/api/col/l3/ih;->a(Lcom/amap/api/col/l3/ig;)V

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
