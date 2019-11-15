.class Lcom/mi/milinkforgame/sdk/session/SessionManager$5;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/milinkforgame/sdk/session/SessionManager;->forceOpen()Z
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

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$5;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$5;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    sget-object v1, Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;->Disconnected:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$500(Lcom/mi/milinkforgame/sdk/session/SessionManager;Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$5;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$700(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$5;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$600(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$5;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$900(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$5;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$800(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$5;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$1100(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$5;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$1000(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$5;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$1200(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$5;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$800(Lcom/mi/milinkforgame/sdk/session/SessionManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
