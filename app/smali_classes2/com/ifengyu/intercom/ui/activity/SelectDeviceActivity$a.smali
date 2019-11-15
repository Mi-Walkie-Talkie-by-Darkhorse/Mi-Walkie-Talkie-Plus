.class Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;
.super Ljava/lang/Object;
.source "SelectDeviceActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/node/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SelectDeviceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPeerConfirmRequest: address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SelectDeviceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPeerConnected: nodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a$1;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "SelectDeviceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPeerDisConnected: nodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->i(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090129

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a$2;-><init>(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;)V

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;->a(Lcom/ifengyu/intercom/ui/activity/SelectDeviceActivity;Z)Z

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SelectDeviceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPeerConnectDenied: address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SelectDeviceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPeerVersionMismathed: address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
