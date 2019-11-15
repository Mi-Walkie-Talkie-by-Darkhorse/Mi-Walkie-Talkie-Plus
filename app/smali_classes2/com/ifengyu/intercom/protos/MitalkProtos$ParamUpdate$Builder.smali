.class public final Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MitalkProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;"
    }
.end annotation


# instance fields
.field private activateChannel_:I

.field private bitField0_:I

.field private devNameGBK_:Lcom/google/protobuf/ByteString;

.field private devNameUTF8_:Lcom/google/protobuf/ByteString;

.field private deviceId_:I

.field private language_:I

.field private lowPower_:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

.field private mode_:Lcom/google/protobuf/ByteString;

.field private result_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

.field private shareLoc_:I

.field private sosText_:Lcom/google/protobuf/ByteString;

.field private stateMode_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

.field private userId_:I

.field private userName_:Lcom/google/protobuf/ByteString;

.field private versionBLE_:I

.field private versionExtend_:I

.field private versionHW_:I

.field private versionMCU_:I

.field private version_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->result_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->mode_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->userName_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->sosText_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SINGLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->stateMode_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameUTF8_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameGBK_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;->ALLOWUPDATE:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->lowPower_:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->result_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->mode_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->userName_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->sosText_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SINGLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->stateMode_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameUTF8_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameGBK_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;->ALLOWUPDATE:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->lowPower_:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/MitalkProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$4600()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->create()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->h()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$4800()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;
    .locals 8

    const/4 v0, 0x1

    const/high16 v7, 0x20000

    const/high16 v6, 0x10000

    const v5, 0x8000

    new-instance v2, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/MitalkProtos$1;)V

    iget v3, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_11

    :goto_0
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->version_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$5002(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->result_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$5102(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->mode_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$5202(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->deviceId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$5302(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;I)I

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->userId_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$5402(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;I)I

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->userName_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$5502(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->sosText_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$5602(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionBLE_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$5702(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;I)I

    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionMCU_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$5802(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;I)I

    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    or-int/lit16 v0, v0, 0x200

    :cond_8
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->stateMode_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$5902(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    or-int/lit16 v0, v0, 0x400

    :cond_9
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameUTF8_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$6002(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit16 v1, v3, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_a

    or-int/lit16 v0, v0, 0x800

    :cond_a
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameGBK_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$6102(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit16 v1, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_b

    or-int/lit16 v0, v0, 0x1000

    :cond_b
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->shareLoc_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$6202(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;I)I

    and-int/lit16 v1, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v1, v4, :cond_c

    or-int/lit16 v0, v0, 0x2000

    :cond_c
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionHW_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$6302(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;I)I

    and-int/lit16 v1, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v1, v4, :cond_d

    or-int/lit16 v0, v0, 0x4000

    :cond_d
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->lowPower_:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$6402(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;)Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    and-int v1, v3, v5

    if-ne v1, v5, :cond_e

    or-int/2addr v0, v5

    :cond_e
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionExtend_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$6502(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;I)I

    and-int v1, v3, v6

    if-ne v1, v6, :cond_f

    or-int/2addr v0, v6

    :cond_f
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->activateChannel_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$6602(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;I)I

    and-int v1, v3, v7

    if-ne v1, v7, :cond_10

    or-int/2addr v0, v7

    :cond_10
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->language_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$6702(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;I)I

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$6802(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;I)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onBuilt()V

    return-object v2

    :cond_11
    move v0, v1

    goto/16 :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iput v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->version_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->result_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->mode_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->deviceId_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->userId_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->userName_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->sosText_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionBLE_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionMCU_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SINGLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->stateMode_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameUTF8_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameGBK_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->shareLoc_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionHW_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;->ALLOWUPDATE:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->lowPower_:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionExtend_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->activateChannel_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->language_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearActivateChannel()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->activateChannel_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDevNameGBK()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDevNameGBK()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameGBK_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDevNameUTF8()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDevNameUTF8()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameUTF8_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDeviceId()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->deviceId_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLanguage()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->language_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLowPower()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;->ALLOWUPDATE:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->lowPower_:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMode()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getMode()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->mode_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearResult()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->result_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearShareLoc()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->shareLoc_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSosText()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getSosText()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->sosText_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SINGLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->stateMode_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUserId()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->userId_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUserName()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getUserName()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->userName_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersion()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->version_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersionBLE()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionBLE_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersionExtend()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionExtend_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersionHW()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionHW_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersionMCU()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionMCU_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->create()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivateChannel()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->activateChannel_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->h()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDevNameGBK()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameGBK_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDevNameUTF8()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameUTF8_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->deviceId_:I

    return v0
.end method

.method public getLanguage()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->language_:I

    return v0
.end method

.method public getLowPower()Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->lowPower_:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    return-object v0
.end method

.method public getMode()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->mode_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->result_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    return-object v0
.end method

.method public getShareLoc()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->shareLoc_:I

    return v0
.end method

.method public getSosText()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->sosText_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->stateMode_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->userId_:I

    return v0
.end method

.method public getUserName()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->userName_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->version_:I

    return v0
.end method

.method public getVersionBLE()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionBLE_:I

    return v0
.end method

.method public getVersionExtend()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionExtend_:I

    return v0
.end method

.method public getVersionHW()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionHW_:I

    return v0
.end method

.method public getVersionMCU()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionMCU_:I

    return v0
.end method

.method public hasActivateChannel()Z
    .locals 2

    const/high16 v1, 0x10000

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDevNameGBK()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

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

.method public hasDevNameUTF8()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

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

.method public hasDeviceId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

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

.method public hasLanguage()Z
    .locals 2

    const/high16 v1, 0x20000

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLowPower()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMode()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

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

.method public hasResult()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

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

.method public hasShareLoc()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

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

.method public hasSosText()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

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

.method public hasStateMode()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

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

.method public hasUserId()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

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

.method public hasUserName()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVersionBLE()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

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

.method public hasVersionExtend()Z
    .locals 2

    const v1, 0x8000

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVersionHW()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

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

.method public hasVersionMCU()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->i()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    const-class v2, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setActivateChannel(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->activateChannel_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public setDevNameGBK(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameGBK_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public setDevNameUTF8(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameUTF8_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public setDeviceId(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->deviceId_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public setLanguage(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->language_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public setLowPower(Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->lowPower_:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public setMode(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->mode_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public setResult(Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->result_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public setShareLoc(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->shareLoc_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public setSosText(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->sosText_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public setStateMode(Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->stateMode_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public setUserId(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->userId_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public setUserName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->userName_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->version_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersionBLE(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionBLE_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersionExtend(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionExtend_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersionHW(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionHW_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersionMCU(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionMCU_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->onChanged()V

    return-object p0
.end method
