.class public abstract Lcom/ifengyu/im/imservice/support/IMServiceConnector;
.super Ljava/lang/Object;
.source "IMServiceConnector.java"


# static fields
.field protected static logger:Lcom/ifengyu/im/utils/Logger;


# instance fields
.field private imService:Lcom/ifengyu/im/imservice/service/IMService;

.field private imServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ifengyu/im/imservice/support/IMServiceConnector;

    invoke-static {v0}, Lcom/ifengyu/im/utils/Logger;->getLogger(Ljava/lang/Class;)Lcom/ifengyu/im/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->logger:Lcom/ifengyu/im/utils/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ifengyu/im/imservice/support/IMServiceConnector$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/im/imservice/support/IMServiceConnector$1;-><init>(Lcom/ifengyu/im/imservice/support/IMServiceConnector;)V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->imServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/ifengyu/im/imservice/support/IMServiceConnector;)Lcom/ifengyu/im/imservice/service/IMService;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->imService:Lcom/ifengyu/im/imservice/service/IMService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ifengyu/im/imservice/support/IMServiceConnector;Lcom/ifengyu/im/imservice/service/IMService;)Lcom/ifengyu/im/imservice/service/IMService;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->imService:Lcom/ifengyu/im/imservice/service/IMService;

    return-object p1
.end method


# virtual methods
.method public bindService(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v3, "im#bindService"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/ifengyu/im/imservice/service/IMService;

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->imServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v2, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v1, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "im#bindService(imService) failed"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v3, "im#bindService(imService) ok"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method public connect(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->bindService(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public disconnect(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "im#disconnect"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->unbindService(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->onServiceDisconnected()V

    return-void
.end method

.method public getIMService()Lcom/ifengyu/im/imservice/service/IMService;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->imService:Lcom/ifengyu/im/imservice/service/IMService;

    return-object v0
.end method

.method public abstract onIMServiceConnected()V
.end method

.method public abstract onServiceDisconnected()V
.end method

.method public unbindService(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->imServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "unbindservice ok"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v2, "im#got exception becuase of unmatched bind/unbind, we sould place to onStop next version.e:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/im/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
