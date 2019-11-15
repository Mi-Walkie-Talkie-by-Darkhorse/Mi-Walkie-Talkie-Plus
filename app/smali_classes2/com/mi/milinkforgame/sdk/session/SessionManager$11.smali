.class Lcom/mi/milinkforgame/sdk/session/SessionManager$11;
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

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$11;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "SessionManager"

    const-string v1, "milink mLogoffRunnable run"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$11;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->close()Z

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$11;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$2402(Lcom/mi/milinkforgame/sdk/session/SessionManager;Z)Z

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$11;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$2500(Lcom/mi/milinkforgame/sdk/session/SessionManager;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$11;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$1700(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->getInstance()Lcom/mi/milinkforgame/sdk/account/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/account/MiAccountManager;->logoff()V

    return-void
.end method
