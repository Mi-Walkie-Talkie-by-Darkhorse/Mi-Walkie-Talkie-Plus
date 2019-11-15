.class Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b;
.super Lcom/ifengyu/intercom/ui/baseui/a;
.source "SelectDeviceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/baseui/a",
        "<",
        "Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/a;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Ljava/lang/String;)V

    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->k()V

    const v1, 0x7f090083

    invoke-static {p2, v1, v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;ILcom/ifengyu/intercom/node/ConnectionConfiguration;)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f020167

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->d(I)V

    const v0, 0x7f090095

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->e(I)V

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b$1;

    invoke-direct {v1, p0, p2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b$1;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b;Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic a(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$b;->a(Landroid/os/Message;Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V

    return-void
.end method
