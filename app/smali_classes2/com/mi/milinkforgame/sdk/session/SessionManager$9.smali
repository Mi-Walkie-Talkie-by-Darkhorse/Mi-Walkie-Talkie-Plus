.class Lcom/mi/milinkforgame/sdk/session/SessionManager$9;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/milinkforgame/sdk/session/SessionManager;->onAlarmArrived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;


# direct methods
.method constructor <init>(Lcom/mi/milinkforgame/sdk/session/SessionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$9;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "SessionManager"

    const-string v1, "send heart beat to session"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$9;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$1500(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Lcom/mi/milinkforgame/sdk/session/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v0, "SessionManager"

    const-string v1, "session is not available."

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->milinkHasLogined()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->heartBeat()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->appHasLogined()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$9;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->login()V

    goto :goto_0
.end method
