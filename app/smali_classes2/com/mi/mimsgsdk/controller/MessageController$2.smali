.class Lcom/mi/mimsgsdk/controller/MessageController$2;
.super Ljava/lang/Object;
.source "MessageController.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/interaction/IPacketCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/controller/MessageController;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mi/mimsgsdk/service/aidl/IMessageListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/controller/MessageController;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/controller/MessageController;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/controller/MessageController$2;->this$0:Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)Z
    .locals 1

    invoke-static {}, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->getInstance()Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/mimsgsdk/service/MnsPacketDispatcher;->processReceivePacket(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)V

    const/4 v0, 0x1

    return v0
.end method
