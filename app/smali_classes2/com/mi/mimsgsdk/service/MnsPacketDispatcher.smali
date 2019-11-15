.class public Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;
.super Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;
.source "MnsPacketDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/service/MnsPacketDispatcher$PacketDataHandler;
    }
.end annotation


# static fields
.field private static final MESSAGE_ADD_PACKET_DATA_HANDLER:I = 0x0

.field private static final MESSAGE_PROCESS_PACKET_DATA:I = 0x2

.field private static final MESSAGE_REMOVE_PACKET_DATA_HANDLER:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;


# instance fields
.field private mPacketDataHandlerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mi/mimsgsdk/service/MnsPacketDispatcher$PacketDataHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->sInstance:Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    sget-object v0, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->TAG:Ljava/lang/String;

    const/16 v1, -0x13

    invoke-direct {p0, v0, v1}, Lcom/mi/milinkforgame/sdk/base/CustomHandlerThread;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->mPacketDataHandlerList:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;
    .locals 2

    const-class v1, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->sInstance:Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->sInstance:Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->destroy()V

    new-instance v0, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->sInstance:Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->sInstance:Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifyAllPacketDataHandler(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)V
    .locals 3
    .param p1    # Lcom/mi/milinkforgame/sdk/aidl/PacketData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->mPacketDataHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher$PacketDataHandler;

    invoke-interface {v0, p1}, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher$PacketDataHandler;->isAcceptPacket(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, p1}, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher$PacketDataHandler;->processPacketData(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addPacketDataHandler(Lcom/mi/mimsgsdk/service/MnsPacketDispatcher$PacketDataHandler;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->sendMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->mPacketDataHandlerList:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher$PacketDataHandler;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->mPacketDataHandlerList:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher$PacketDataHandler;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-direct {p0, v0}, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->notifyAllPacketDataHandler(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public processReceivePacket(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->sendMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "processReceivePacket dataList is null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removePacketDataHandler(Lcom/mi/mimsgsdk/service/MnsPacketDispatcher$PacketDataHandler;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->sendMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
