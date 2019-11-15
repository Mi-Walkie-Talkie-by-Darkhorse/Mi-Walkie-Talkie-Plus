.class public abstract Lcom/ifengyu/intercom/node/b;
.super Ljava/lang/Object;
.source "BleServiceConnector.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBleService:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/node/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/node/b;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ifengyu/intercom/node/b$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/node/b$1;-><init>(Lcom/ifengyu/intercom/node/b;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/b;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/ifengyu/intercom/node/b;)Lcom/ifengyu/intercom/node/btle/BtleCentralService;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/b;->mBleService:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ifengyu/intercom/node/b;Lcom/ifengyu/intercom/node/btle/BtleCentralService;)Lcom/ifengyu/intercom/node/btle/BtleCentralService;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/node/b;->mBleService:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/node/b;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private unbindService(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/node/b;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/ifengyu/intercom/node/b;->TAG:Ljava/lang/String;

    const-string v1, "unbindservice ok"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/ifengyu/intercom/node/b;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bleService#got exception becuase of unmatched bind/unbind, we sould place to onStop next version.e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ifengyu/library/util/c;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public bindService(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/ifengyu/intercom/node/b;->TAG:Ljava/lang/String;

    const-string v2, "bleService#bindService"

    invoke-static {v1, v2}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/ifengyu/intercom/node/b;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/ifengyu/intercom/node/b;->TAG:Ljava/lang/String;

    const-string v1, "bleService#bindService(BleCentralService) failed"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/ifengyu/intercom/node/b;->TAG:Ljava/lang/String;

    const-string v2, "bleService#bindService(BleCentralService) ok"

    invoke-static {v1, v2}, Lcom/ifengyu/library/util/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public connect(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/node/b;->bindService(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public disconnect(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/node/b;->TAG:Ljava/lang/String;

    const-string v1, "bleService#disconnect"

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/node/b;->unbindService(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/node/b;->onBleServiceDisconnected()V

    return-void
.end method

.method public getBleService()Lcom/ifengyu/intercom/node/btle/BtleCentralService;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/b;->mBleService:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    return-object v0
.end method

.method public abstract onBleServiceConnected()V
.end method

.method public abstract onBleServiceDisconnected()V
.end method
