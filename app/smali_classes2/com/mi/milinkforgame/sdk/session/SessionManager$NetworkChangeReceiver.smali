.class Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/session/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkChangeReceiver"
.end annotation


# static fields
.field private static final FORCE_OPEN_DELAY_TIME:J = 0x3e8L


# instance fields
.field private apnName:Ljava/lang/String;

.field private currentType:I

.field private networkChangeRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;


# direct methods
.method private constructor <init>(Lcom/mi/milinkforgame/sdk/session/SessionManager;)V
    .locals 1

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver$1;

    invoke-direct {v0, p0}, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver$1;-><init>(Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->networkChangeRunnable:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->currentType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mi/milinkforgame/sdk/session/SessionManager;Lcom/mi/milinkforgame/sdk/session/SessionManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;-><init>(Lcom/mi/milinkforgame/sdk/session/SessionManager;)V

    return-void
.end method

.method private isNetworkChanged(Landroid/net/NetworkInfo;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->currentType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->currentType:I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->currentType:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$Wifi;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method private setCurrentNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->currentType:I

    iget v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->currentType:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$Wifi;->getBSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->currentType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-static {}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->appHasLogined()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SessionManager"

    const-string v1, "app not login, ignore network change broadcast"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "connectivity"

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/Global;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkChangeReceiver, networkInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network;->isWifi()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WIFI info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device$Network$Wifi;->getWifiInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->isNetworkChanged(Landroid/net/NetworkInfo;)Z

    move-result v1

    const-string v2, "SessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNetworkChange : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->setCurrentNetworkInfo(Landroid/net/NetworkInfo;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->getInstance()Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;

    move-result-object v0

    invoke-static {}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getInstance()Lcom/mi/milinkforgame/sdk/config/ConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/config/ConfigManager;->getUploadStasticInterval()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mi/milinkforgame/sdk/debug/InternalDataMonitor;->setUploadInterval(I)V

    if-eqz v1, :cond_3

    const-string v0, "SessionManager"

    const-string v1, "NetworkChangeReceiver, network change need forceOpen"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/SessionConst;->setNewApn(Z)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$1802(Lcom/mi/milinkforgame/sdk/session/SessionManager;Z)Z

    invoke-static {}, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->getInstance()Lcom/mi/milinkforgame/sdk/connection/DomainManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->startResolve()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$1900(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->networkChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$2000(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->networkChangeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->setCurrentNetworkInfo(Landroid/net/NetworkInfo;)V

    const-string v1, "SessionManager"

    const-string v2, "Get networkInfo fail"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkChangeReceiver, network not change, mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v2}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$1600(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$1600(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    move-result-object v0

    sget-object v1, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Disconnected:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$1802(Lcom/mi/milinkforgame/sdk/session/SessionManager;Z)Z

    invoke-static {}, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->getInstance()Lcom/mi/milinkforgame/sdk/connection/DomainManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/connection/DomainManager;->startResolve()V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$2100(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->networkChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$2200(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->networkChangeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$1500(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Lcom/mi/milinkforgame/sdk/session/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->ping()V

    goto/16 :goto_0

    :cond_5
    const-string v0, "SessionManager"

    const-string v1, "network is disconnected()"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public setCurrentNetworkInfo()V
    .locals 4

    :try_start_0
    const-string v0, "connectivity"

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/Global;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkChangeReceiver, setCurrentNetworkInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->setCurrentNetworkInfo(Landroid/net/NetworkInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->setCurrentNetworkInfo(Landroid/net/NetworkInfo;)V

    const-string v1, "SessionManager"

    const-string v2, "Get networkInfo fail"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
