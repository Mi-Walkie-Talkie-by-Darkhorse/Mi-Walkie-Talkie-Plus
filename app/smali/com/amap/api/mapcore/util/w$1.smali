.class Lcom/amap/api/mapcore/util/w$1;
.super Landroid/os/Handler;
.source "UiSettingsDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/w;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/w;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/w$1;->a:Lcom/amap/api/mapcore/util/w;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/w$1;->a:Lcom/amap/api/mapcore/util/w;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/w;->a(Lcom/amap/api/mapcore/util/w;)Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w$1;->a:Lcom/amap/api/mapcore/util/w;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/w;->a(Lcom/amap/api/mapcore/util/w;)Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/w$1;->a:Lcom/amap/api/mapcore/util/w;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/w;->b(Lcom/amap/api/mapcore/util/w;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UiSettingsDelegateImp"

    const-string v2, "handleMessage"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w$1;->a:Lcom/amap/api/mapcore/util/w;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/w;->a(Lcom/amap/api/mapcore/util/w;)Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/w$1;->a:Lcom/amap/api/mapcore/util/w;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/w;->c(Lcom/amap/api/mapcore/util/w;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->e(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w$1;->a:Lcom/amap/api/mapcore/util/w;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/w;->a(Lcom/amap/api/mapcore/util/w;)Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/w$1;->a:Lcom/amap/api/mapcore/util/w;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/w;->d(Lcom/amap/api/mapcore/util/w;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->d(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w$1;->a:Lcom/amap/api/mapcore/util/w;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/w;->a(Lcom/amap/api/mapcore/util/w;)Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/w$1;->a:Lcom/amap/api/mapcore/util/w;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/w;->e(Lcom/amap/api/mapcore/util/w;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->c(Z)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w$1;->a:Lcom/amap/api/mapcore/util/w;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/w;->a(Lcom/amap/api/mapcore/util/w;)Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/w$1;->a:Lcom/amap/api/mapcore/util/w;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/w;->f(Lcom/amap/api/mapcore/util/w;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->b(Z)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/w$1;->a:Lcom/amap/api/mapcore/util/w;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/w;->a(Lcom/amap/api/mapcore/util/w;)Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/w$1;->a:Lcom/amap/api/mapcore/util/w;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/w;->g(Lcom/amap/api/mapcore/util/w;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->h(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
