.class Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageTask$1;
.super Ljava/lang/Object;
.source "MiLinkClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageTask;-><init>(Lcom/mi/milinkforgame/sdk/client/MiLinkClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/mi/milinkforgame/sdk/aidl/PacketData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$this$0:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;


# direct methods
.method constructor <init>(Lcom/mi/milinkforgame/sdk/client/MiLinkClient;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageTask$1;->val$this$0:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/mi/milinkforgame/sdk/aidl/PacketData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageTask$1;->call()Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    move-result-object v0

    return-object v0
.end method
