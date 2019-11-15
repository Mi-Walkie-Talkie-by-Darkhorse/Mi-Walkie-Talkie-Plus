.class final Lcom/amap/api/col/sl/dy$1;
.super Ljava/lang/Object;
.source "MarkInfoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/sl/dy;->a(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/amap/api/col/sl/dy$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const-class v8, Lcom/amap/api/col/sl/dy;

    monitor-enter v8

    :try_start_0
    sget-object v0, Lcom/amap/api/col/sl/dy;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/amap/api/col/sl/ed;->a(Ljava/lang/ref/WeakReference;)Lcom/amap/api/col/sl/dw;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/col/sl/dy$1;->a:Landroid/content/Context;

    sget-object v2, Lcom/amap/api/col/sl/ck;->j:Ljava/lang/String;

    const/16 v3, 0x32

    const v4, 0x19000

    const-string v5, "10"

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/sl/ed;->a(Landroid/content/Context;Lcom/amap/api/col/sl/dw;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, v1, Lcom/amap/api/col/sl/dw;->g:Lcom/amap/api/col/sl/ek;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/dy$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/dy;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lcom/amap/api/col/sl/eh;

    new-instance v2, Lcom/amap/api/col/sl/eg;

    iget-object v3, p0, Lcom/amap/api/col/sl/dy$1;->a:Landroid/content/Context;

    new-instance v4, Lcom/amap/api/col/sl/el;

    invoke-direct {v4}, Lcom/amap/api/col/sl/el;-><init>()V

    new-instance v5, Lcom/amap/api/col/sl/cc;

    new-instance v6, Lcom/amap/api/col/sl/cg;

    new-instance v7, Lcom/amap/api/col/sl/ce;

    invoke-direct {v7}, Lcom/amap/api/col/sl/ce;-><init>()V

    invoke-direct {v6, v7}, Lcom/amap/api/col/sl/cg;-><init>(Lcom/amap/api/col/sl/cd;)V

    invoke-direct {v5, v6}, Lcom/amap/api/col/sl/cc;-><init>(Lcom/amap/api/col/sl/cd;)V

    const-string v6, "WImFwcG5hbWUiOiIlcyIsInBrZyI6IiVzIiwiZGl1IjoiJXMi"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/amap/api/col/sl/dy$1;->a:Landroid/content/Context;

    invoke-static {v11}, Lcom/amap/api/col/sl/bp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/amap/api/col/sl/dy$1;->a:Landroid/content/Context;

    invoke-static {v11}, Lcom/amap/api/col/sl/bp;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x2

    aput-object v0, v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/col/sl/eg;-><init>(Landroid/content/Context;Lcom/amap/api/col/sl/ek;Lcom/amap/api/col/sl/cd;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v9, v2}, Lcom/amap/api/col/sl/eh;-><init>(Lcom/amap/api/col/sl/ek;)V

    iput-object v9, v1, Lcom/amap/api/col/sl/dw;->g:Lcom/amap/api/col/sl/ek;

    :cond_0
    const v0, 0xdbba00

    iput v0, v1, Lcom/amap/api/col/sl/dw;->h:I

    iget-object v0, v1, Lcom/amap/api/col/sl/dw;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/dy$1;->a:Landroid/content/Context;

    const-string v2, "e.log"

    invoke-static {v0, v2}, Lcom/amap/api/col/sl/ck;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/sl/dw;->i:Ljava/lang/String;

    :cond_1
    iget-object v0, v1, Lcom/amap/api/col/sl/dw;->f:Lcom/amap/api/col/sl/ep;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/col/sl/eo;

    iget v2, v1, Lcom/amap/api/col/sl/dw;->h:I

    iget-object v3, v1, Lcom/amap/api/col/sl/dw;->i:Ljava/lang/String;

    new-instance v4, Lcom/amap/api/col/sl/em;

    const/4 v5, 0x5

    iget-object v6, v1, Lcom/amap/api/col/sl/dw;->a:Ljava/lang/String;

    new-instance v7, Lcom/amap/api/col/sl/eq;

    iget-object v9, p0, Lcom/amap/api/col/sl/dy$1;->a:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-direct {v7, v9, v10}, Lcom/amap/api/col/sl/eq;-><init>(Landroid/content/Context;Z)V

    invoke-direct {v4, v5, v6, v7}, Lcom/amap/api/col/sl/em;-><init>(ILjava/lang/String;Lcom/amap/api/col/sl/ep;)V

    invoke-direct {v0, v2, v3, v4}, Lcom/amap/api/col/sl/eo;-><init>(ILjava/lang/String;Lcom/amap/api/col/sl/ep;)V

    iput-object v0, v1, Lcom/amap/api/col/sl/dw;->f:Lcom/amap/api/col/sl/ep;

    :cond_2
    invoke-static {v1}, Lcom/amap/api/col/sl/dx;->a(Lcom/amap/api/col/sl/dw;)V

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method
