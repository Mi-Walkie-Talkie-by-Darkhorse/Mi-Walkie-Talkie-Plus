.class Lcom/mi/milinkforgame/sdk/session/Session$6;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/session/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/session/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/milinkforgame/sdk/session/Session;


# direct methods
.method constructor <init>(Lcom/mi/milinkforgame/sdk/session/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/Session$6;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSendFailed(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->onLogoffCmdReturn()V

    return-void
.end method

.method public onDataSendSuccess(ILcom/mi/milinkforgame/sdk/aidl/PacketData;)V
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->getInstance()Lcom/mi/milinkforgame/sdk/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/session/SessionManager;->onLogoffCmdReturn()V

    return-void
.end method
