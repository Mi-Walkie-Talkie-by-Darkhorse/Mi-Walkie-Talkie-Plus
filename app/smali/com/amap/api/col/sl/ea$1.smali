.class final Lcom/amap/api/col/sl/ea$1;
.super Ljava/lang/Object;
.source "OfflineLocManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/sl/ea;->a(Lcom/amap/api/col/sl/dz;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/amap/api/col/sl/dz;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amap/api/col/sl/dz;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/ea$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/sl/ea$1;->b:Lcom/amap/api/col/sl/dz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    const-class v6, Lcom/amap/api/col/sl/ea;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/amap/api/col/sl/ea;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/ed;->a(Ljava/lang/ref/WeakReference;)Lcom/amap/api/col/sl/dw;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/col/sl/ea$1;->a:Landroid/content/Context;

    sget-object v2, Lcom/amap/api/col/sl/ck;->i:Ljava/lang/String;

    sget v3, Lcom/amap/api/col/sl/ea;->a:I

    const/high16 v4, 0x200000

    const-string v5, "6"

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/sl/ed;->a(Landroid/content/Context;Lcom/amap/api/col/sl/dw;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, v1, Lcom/amap/api/col/sl/dw;->e:Lcom/amap/api/col/sl/cd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/sl/cc;

    new-instance v2, Lcom/amap/api/col/sl/ce;

    new-instance v3, Lcom/amap/api/col/sl/cg;

    new-instance v4, Lcom/amap/api/col/sl/ce;

    invoke-direct {v4}, Lcom/amap/api/col/sl/ce;-><init>()V

    invoke-direct {v3, v4}, Lcom/amap/api/col/sl/cg;-><init>(Lcom/amap/api/col/sl/cd;)V

    invoke-direct {v2, v3}, Lcom/amap/api/col/sl/ce;-><init>(Lcom/amap/api/col/sl/cd;)V

    invoke-direct {v0, v2}, Lcom/amap/api/col/sl/cc;-><init>(Lcom/amap/api/col/sl/cd;)V

    iput-object v0, v1, Lcom/amap/api/col/sl/dw;->e:Lcom/amap/api/col/sl/cd;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/sl/ea$1;->b:Lcom/amap/api/col/sl/dz;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/dz;->a()[B

    move-result-object v0

    invoke-static {v7, v0, v1}, Lcom/amap/api/col/sl/dx;->a(Ljava/lang/String;[BLcom/amap/api/col/sl/dw;)V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v6

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "ofm"

    const-string v2, "aple"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/cm;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
