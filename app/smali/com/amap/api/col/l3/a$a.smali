.class final Lcom/amap/api/col/l3/a$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/a;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/l3/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/a$a;->a:Lcom/amap/api/col/l3/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/amap/api/col/l3/a$a;->a:Lcom/amap/api/col/l3/a;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/a;->d()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/col/l3/a$a;->a:Lcom/amap/api/col/l3/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/a;->g(Landroid/os/Bundle;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/col/l3/a$a;->a:Lcom/amap/api/col/l3/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/a;->h(Landroid/os/Bundle;)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/amap/api/col/l3/a$a;->a:Lcom/amap/api/col/l3/a;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/a;->a()V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/amap/api/col/l3/a$a;->a:Lcom/amap/api/col/l3/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/a;->a(Landroid/os/Bundle;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/amap/api/col/l3/a$a;->a:Lcom/amap/api/col/l3/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/a;->j(Landroid/os/Bundle;)V

    return-void

    :pswitch_6
    iget-object p1, p0, Lcom/amap/api/col/l3/a$a;->a:Lcom/amap/api/col/l3/a;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/a;->b()V

    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/amap/api/col/l3/a$a;->a:Lcom/amap/api/col/l3/a;

    iget-object v0, p0, Lcom/amap/api/col/l3/a$a;->a:Lcom/amap/api/col/l3/a;

    iget-object v0, v0, Lcom/amap/api/col/l3/a;->s:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {p1, v0}, Lcom/amap/api/col/l3/a;->a(Lcom/amap/api/location/AMapLocation;)V

    return-void

    :pswitch_8
    iget-object p1, p0, Lcom/amap/api/col/l3/a$a;->a:Lcom/amap/api/col/l3/a;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/a;->c()V

    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/amap/api/col/l3/a$a;->a:Lcom/amap/api/col/l3/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/a;->f(Landroid/os/Bundle;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lcom/amap/api/col/l3/a$a;->a:Lcom/amap/api/col/l3/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/a;->d(Landroid/os/Bundle;)V

    return-void

    :pswitch_b
    iget-object v0, p0, Lcom/amap/api/col/l3/a$a;->a:Lcom/amap/api/col/l3/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/a;->e(Landroid/os/Bundle;)V

    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/amap/api/col/l3/a$a;->a:Lcom/amap/api/col/l3/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/a;->c(Landroid/os/Bundle;)V

    return-void

    :pswitch_d
    iget-object v0, p0, Lcom/amap/api/col/l3/a$a;->a:Lcom/amap/api/col/l3/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/a;->b(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
