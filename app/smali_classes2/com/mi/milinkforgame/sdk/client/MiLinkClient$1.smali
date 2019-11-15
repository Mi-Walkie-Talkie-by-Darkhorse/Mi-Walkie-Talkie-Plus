.class Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;
.super Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageTask;
.source "MiLinkClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->sendSync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;I)Lcom/mi/milinkforgame/sdk/aidl/PacketData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

.field final synthetic val$packet:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/mi/milinkforgame/sdk/client/MiLinkClient;Lcom/mi/milinkforgame/sdk/aidl/PacketData;I)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;->this$0:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    iput-object p2, p0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;->val$packet:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    iput p3, p0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;->val$timeout:I

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$MessageTask;-><init>(Lcom/mi/milinkforgame/sdk/client/MiLinkClient;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;->setException(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public doSendWork()V
    .locals 4

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;->this$0:Lcom/mi/milinkforgame/sdk/client/MiLinkClient;

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;->val$packet:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    iget v2, p0, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;->val$timeout:I

    new-instance v3, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1$1;

    invoke-direct {v3, p0}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1$1;-><init>(Lcom/mi/milinkforgame/sdk/client/MiLinkClient$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mi/milinkforgame/sdk/client/MiLinkClient;->sendAsync(Lcom/mi/milinkforgame/sdk/aidl/PacketData;ILcom/mi/milinkforgame/sdk/session/ResponseListener;)V

    return-void
.end method
