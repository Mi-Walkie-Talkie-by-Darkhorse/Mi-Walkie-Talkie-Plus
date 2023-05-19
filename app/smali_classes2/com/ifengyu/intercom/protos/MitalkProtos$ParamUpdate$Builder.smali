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
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
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
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->result_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    .line 4
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->mode_:Lcom/google/protobuf/ByteString;

    .line 5
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->userName_:Lcom/google/protobuf/ByteString;

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->sosText_:Lcom/google/protobuf/ByteString;

    .line 7
    sget-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SINGLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->stateMode_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    .line 8
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameUTF8_:Lcom/google/protobuf/ByteString;

    .line 9
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameGBK_:Lcom/google/protobuf/ByteString;

    .line 10
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;->ALLOWUPDATE:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->lowPower_:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    .line 11
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .line 12
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 13
    sget-object p1, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->result_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    .line 14
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->mode_:Lcom/google/protobuf/ByteString;

    .line 15
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->userName_:Lcom/google/protobuf/ByteString;

    .line 16
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->sosText_:Lcom/google/protobuf/ByteString;

    .line 17
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SINGLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->stateMode_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    .line 18
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameUTF8_:Lcom/google/protobuf/ByteString;

    .line 19
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameGBK_:Lcom/google/protobuf/ByteString;

    .line 20
    sget-object p1, Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;->ALLOWUPDATE:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->lowPower_:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    .line 21
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/MitalkProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$4600()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->create()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->v()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$4800()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;
    .locals 5

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/MitalkProtos$a;)V

    .line 4
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->version_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$5002(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->result_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$5102(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->mode_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$5202(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 8
    :cond_3
    iget v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->deviceId_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$5302(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;I)I

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 9
    :cond_4
    iget v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->userId_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$5402(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;I)I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 10
    :cond_5
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->userName_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$5502(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 11
    :cond_6
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->sosText_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$5602(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 12
    :cond_7
    iget v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionBLE_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$5702(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;I)I

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x100

    .line 13
    :cond_8
    iget v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionMCU_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$5802(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;I)I

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x200

    .line 14
    :cond_9
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->stateMode_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$5902(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_a

    or-int/lit16 v3, v3, 0x400

    .line 15
    :cond_a
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameUTF8_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$6002(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_b

    or-int/lit16 v3, v3, 0x800

    .line 16
    :cond_b
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameGBK_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$6102(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit16 v2, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_c

    or-int/lit16 v3, v3, 0x1000

    .line 17
    :cond_c
    iget v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->shareLoc_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$6202(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;I)I

    and-int/lit16 v2, v1, 0x2000

    const/16 v4, 0x2000

    if-ne v2, v4, :cond_d

    or-int/lit16 v3, v3, 0x2000

    .line 18
    :cond_d
    iget v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionHW_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$6302(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;I)I

    and-int/lit16 v2, v1, 0x4000

    const/16 v4, 0x4000

    if-ne v2, v4, :cond_e

    or-int/lit16 v3, v3, 0x4000

    .line 19
    :cond_e
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->lowPower_:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$6402(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;)Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    const v2, 0x8000

    and-int v4, v1, v2

    if-ne v4, v2, :cond_f

    or-int/2addr v3, v2

    .line 20
    :cond_f
    iget v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionExtend_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$6502(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;I)I

    const/high16 v2, 0x10000

    and-int v4, v1, v2

    if-ne v4, v2, :cond_10

    or-int/2addr v3, v2

    .line 21
    :cond_10
    iget v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->activateChannel_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$6602(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;I)I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_11

    or-int/2addr v3, v2

    .line 22
    :cond_11
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->language_:I

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$6702(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;I)I

    .line 23
    invoke-static {v0, v3}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->access$6802(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;I)I

    .line 24
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 4

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->version_:I

    .line 7
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 8
    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->result_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    and-int/lit8 v1, v1, -0x3

    .line 9
    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 10
    sget-object v2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->mode_:Lcom/google/protobuf/ByteString;

    and-int/lit8 v1, v1, -0x5

    .line 11
    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 12
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->deviceId_:I

    and-int/lit8 v1, v1, -0x9

    .line 13
    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 14
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->userId_:I

    and-int/lit8 v1, v1, -0x11

    .line 15
    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 16
    iput-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->userName_:Lcom/google/protobuf/ByteString;

    and-int/lit8 v1, v1, -0x21

    .line 17
    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 18
    iput-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->sosText_:Lcom/google/protobuf/ByteString;

    and-int/lit8 v1, v1, -0x41

    .line 19
    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 20
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionBLE_:I

    and-int/lit16 v1, v1, -0x81

    .line 21
    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 22
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionMCU_:I

    and-int/lit16 v1, v1, -0x101

    .line 23
    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 24
    sget-object v3, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SINGLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    iput-object v3, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->stateMode_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    and-int/lit16 v1, v1, -0x201

    .line 25
    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 26
    iput-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameUTF8_:Lcom/google/protobuf/ByteString;

    and-int/lit16 v1, v1, -0x401

    .line 27
    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 28
    iput-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameGBK_:Lcom/google/protobuf/ByteString;

    and-int/lit16 v1, v1, -0x801

    .line 29
    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 30
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->shareLoc_:I

    and-int/lit16 v1, v1, -0x1001

    .line 31
    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 32
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionHW_:I

    and-int/lit16 v1, v1, -0x2001

    .line 33
    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 34
    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;->ALLOWUPDATE:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->lowPower_:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    and-int/lit16 v1, v1, -0x4001

    .line 35
    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 36
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionExtend_:I

    const v2, -0x8001

    and-int/2addr v1, v2

    .line 37
    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 38
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->activateChannel_:I

    const v2, -0x10001

    and-int/2addr v1, v2

    .line 39
    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 40
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->language_:I

    const v0, -0x20001

    and-int/2addr v0, v1

    .line 41
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearActivateChannel()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->activateChannel_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDevNameGBK()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDevNameGBK()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameGBK_:Lcom/google/protobuf/ByteString;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDevNameUTF8()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDevNameUTF8()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameUTF8_:Lcom/google/protobuf/ByteString;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDeviceId()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->deviceId_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLanguage()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->language_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLowPower()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;->ALLOWUPDATE:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->lowPower_:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMode()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getMode()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->mode_:Lcom/google/protobuf/ByteString;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearResult()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;->SUCCESS:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->result_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearShareLoc()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->shareLoc_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSosText()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getSosText()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->sosText_:Lcom/google/protobuf/ByteString;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->SINGLE:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->stateMode_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUserId()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->userId_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUserName()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getUserName()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->userName_:Lcom/google/protobuf/ByteString;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersion()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->version_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersionBLE()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionBLE_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersionExtend()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionExtend_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersionHW()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionHW_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersionMCU()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionMCU_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 2

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->create()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

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

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivateChannel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->activateChannel_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;
    .locals 1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->v()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDevNameGBK()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameGBK_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDevNameUTF8()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameUTF8_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->deviceId_:I

    return v0
.end method

.method public getLanguage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->language_:I

    return v0
.end method

.method public getLowPower()Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->lowPower_:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    return-object v0
.end method

.method public getMode()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->mode_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getResult()Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->result_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    return-object v0
.end method

.method public getShareLoc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->shareLoc_:I

    return v0
.end method

.method public getSosText()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->sosText_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStateMode()Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->stateMode_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->userId_:I

    return v0
.end method

.method public getUserName()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->userName_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->version_:I

    return v0
.end method

.method public getVersionBLE()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionBLE_:I

    return v0
.end method

.method public getVersionExtend()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionExtend_:I

    return v0
.end method

.method public getVersionHW()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionHW_:I

    return v0
.end method

.method public getVersionMCU()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionMCU_:I

    return v0
.end method

.method public hasActivateChannel()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDevNameGBK()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDevNameUTF8()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceId()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLanguage()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLowPower()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMode()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResult()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasShareLoc()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSosText()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStateMode()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUserId()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUserName()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVersion()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasVersionBLE()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVersionExtend()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVersionHW()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVersionMCU()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->w()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    const-class v2, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setActivateChannel(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->activateChannel_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setDevNameGBK(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameGBK_:Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setDevNameUTF8(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->devNameUTF8_:Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setDeviceId(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->deviceId_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setLanguage(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->language_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setLowPower(Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->lowPower_:Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setMode(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->mode_:Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setResult(Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->result_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setShareLoc(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->shareLoc_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setSosText(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->sosText_:Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setStateMode(Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->stateMode_:Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setUserId(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->userId_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setUserName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->userName_:Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->version_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersionBLE(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionBLE_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersionExtend(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionExtend_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersionHW(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionHW_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersionMCU(I)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->versionMCU_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
