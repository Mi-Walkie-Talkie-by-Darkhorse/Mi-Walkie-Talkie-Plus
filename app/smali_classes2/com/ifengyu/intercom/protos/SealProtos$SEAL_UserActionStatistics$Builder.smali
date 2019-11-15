.class public final Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SealProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatisticsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatisticsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private connBtEar_:I

.field private deviceIdQuery_:I

.field private factoryReset_:I

.field private fmOpen_:I

.field private keyLock_:I

.field private powerLevelQuery_:I

.field private powerOn_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/SealProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$17300()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->create()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->B()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->access$17500()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/SealProtos$1;)V

    iget v3, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_6

    :goto_0
    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->powerOn_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->access$17702(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->factoryReset_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->access$17802(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->deviceIdQuery_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->access$17902(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;I)I

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->keyLock_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->access$18002(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;I)I

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->powerLevelQuery_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->access$18102(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;I)I

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->fmOpen_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->access$18202(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;I)I

    and-int/lit8 v1, v3, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->connBtEar_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->access$18302(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;I)I

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->access$18402(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;I)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->onBuilt()V

    return-object v2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->powerOn_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->factoryReset_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->deviceIdQuery_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->keyLock_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->powerLevelQuery_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->fmOpen_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->connBtEar_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearConnBtEar()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->connBtEar_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDeviceIdQuery()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->deviceIdQuery_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFactoryReset()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->factoryReset_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFmOpen()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->fmOpen_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public clearKeyLock()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->keyLock_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPowerLevelQuery()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->powerLevelQuery_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPowerOn()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->powerOn_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->create()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConnBtEar()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->connBtEar_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->B()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdQuery()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->deviceIdQuery_:I

    return v0
.end method

.method public getFactoryReset()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->factoryReset_:I

    return v0
.end method

.method public getFmOpen()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->fmOpen_:I

    return v0
.end method

.method public getKeyLock()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->keyLock_:I

    return v0
.end method

.method public getPowerLevelQuery()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->powerLevelQuery_:I

    return v0
.end method

.method public getPowerOn()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->powerOn_:I

    return v0
.end method

.method public hasConnBtEar()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceIdQuery()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFactoryReset()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFmOpen()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasKeyLock()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPowerLevelQuery()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPowerOn()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->C()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;

    const-class v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setConnBtEar(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->connBtEar_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public setDeviceIdQuery(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->deviceIdQuery_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public setFactoryReset(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->factoryReset_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public setFmOpen(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->fmOpen_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public setKeyLock(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->keyLock_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public setPowerLevelQuery(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->powerLevelQuery_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public setPowerOn(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->powerOn_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method
