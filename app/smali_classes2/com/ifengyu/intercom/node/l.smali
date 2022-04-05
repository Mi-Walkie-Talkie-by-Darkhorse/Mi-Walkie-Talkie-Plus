.class public Lcom/ifengyu/intercom/node/l;
.super Lcom/ifengyu/intercom/node/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/node/l$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/node/l$a;)V
    .locals 1

    invoke-static {p1}, Lcom/ifengyu/intercom/node/l$a;->a(Lcom/ifengyu/intercom/node/l$a;)I

    move-result v0

    invoke-static {p1}, Lcom/ifengyu/intercom/node/l$a;->b(Lcom/ifengyu/intercom/node/l$a;)Lcom/google/protobuf/Message;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/node/a;-><init>(ILcom/google/protobuf/Message;)V

    return-void
.end method

.method public static a([BI)Lcom/ifengyu/intercom/node/l;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    new-instance v0, Lcom/ifengyu/intercom/node/l$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/l$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/node/l$a;->a(I)Lcom/ifengyu/intercom/node/l$a;

    const/16 v1, 0x4e25

    const-string v2, "SealCommand"

    if-eq p1, v1, :cond_8

    const/16 v1, 0x4e28

    if-eq p1, v1, :cond_7

    const/16 v1, 0x4e2b

    if-eq p1, v1, :cond_6

    const/16 v1, 0x4e2e

    if-eq p1, v1, :cond_5

    const/16 v1, 0x4e30

    if-eq p1, v1, :cond_4

    const/16 v1, 0x4e33

    if-eq p1, v1, :cond_3

    const/16 v1, 0x4e39

    if-eq p1, v1, :cond_2

    const/16 v1, 0x4e35

    if-eq p1, v1, :cond_1

    const/16 v1, 0x4e36

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btEarScanItem:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/node/l$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/l$a;

    goto/16 :goto_0

    :cond_1
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btEarScanControl:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/node/l$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/l$a;

    goto/16 :goto_0

    :cond_2
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userActionStatistics:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/node/l$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/l$a;

    goto/16 :goto_0

    :cond_3
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btEarConnectState:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/node/l$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/l$a;

    goto/16 :goto_0

    :cond_4
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "locationInfo:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/node/l$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/l$a;

    goto/16 :goto_0

    :cond_5
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upGradeFileResponse:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/node/l$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/l$a;

    goto :goto_0

    :cond_6
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "channelInfoOperate:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/node/l$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/l$a;

    goto :goto_0

    :cond_7
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "channelStateOperate:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/node/l$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/l$a;

    goto :goto_0

    :cond_8
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceParam:\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/node/l$a;->a(Lcom/google/protobuf/Message;)Lcom/ifengyu/intercom/node/l$a;

    :goto_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/l$a;->a()Lcom/ifengyu/intercom/node/l;

    move-result-object p0

    return-object p0
.end method
