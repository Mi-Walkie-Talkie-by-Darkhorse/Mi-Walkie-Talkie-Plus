.class public Lcom/ifengyu/intercom/node/btle/RetryConnectReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RetryConnectReceiver.java"


# instance fields
.field private a:Lcom/ifengyu/intercom/node/btle/BtleCentralService;


# direct methods
.method protected constructor <init>(Lcom/ifengyu/intercom/node/btle/BtleCentralService;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/node/btle/RetryConnectReceiver;->a:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.ifengyu.intercom.node.bluetooth.RETRY_CONNECTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "RetryConnectReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/RetryConnectReceiver;->a:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    if-eqz v0, :cond_0

    const-string v0, "com.ifengyu.intercom.node.bluetooth.RETRY_CONNECTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/node/btle/RetryConnectReceiver;->a:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
