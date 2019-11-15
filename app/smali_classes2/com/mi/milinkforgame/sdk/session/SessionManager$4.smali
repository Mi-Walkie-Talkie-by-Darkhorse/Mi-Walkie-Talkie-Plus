.class Lcom/mi/milinkforgame/sdk/session/SessionManager$4;
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

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$4;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/SessionManager$4;->this$0:Lcom/mi/milinkforgame/sdk/session/SessionManager;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->access$300(Lcom/mi/milinkforgame/sdk/session/SessionManager;)V

    return-void
.end method
