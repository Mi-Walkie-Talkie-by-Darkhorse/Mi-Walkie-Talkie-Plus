.class public final Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SharkProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatisticsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatisticsOrBuilder;"
    }
.end annotation


# instance fields
.field private azimuthMap_:I

.field private bitField0_:I

.field private bluetoothDevice_:I

.field private busyLock_:I

.field private channelScan_:I

.field private doubleFreq_:I

.field private fmRadio_:I

.field private handsFree_:I

.field private powerLevel_:I

.field private powerOn_:I

.field private quickTeam_:I

.field private restoreFactory_:I

.field private sosMode_:I

.field private squelchTail_:I

.field private wideNarrow_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/SharkProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$13400()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->create()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->t()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->access$13600()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/SharkProtos$1;)V

    iget v3, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_d

    :goto_0
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->powerOn_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->access$13802(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->azimuthMap_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->access$13902(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->fmRadio_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->access$14002(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;I)I

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->quickTeam_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->access$14102(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;I)I

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bluetoothDevice_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->access$14202(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;I)I

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->handsFree_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->access$14302(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;I)I

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->channelScan_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->access$14402(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;I)I

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->doubleFreq_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->access$14502(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;I)I

    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->sosMode_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->access$14602(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;I)I

    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    or-int/lit16 v0, v0, 0x200

    :cond_8
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->powerLevel_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->access$14702(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;I)I

    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    or-int/lit16 v0, v0, 0x400

    :cond_9
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->busyLock_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->access$14802(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;I)I

    and-int/lit16 v1, v3, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_a

    or-int/lit16 v0, v0, 0x800

    :cond_a
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->squelchTail_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->access$14902(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;I)I

    and-int/lit16 v1, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_b

    or-int/lit16 v0, v0, 0x1000

    :cond_b
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->wideNarrow_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->access$15002(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;I)I

    and-int/lit16 v1, v3, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_c

    or-int/lit16 v0, v0, 0x2000

    :cond_c
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->restoreFactory_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->access$15102(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;I)I

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->access$15202(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;I)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onBuilt()V

    return-object v2

    :cond_d
    move v0, v1

    goto/16 :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->powerOn_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->azimuthMap_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->fmRadio_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->quickTeam_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bluetoothDevice_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->handsFree_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->channelScan_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->doubleFreq_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->sosMode_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->powerLevel_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->busyLock_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->squelchTail_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->wideNarrow_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->restoreFactory_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAzimuthMap()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->azimuthMap_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBluetoothDevice()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bluetoothDevice_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBusyLock()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->busyLock_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public clearChannelScan()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->channelScan_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDoubleFreq()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->doubleFreq_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFmRadio()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->fmRadio_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public clearHandsFree()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->handsFree_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPowerLevel()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->powerLevel_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPowerOn()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->powerOn_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public clearQuickTeam()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->quickTeam_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRestoreFactory()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->restoreFactory_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSosMode()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->sosMode_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSquelchTail()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->squelchTail_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public clearWideNarrow()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->wideNarrow_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->create()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAzimuthMap()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->azimuthMap_:I

    return v0
.end method

.method public getBluetoothDevice()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bluetoothDevice_:I

    return v0
.end method

.method public getBusyLock()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->busyLock_:I

    return v0
.end method

.method public getChannelScan()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->channelScan_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->t()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleFreq()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->doubleFreq_:I

    return v0
.end method

.method public getFmRadio()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->fmRadio_:I

    return v0
.end method

.method public getHandsFree()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->handsFree_:I

    return v0
.end method

.method public getPowerLevel()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->powerLevel_:I

    return v0
.end method

.method public getPowerOn()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->powerOn_:I

    return v0
.end method

.method public getQuickTeam()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->quickTeam_:I

    return v0
.end method

.method public getRestoreFactory()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->restoreFactory_:I

    return v0
.end method

.method public getSosMode()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->sosMode_:I

    return v0
.end method

.method public getSquelchTail()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->squelchTail_:I

    return v0
.end method

.method public getWideNarrow()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->wideNarrow_:I

    return v0
.end method

.method public hasAzimuthMap()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

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

.method public hasBluetoothDevice()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

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

.method public hasBusyLock()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasChannelScan()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

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

.method public hasDoubleFreq()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFmRadio()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

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

.method public hasHandsFree()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

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

.method public hasPowerLevel()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

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

    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasQuickTeam()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

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

.method public hasRestoreFactory()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSosMode()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSquelchTail()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWideNarrow()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->u()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;

    const-class v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setAzimuthMap(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->azimuthMap_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public setBluetoothDevice(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bluetoothDevice_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public setBusyLock(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->busyLock_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public setChannelScan(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->channelScan_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public setDoubleFreq(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->doubleFreq_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public setFmRadio(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->fmRadio_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public setHandsFree(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->handsFree_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public setPowerLevel(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->powerLevel_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public setPowerOn(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->powerOn_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public setQuickTeam(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->quickTeam_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public setRestoreFactory(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->restoreFactory_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public setSosMode(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->sosMode_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public setSquelchTail(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->squelchTail_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method

.method public setWideNarrow(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->wideNarrow_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics$Builder;->onChanged()V

    return-object p0
.end method
