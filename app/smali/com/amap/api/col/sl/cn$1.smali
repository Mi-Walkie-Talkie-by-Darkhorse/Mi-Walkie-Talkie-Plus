.class final Lcom/amap/api/col/sl/cn$1;
.super Ljava/lang/Object;
.source "ErrorLogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/sl/cn;->a(Landroid/content/Context;Lcom/amap/api/col/sl/ep;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amap/api/col/sl/ep;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amap/api/col/sl/ep;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/cn$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/sl/cn$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/col/sl/cn$1;->c:Lcom/amap/api/col/sl/ep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    :try_start_0
    const-class v8, Lcom/amap/api/col/sl/cn;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/amap/api/col/sl/cn;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/ed;->a(Ljava/lang/ref/WeakReference;)Lcom/amap/api/col/sl/dw;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/col/sl/cn$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/sl/cn$1;->b:Ljava/lang/String;

    const/16 v3, 0x3e8

    const/16 v4, 0x5000

    const-string v5, "1"

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/sl/ed;->a(Landroid/content/Context;Lcom/amap/api/col/sl/dw;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/cn$1;->c:Lcom/amap/api/col/sl/ep;

    iput-object v0, v1, Lcom/amap/api/col/sl/dw;->f:Lcom/amap/api/col/sl/ep;

    iget-object v0, v1, Lcom/amap/api/col/sl/dw;->g:Lcom/amap/api/col/sl/ek;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/sl/eh;

    new-instance v2, Lcom/amap/api/col/sl/eg;

    iget-object v3, p0, Lcom/amap/api/col/sl/cn$1;->a:Landroid/content/Context;

    new-instance v4, Lcom/amap/api/col/sl/el;

    invoke-direct {v4}, Lcom/amap/api/col/sl/el;-><init>()V

    new-instance v5, Lcom/amap/api/col/sl/cc;

    new-instance v6, Lcom/amap/api/col/sl/ce;

    new-instance v7, Lcom/amap/api/col/sl/cg;

    invoke-direct {v7}, Lcom/amap/api/col/sl/cg;-><init>()V

    invoke-direct {v6, v7}, Lcom/amap/api/col/sl/ce;-><init>(Lcom/amap/api/col/sl/cd;)V

    invoke-direct {v5, v6}, Lcom/amap/api/col/sl/cc;-><init>(Lcom/amap/api/col/sl/cd;)V

    const-string v6, "EImtleSI6IiVzIiwicGxhdGZvcm0iOiJhbmRyb2lkIiwiZGl1IjoiJXMiLCJwa2ciOiIlcyIsIm1vZGVsIjoiJXMiLCJhcHBuYW1lIjoiJXMiLCJhcHB2ZXJzaW9uIjoiJXMiLCJzeXN2ZXJzaW9uIjoiJXMiLA="

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/amap/api/col/sl/cn$1;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/api/col/sl/bp;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/amap/api/col/sl/cn$1;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/api/col/sl/bu;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/amap/api/col/sl/cn$1;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/api/col/sl/bp;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x3

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v10, v7, v9

    const/4 v9, 0x4

    iget-object v10, p0, Lcom/amap/api/col/sl/cn$1;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/api/col/sl/bp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x5

    iget-object v10, p0, Lcom/amap/api/col/sl/cn$1;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/api/col/sl/bp;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x6

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v10, v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/col/sl/eg;-><init>(Landroid/content/Context;Lcom/amap/api/col/sl/ek;Lcom/amap/api/col/sl/cd;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v0, v2}, Lcom/amap/api/col/sl/eh;-><init>(Lcom/amap/api/col/sl/ek;)V

    iput-object v0, v1, Lcom/amap/api/col/sl/dw;->g:Lcom/amap/api/col/sl/ek;

    :cond_0
    const v0, 0x36ee80

    iput v0, v1, Lcom/amap/api/col/sl/dw;->h:I

    invoke-static {v1}, Lcom/amap/api/col/sl/dx;->a(Lcom/amap/api/col/sl/dw;)V

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v8

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "lg"

    const-string v2, "pul"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/cm;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
