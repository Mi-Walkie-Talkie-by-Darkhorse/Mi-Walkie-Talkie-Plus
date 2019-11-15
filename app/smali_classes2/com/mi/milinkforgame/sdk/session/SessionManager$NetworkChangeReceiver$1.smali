.class Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver$1;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;


# direct methods
.method constructor <init>(Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver$1;->this$1:Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver$1;->this$1:Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;

    iget-object v0, v0, Lcom/mi/milinkforgame/sdk/session/SessionManager$NetworkChangeReceiver;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->forceOpen()Z

    return-void
.end method
