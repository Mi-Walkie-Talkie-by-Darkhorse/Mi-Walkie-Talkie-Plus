.class Lcom/ifengyu/intercom/MiTalkiApp$3;
.super Lcom/ifengyu/im/imservice/support/IMServiceConnector;
.source "MiTalkiApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/MiTalkiApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/MiTalkiApp;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/MiTalkiApp;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/MiTalkiApp$3;->a:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/support/IMServiceConnector;-><init>()V

    return-void
.end method


# virtual methods
.method public onIMServiceConnected()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/ifengyu/intercom/MiTalkiApp$3;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "detail#onIMServiceConnected"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp$3;->a:Lcom/ifengyu/intercom/MiTalkiApp;

    iget-object v1, p0, Lcom/ifengyu/intercom/MiTalkiApp$3;->a:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-static {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->a(Lcom/ifengyu/intercom/MiTalkiApp;)Lcom/ifengyu/im/imservice/support/IMServiceConnector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/support/IMServiceConnector;->getIMService()Lcom/ifengyu/im/imservice/service/IMService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->a(Lcom/ifengyu/intercom/MiTalkiApp;Lcom/ifengyu/im/imservice/service/IMService;)Lcom/ifengyu/im/imservice/service/IMService;

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp$3;->a:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-static {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b(Lcom/ifengyu/intercom/MiTalkiApp;)Lcom/ifengyu/im/imservice/service/IMService;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/ifengyu/intercom/MiTalkiApp$3;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "detail#imService is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp$3;->a:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-static {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->c(Lcom/ifengyu/intercom/MiTalkiApp;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp$3;->a:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-static {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b(Lcom/ifengyu/intercom/MiTalkiApp;)Lcom/ifengyu/im/imservice/service/IMService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/service/IMService;->getLoginManager()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/MiTalkiApp$3;->a:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-static {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->b(Lcom/ifengyu/intercom/MiTalkiApp;)Lcom/ifengyu/im/imservice/service/IMService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/im/imservice/service/IMService;->getLoginSp()Lcom/ifengyu/im/DB/sp/LoginSp;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ifengyu/im/DB/sp/LoginSp;->getLoginIdentity()Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/MiTalkiApp$3;->a:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/MiTalkiApp;->a(Lcom/ifengyu/intercom/MiTalkiApp;Lcom/ifengyu/im/DB/sp/LoginSp$SpLoginIdentity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/ifengyu/intercom/MiTalkiApp$3;->logger:Lcom/ifengyu/im/utils/Logger;

    const-string v1, "loadIdentity failed"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/MiTalkiApp$3;->a:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-static {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->c(Lcom/ifengyu/intercom/MiTalkiApp;)V

    goto :goto_1
.end method

.method public onServiceDisconnected()V
    .locals 0

    return-void
.end method
