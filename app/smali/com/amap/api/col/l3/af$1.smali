.class final Lcom/amap/api/col/l3/af$1;
.super Landroid/os/Handler;
.source "UiSettingsDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/af;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/af;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/af$1;->a:Lcom/amap/api/col/l3/af;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_7

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/af$1;->a:Lcom/amap/api/col/l3/af;

    invoke-static {v0}, Lcom/amap/api/col/l3/af;->a(Lcom/amap/api/col/l3/af;)Lcom/amap/api/col/l3/u;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/af$1;->a:Lcom/amap/api/col/l3/af;

    invoke-static {p1}, Lcom/amap/api/col/l3/af;->a(Lcom/amap/api/col/l3/af;)Lcom/amap/api/col/l3/u;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/col/l3/af$1;->a:Lcom/amap/api/col/l3/af;

    invoke-static {v0}, Lcom/amap/api/col/l3/af;->g(Lcom/amap/api/col/l3/af;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/amap/api/col/l3/u;->f(Z)V

    :goto_0
    return-void

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3/af$1;->a:Lcom/amap/api/col/l3/af;

    invoke-static {p1}, Lcom/amap/api/col/l3/af;->a(Lcom/amap/api/col/l3/af;)Lcom/amap/api/col/l3/u;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/col/l3/af$1;->a:Lcom/amap/api/col/l3/af;

    invoke-static {v0}, Lcom/amap/api/col/l3/af;->f(Lcom/amap/api/col/l3/af;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/amap/api/col/l3/u;->b(Z)V

    return-void

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/amap/api/col/l3/af$1;->a:Lcom/amap/api/col/l3/af;

    invoke-static {p1}, Lcom/amap/api/col/l3/af;->a(Lcom/amap/api/col/l3/af;)Lcom/amap/api/col/l3/u;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/col/l3/af$1;->a:Lcom/amap/api/col/l3/af;

    invoke-static {v0}, Lcom/amap/api/col/l3/af;->e(Lcom/amap/api/col/l3/af;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/amap/api/col/l3/u;->c(Z)V

    return-void

    .line 6
    :cond_4
    iget-object p1, p0, Lcom/amap/api/col/l3/af$1;->a:Lcom/amap/api/col/l3/af;

    invoke-static {p1}, Lcom/amap/api/col/l3/af;->a(Lcom/amap/api/col/l3/af;)Lcom/amap/api/col/l3/u;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/col/l3/af$1;->a:Lcom/amap/api/col/l3/af;

    invoke-static {v0}, Lcom/amap/api/col/l3/af;->d(Lcom/amap/api/col/l3/af;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/amap/api/col/l3/u;->d(Z)V

    return-void

    .line 7
    :cond_5
    iget-object p1, p0, Lcom/amap/api/col/l3/af$1;->a:Lcom/amap/api/col/l3/af;

    invoke-static {p1}, Lcom/amap/api/col/l3/af;->a(Lcom/amap/api/col/l3/af;)Lcom/amap/api/col/l3/u;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/col/l3/af$1;->a:Lcom/amap/api/col/l3/af;

    invoke-static {v0}, Lcom/amap/api/col/l3/af;->c(Lcom/amap/api/col/l3/af;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/amap/api/col/l3/u;->e(Z)V

    return-void

    .line 8
    :cond_6
    iget-object p1, p0, Lcom/amap/api/col/l3/af$1;->a:Lcom/amap/api/col/l3/af;

    invoke-static {p1}, Lcom/amap/api/col/l3/af;->a(Lcom/amap/api/col/l3/af;)Lcom/amap/api/col/l3/u;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/col/l3/af$1;->a:Lcom/amap/api/col/l3/af;

    invoke-static {v0}, Lcom/amap/api/col/l3/af;->b(Lcom/amap/api/col/l3/af;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/amap/api/col/l3/u;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "UiSettingsDelegateImp"

    const-string v1, "handleMessage"

    .line 9
    invoke-static {p1, v0, v1}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method
