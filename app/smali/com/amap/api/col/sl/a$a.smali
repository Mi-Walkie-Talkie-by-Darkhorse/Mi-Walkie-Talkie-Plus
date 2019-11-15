.class final Lcom/amap/api/col/sl/a$a;
.super Landroid/os/Handler;
.source "GeoFenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/sl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/sl/a;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/sl/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/a$a;->a:Lcom/amap/api/col/sl/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/col/sl/a$a;->a:Lcom/amap/api/col/sl/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/a;->b(Landroid/os/Bundle;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/col/sl/a$a;->a:Lcom/amap/api/col/sl/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/a;->c(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/col/sl/a$a;->a:Lcom/amap/api/col/sl/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/a;->e(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/amap/api/col/sl/a$a;->a:Lcom/amap/api/col/sl/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/a;->d(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/amap/api/col/sl/a$a;->a:Lcom/amap/api/col/sl/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/a;->f(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/amap/api/col/sl/a$a;->a:Lcom/amap/api/col/sl/a;

    iget-object v1, p0, Lcom/amap/api/col/sl/a$a;->a:Lcom/amap/api/col/sl/a;

    iget-object v1, v1, Lcom/amap/api/col/sl/a;->s:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/a;->a(Lcom/amap/api/location/AMapLocation;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/amap/api/col/sl/a$a;->a:Lcom/amap/api/col/sl/a;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/a;->c()V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/amap/api/col/sl/a$a;->a:Lcom/amap/api/col/sl/a;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/a;->b()V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/amap/api/col/sl/a$a;->a:Lcom/amap/api/col/sl/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/a;->j(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/amap/api/col/sl/a$a;->a:Lcom/amap/api/col/sl/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/a;->a(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/amap/api/col/sl/a$a;->a:Lcom/amap/api/col/sl/a;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/a;->a()V

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/amap/api/col/sl/a$a;->a:Lcom/amap/api/col/sl/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/a;->h(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/amap/api/col/sl/a$a;->a:Lcom/amap/api/col/sl/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/a;->g(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/amap/api/col/sl/a$a;->a:Lcom/amap/api/col/sl/a;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/a;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
