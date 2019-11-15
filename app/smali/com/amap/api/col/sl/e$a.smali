.class public final Lcom/amap/api/col/sl/e$a;
.super Landroid/os/Handler;
.source "APSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/sl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/sl/e;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/sl/e;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/e$a;->a:Lcom/amap/api/col/sl/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "c"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/amap/api/col/sl/e$a;->a:Lcom/amap/api/col/sl/e;

    invoke-virtual {v3, v0}, Lcom/amap/api/col/sl/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    const/16 v3, 0x836

    invoke-static {v0, v3}, Lcom/amap/api/col/sl/fv;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/amap/api/col/sl/e$a;->a:Lcom/amap/api/col/sl/e;

    const-string v0, "invalid handlder scode!!!#1002"

    invoke-static {v0}, Lcom/amap/api/col/sl/e;->b(Ljava/lang/String;)Lcom/amap/api/col/sl/ev;

    move-result-object v0

    iget-object v3, p0, Lcom/amap/api/col/sl/e$a;->a:Lcom/amap/api/col/sl/e;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ev;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v0, v4}, Lcom/amap/api/col/sl/e;->a(Lcom/amap/api/col/sl/e;Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    const-string v3, "APSServiceCore"

    const-string v4, "ActionHandler handlerMessage"

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_2
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "actionHandler"

    const-string v2, "handleMessage"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/sl/e$a;->a:Lcom/amap/api/col/sl/e;

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/e;->a(Lcom/amap/api/col/sl/e;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/e$a;->a:Lcom/amap/api/col/sl/e;

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/sl/e;->a(Lcom/amap/api/col/sl/e;Landroid/os/Messenger;Landroid/os/Bundle;)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/col/sl/e$a;->a:Lcom/amap/api/col/sl/e;

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/e;->a(Lcom/amap/api/col/sl/e;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/e$a;->a:Lcom/amap/api/col/sl/e;

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/sl/e;->b(Lcom/amap/api/col/sl/e;Landroid/os/Messenger;Landroid/os/Bundle;)V

    goto :goto_2

    :pswitch_3
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/e$a;->a:Lcom/amap/api/col/sl/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/e;->a(Lcom/amap/api/col/sl/e;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/e$a;->a:Lcom/amap/api/col/sl/e;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/e;->c()V

    goto :goto_2

    :pswitch_4
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/e$a;->a:Lcom/amap/api/col/sl/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/e;->a(Lcom/amap/api/col/sl/e;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/e$a;->a:Lcom/amap/api/col/sl/e;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/e;->d()V

    goto :goto_2

    :pswitch_5
    iget-object v0, p0, Lcom/amap/api/col/sl/e$a;->a:Lcom/amap/api/col/sl/e;

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/e;->a(Lcom/amap/api/col/sl/e;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/e$a;->a:Lcom/amap/api/col/sl/e;

    invoke-static {v0}, Lcom/amap/api/col/sl/e;->a(Lcom/amap/api/col/sl/e;)V

    goto :goto_2

    :pswitch_6
    iget-object v0, p0, Lcom/amap/api/col/sl/e$a;->a:Lcom/amap/api/col/sl/e;

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/e;->a(Lcom/amap/api/col/sl/e;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/e$a;->a:Lcom/amap/api/col/sl/e;

    invoke-static {v0}, Lcom/amap/api/col/sl/e;->b(Lcom/amap/api/col/sl/e;)V

    goto :goto_2

    :pswitch_7
    iget-object v0, p0, Lcom/amap/api/col/sl/e$a;->a:Lcom/amap/api/col/sl/e;

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/e;->a(Lcom/amap/api/col/sl/e;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/e$a;->a:Lcom/amap/api/col/sl/e;

    invoke-static {v0}, Lcom/amap/api/col/sl/e;->c(Lcom/amap/api/col/sl/e;)V

    goto :goto_2

    :pswitch_8
    iget-object v0, p0, Lcom/amap/api/col/sl/e$a;->a:Lcom/amap/api/col/sl/e;

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/e;->a(Lcom/amap/api/col/sl/e;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/e$a;->a:Lcom/amap/api/col/sl/e;

    invoke-static {v0, v2}, Lcom/amap/api/col/sl/e;->a(Lcom/amap/api/col/sl/e;Landroid/os/Messenger;)V

    goto :goto_2

    :pswitch_9
    iget-object v0, p0, Lcom/amap/api/col/sl/e$a;->a:Lcom/amap/api/col/sl/e;

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/e;->a(Lcom/amap/api/col/sl/e;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/e$a;->a:Lcom/amap/api/col/sl/e;

    invoke-virtual {v0, v2, v1}, Lcom/amap/api/col/sl/e;->a(Landroid/os/Messenger;Landroid/os/Bundle;)V

    goto/16 :goto_2

    :pswitch_a
    iget-object v0, p0, Lcom/amap/api/col/sl/e$a;->a:Lcom/amap/api/col/sl/e;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/e;->e()V

    goto/16 :goto_2

    :pswitch_b
    iget-object v0, p0, Lcom/amap/api/col/sl/e$a;->a:Lcom/amap/api/col/sl/e;

    invoke-static {v0, v2}, Lcom/amap/api/col/sl/e;->b(Lcom/amap/api/col/sl/e;Landroid/os/Messenger;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
