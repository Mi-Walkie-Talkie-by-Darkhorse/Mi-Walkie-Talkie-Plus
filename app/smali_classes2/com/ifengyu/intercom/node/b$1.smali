.class Lcom/ifengyu/intercom/node/b$1;
.super Ljava/lang/Object;
.source "BleServiceConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/node/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/node/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/node/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/node/b$1;->a:Lcom/ifengyu/intercom/node/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/b$1;->a:Lcom/ifengyu/intercom/node/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/node/b;->access$000(Lcom/ifengyu/intercom/node/b;)Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    move-result-object v0

    if-nez v0, :cond_0

    check-cast p2, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/b$1;->a:Lcom/ifengyu/intercom/node/b;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/btle/BtleCentralService$a;->a()Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/node/b;->access$002(Lcom/ifengyu/intercom/node/b;Lcom/ifengyu/intercom/node/btle/BtleCentralService;)Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    iget-object v0, p0, Lcom/ifengyu/intercom/node/b$1;->a:Lcom/ifengyu/intercom/node/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/node/b;->access$000(Lcom/ifengyu/intercom/node/b;)Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/node/b;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bleService#get imService failed"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/node/b;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bleService#get imService ok"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/b$1;->a:Lcom/ifengyu/intercom/node/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/b;->onBleServiceConnected()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/b$1;->a:Lcom/ifengyu/intercom/node/b;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/b;->onBleServiceDisconnected()V

    return-void
.end method
