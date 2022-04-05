.class public abstract Lcom/amap/api/col/l3/jd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3/jd$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/col/l3/jd$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final e()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/jd;->a:Lcom/amap/api/col/l3/jd$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/jd;->a:Lcom/amap/api/col/l3/jd$a;

    invoke-interface {v0, p0}, Lcom/amap/api/col/l3/jd$a;->b(Lcom/amap/api/col/l3/jd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "ThreadTask"

    const-string v2, "cancelTask"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/jd;->a:Lcom/amap/api/col/l3/jd$a;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/jd;->a()V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/jd;->a:Lcom/amap/api/col/l3/jd$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3/jd;->a:Lcom/amap/api/col/l3/jd$a;

    invoke-interface {v0, p0}, Lcom/amap/api/col/l3/jd$a;->a(Lcom/amap/api/col/l3/jd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "ThreadTask"

    const-string v2, "run"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
