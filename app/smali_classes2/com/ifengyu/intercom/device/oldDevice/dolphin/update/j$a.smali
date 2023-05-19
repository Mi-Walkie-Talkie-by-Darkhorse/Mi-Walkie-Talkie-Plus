.class Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$a;
.super Landroid/content/BroadcastReceiver;
.source "DolphinUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$a;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.ifengyu.intercom.ACTION_UPDATEMCU_ACK_TIMER"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/ifengyu/intercom/p/p;->c(Z)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j$a;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->c(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;I)V

    return-void
.end method
