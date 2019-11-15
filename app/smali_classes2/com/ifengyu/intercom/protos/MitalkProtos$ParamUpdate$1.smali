.class final Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$1;
.super Lcom/google/protobuf/AbstractParser;
.source "MitalkProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractParser",
        "<",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v1

    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public synthetic parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$1;->a(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    return-object v0
.end method
