.class Lcom/mi/milinkforgame/sdk/session/SessionManager$10;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/session/SessionManager;
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

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$10;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "SessionManager"

    const-string v1, "milink login, force=true"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "milink login, session manager state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$10;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v2}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$1600(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$10;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$1500(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Lcom/mi/milinkforgame/sdk/session/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "SessionManager"

    const-string v1, "login session is not available."

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$10;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->onLoginResult(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$10;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$2300(Lcom/mi/milinkforgame/sdk/session/SessionManager;)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$10;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$2308(Lcom/mi/milinkforgame/sdk/session/SessionManager;)I

    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "milink login start, mLoginTryTimes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$10;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v3}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$2300(Lcom/mi/milinkforgame/sdk/session/SessionManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->bind()V

    goto :goto_0

    :cond_2
    const-string v0, "SessionManager"

    const-string v1, "milink login has exceeded max times"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
