.class final Lcom/amap/api/col/sl/cm$1;
.super Ljava/lang/Object;
.source "SDKLogHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/sl/cm;->a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/amap/api/col/sl/bz;

.field final synthetic c:Z

.field final synthetic d:Lcom/amap/api/col/sl/cm;


# direct methods
.method constructor <init>(Lcom/amap/api/col/sl/cm;Landroid/content/Context;Lcom/amap/api/col/sl/bz;Z)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/cm$1;->d:Lcom/amap/api/col/sl/cm;

    iput-object p2, p0, Lcom/amap/api/col/sl/cm$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/amap/api/col/sl/cm$1;->b:Lcom/amap/api/col/sl/bz;

    iput-boolean p4, p0, Lcom/amap/api/col/sl/cm$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lcom/amap/api/col/sl/cv;

    iget-object v2, p0, Lcom/amap/api/col/sl/cm$1;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/amap/api/col/sl/cv;-><init>(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/amap/api/col/sl/cm$1;->b:Lcom/amap/api/col/sl/bz;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/sl/cv;->a(Lcom/amap/api/col/sl/bz;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v0, p0, Lcom/amap/api/col/sl/cm$1;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/cm$1;->d:Lcom/amap/api/col/sl/cm;

    invoke-static {v0}, Lcom/amap/api/col/sl/cm;->a(Lcom/amap/api/col/sl/cm;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/cn;->a(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
