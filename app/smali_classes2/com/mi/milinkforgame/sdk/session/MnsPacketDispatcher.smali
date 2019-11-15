.class public Lcom/mi/milinkforgame/sdk/session/MnsPacketDispatcher;
.super Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;
.source "MnsPacketDispatcher.java"


# static fields
.field private static final MSG_DISPATCH_PACKET:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MnsPacketDispatcher"

.field private static sInstance:Lcom/mi/milinkforgame/sdk/session/MnsPacketDispatcher;


# instance fields
.field private mCallBack:Lcom/mi/milinkforgame/sdk/interaction/IPacketCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/milinkforgame/sdk/session/MnsPacketDispatcher;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/session/MnsPacketDispatcher;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/session/MnsPacketDispatcher;->sInstance:Lcom/mi/milinkforgame/sdk/session/MnsPacketDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const-string v0, "MnsPacketDispatcher"

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;-><init>(Ljava/lang/String;)V

    const-string v0, "MnsPacketDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MnsPacketDispatcher created, threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/mi/milinkforgame/sdk/session/MnsPacketDispatcher;
    .locals 1

    sget-object v0, Lcom/mi/milinkforgame/sdk/session/MnsPacketDispatcher;->sInstance:Lcom/mi/milinkforgame/sdk/session/MnsPacketDispatcher;

    return-object v0
.end method


# virtual methods
.method public dispatchPacket(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "MnsPacketDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatch packet data, seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getSeqNo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/session/MnsPacketDispatcher;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/session/MnsPacketDispatcher;->sendMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MnsPacketDispatcher"

    const-string v1, "dispatch packet data, but data is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected processMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "MnsPacketDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage unknown msgid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    if-eqz v0, :cond_0

    const-string v1, "MnsPacketDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_DISPATCH_PACKET, seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/MnsPacketDispatcher;->mCallBack:Lcom/mi/milinkforgame/sdk/interaction/IPacketCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mi/milinkforgame/sdk/session/MnsPacketDispatcher;->mCallBack:Lcom/mi/milinkforgame/sdk/interaction/IPacketCallback;

    invoke-interface {v1, v0}, Lcom/mi/milinkforgame/sdk/interaction/IPacketCallback;->onReceive(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)Z

    const-string v0, "MnsPacketDispatcher"

    const-string v1, "delivery data success"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setCallback(Lcom/mi/milinkforgame/sdk/interaction/IPacketCallback;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "MnsPacketDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register packet callback. callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/MnsPacketDispatcher;->mCallBack:Lcom/mi/milinkforgame/sdk/interaction/IPacketCallback;

    :goto_0
    return-void

    :cond_0
    const-string v0, "MnsPacketDispatcher"

    const-string v1, "register packet callback, but callback is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
