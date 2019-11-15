.class Lcom/mi/mimsgsdk/service/MessageHandler$2;
.super Ljava/lang/Object;
.source "MessageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/service/MessageHandler;->processPacketData(Lcom/mi/milinkforgame/sdk/aidl/PacketData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/mimsgsdk/service/MessageHandler;

.field final synthetic val$data:Lcom/mi/milinkforgame/sdk/aidl/PacketData;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/service/MessageHandler;Lcom/mi/milinkforgame/sdk/aidl/PacketData;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/service/MessageHandler$2;->this$0:Lcom/mi/mimsgsdk/service/MessageHandler;

    iput-object p2, p0, Lcom/mi/mimsgsdk/service/MessageHandler$2;->val$data:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    const-string v2, "MessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processPacketData command="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mi/mimsgsdk/service/MessageHandler$2;->val$data:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-virtual {v4}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/mimsgsdk/service/MessageHandler$2;->val$data:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-virtual {v2}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "opensdk.usermsg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/mi/mimsgsdk/service/MessageHandler$2;->val$data:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->isPushPacket()Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MessageHandler$2;->val$data:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;->parseFrom([B)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/service/MessageHandler$2;->this$0:Lcom/mi/mimsgsdk/service/MessageHandler;

    invoke-static {v1, v0}, Lcom/mi/mimsgsdk/service/MessageHandler;->access$000(Lcom/mi/mimsgsdk/service/MessageHandler;Lcom/mi/mimsgsdk/proto/MiMsgProto$PushUserMsg;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MessageHandler$2;->val$data:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;->parseFrom([B)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/service/MessageHandler$2;->this$0:Lcom/mi/mimsgsdk/service/MessageHandler;

    invoke-static {v1, v0}, Lcom/mi/mimsgsdk/service/MessageHandler;->access$100(Lcom/mi/mimsgsdk/service/MessageHandler;Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncUserMsgResponse;)V
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_1
    :try_start_2
    const-string v3, "opensdk.usermsg.sync"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    goto :goto_1

    :cond_3
    const-string v3, "opensdk.groupmsg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/mi/mimsgsdk/service/MessageHandler$2;->val$data:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-virtual {v3}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->isPushPacket()Z

    move-result v3

    if-eqz v3, :cond_4

    :try_start_3
    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MessageHandler$2;->val$data:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushGroupMsg;->parseFrom([B)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushGroupMsg;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/service/MessageHandler$2;->this$0:Lcom/mi/mimsgsdk/service/MessageHandler;

    invoke-static {v1, v0}, Lcom/mi/mimsgsdk/service/MessageHandler;->access$200(Lcom/mi/mimsgsdk/service/MessageHandler;Lcom/mi/mimsgsdk/proto/MiMsgProto$PushGroupMsg;)V
    :try_end_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_2

    :cond_5
    move v0, v1

    :goto_2
    packed-switch v0, :pswitch_data_3

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MessageHandler$2;->val$data:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;->parseFrom([B)Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/service/MessageHandler$2;->this$0:Lcom/mi/mimsgsdk/service/MessageHandler;

    invoke-static {v1, v0}, Lcom/mi/mimsgsdk/service/MessageHandler;->access$300(Lcom/mi/mimsgsdk/service/MessageHandler;Lcom/mi/mimsgsdk/proto/MiMsgProto$SyncGroupMsgResponse;)V
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_3
    :try_start_5
    const-string v3, "opensdk.groupmsg.sync"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_6
    const-string v0, "opensdk.roommsg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MessageHandler$2;->val$data:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->isPushPacket()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_6
    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MessageHandler$2;->val$data:Lcom/mi/milinkforgame/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;->parseFrom([B)Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/mimsgsdk/service/MessageHandler$2;->this$0:Lcom/mi/mimsgsdk/service/MessageHandler;

    invoke-static {v1, v0}, Lcom/mi/mimsgsdk/service/MessageHandler;->access$400(Lcom/mi/mimsgsdk/service/MessageHandler;Lcom/mi/mimsgsdk/proto/MiMsgProto$PushRoomMsg;)V
    :try_end_6
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2f14eacf
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xd2d3ca9
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
