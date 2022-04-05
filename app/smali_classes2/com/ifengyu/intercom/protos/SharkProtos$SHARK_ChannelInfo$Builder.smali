.class public final Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private chBand_:I

.field private chElim_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

.field private chName_:Lcom/google/protobuf/ByteString;

.field private chNo_:I

.field private chPolite_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

.field private chRxCss_:I

.field private chRxFreq_:I

.field private chSq_:I

.field private chTxCss_:I

.field private chTxFreq_:I

.field private chTxPower_:I

.field private chType_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

.field private chVox_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->SHARK_PUBLIC:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chType_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chName_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_OFF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chElim_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chPolite_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    sget-object p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->SHARK_PUBLIC:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chType_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chName_:Lcom/google/protobuf/ByteString;

    sget-object p1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_OFF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chElim_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chPolite_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/SharkProtos$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1600()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->create()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->k()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->access$1800()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;
    .locals 5

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/SharkProtos$a;)V

    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chNo_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->access$2002(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chType_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->access$2102(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget v2, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chTxPower_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->access$2202(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;I)I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget v2, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chRxFreq_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->access$2302(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;I)I

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget v2, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chTxFreq_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->access$2402(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;I)I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    :cond_5
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chName_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->access$2502(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    :cond_6
    iget v2, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chSq_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->access$2602(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;I)I

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    :cond_7
    iget v2, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chVox_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->access$2702(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;I)I

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x100

    :cond_8
    iget v2, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chRxCss_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->access$2802(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;I)I

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x200

    :cond_9
    iget v2, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chTxCss_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->access$2902(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;I)I

    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_a

    or-int/lit16 v3, v3, 0x400

    :cond_a
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chElim_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->access$3002(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_b

    or-int/lit16 v3, v3, 0x800

    :cond_b
    iget v2, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chBand_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->access$3102(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;I)I

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    or-int/lit16 v3, v3, 0x1000

    :cond_c
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chPolite_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->access$3202(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->access$3302(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chNo_:I

    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->SHARK_PUBLIC:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chType_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chTxPower_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chRxFreq_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chTxFreq_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    sget-object v2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chName_:Lcom/google/protobuf/ByteString;

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chSq_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chVox_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chRxCss_:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chTxCss_:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    sget-object v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_OFF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chElim_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chBand_:I

    and-int/lit16 v0, v1, -0x801

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chPolite_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearChBand()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chBand_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearChElim()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_OFF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chElim_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearChName()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getChName()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chName_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearChNo()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chNo_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearChPolite()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;->SHARK_OFF:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chPolite_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearChRxCss()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chRxCss_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearChRxFreq()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chRxFreq_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearChSq()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chSq_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearChTxCss()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chTxCss_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearChTxFreq()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chTxFreq_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearChTxPower()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chTxPower_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearChType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;->SHARK_PUBLIC:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chType_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearChVox()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chVox_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->create()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChBand()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chBand_:I

    return v0
.end method

.method public getChElim()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chElim_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    return-object v0
.end method

.method public getChName()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chName_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getChNo()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chNo_:I

    return v0
.end method

.method public getChPolite()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chPolite_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    return-object v0
.end method

.method public getChRxCss()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chRxCss_:I

    return v0
.end method

.method public getChRxFreq()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chRxFreq_:I

    return v0
.end method

.method public getChSq()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chSq_:I

    return v0
.end method

.method public getChTxCss()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chTxCss_:I

    return v0
.end method

.method public getChTxFreq()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chTxFreq_:I

    return v0
.end method

.method public getChTxPower()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chTxPower_:I

    return v0
.end method

.method public getChType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chType_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    return-object v0
.end method

.method public getChVox()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chVox_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->k()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasChBand()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

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

.method public hasChElim()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

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

.method public hasChName()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

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

.method public hasChNo()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasChPolite()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

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

.method public hasChRxCss()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

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

.method public hasChRxFreq()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

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

.method public hasChSq()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

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

.method public hasChTxCss()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

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

.method public hasChTxFreq()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

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

.method public hasChTxPower()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

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

.method public hasChType()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

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

.method public hasChVox()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->l()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;

    const-class v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setChBand(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chBand_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setChElim(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chElim_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setChName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chName_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setChNo(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chNo_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setChPolite(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chPolite_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setChRxCss(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chRxCss_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setChRxFreq(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chRxFreq_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setChSq(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chSq_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setChTxCss(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chTxCss_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setChTxFreq(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chTxFreq_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setChTxPower(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chTxPower_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setChType(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chType_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$SHARK_CHTYPE;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setChVox(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo$Builder;->chVox_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
