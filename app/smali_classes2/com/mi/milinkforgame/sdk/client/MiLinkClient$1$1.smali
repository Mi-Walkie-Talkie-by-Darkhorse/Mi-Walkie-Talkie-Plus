.class Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1$1;
.super Ljava/lang/Object;
.source "MiLinkClient.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/session/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;->doSendWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;


# direct methods
.method constructor <init>(Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1$1;->this$1:Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSendFailed(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1$1;->this$1:Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1$1;->this$1:Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1$1;->this$1:Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;

    new-instance v1, Lcom/mi/milinkforgame/sdk/client/MiLinkException;

    invoke-direct {v1, p1, p2}, Lcom/mi/milinkforgame/sdk/client/MiLinkException;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;->access$100(Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onDataSendSuccess(ILcom/mi/milinkforgame/sdk/aidl/PacketData;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1$1;->this$1:Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1$1;->this$1:Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1$1;->this$1:Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;

    invoke-static {v0, p2}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;->access$000(Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
