.class Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$h;
.super Lcom/ifengyu/intercom/ui/baseui/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/baseui/b<",
        "Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/b;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$h;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Ljava/lang/String;)V

    :cond_1
    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_2

    const p1, 0x7f1100ab

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const p1, 0x7f1100bd

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$h;->a(Landroid/os/Message;Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V

    return-void
.end method
