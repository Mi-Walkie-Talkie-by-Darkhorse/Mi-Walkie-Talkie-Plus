.class public final Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParamOrBuilder;"
    }
.end annotation


# instance fields
.field private activate_:I

.field private bitField0_:I

.field private bleName_:Lcom/google/protobuf/ByteString;

.field private btAudio_:I

.field private chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

.field private charge_:I

.field private deviceName_:Lcom/google/protobuf/ByteString;

.field private fullInquiry_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

.field private isAllPublic_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

.field private pwsaveMode_:I

.field private result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

.field private shareLoc_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

.field private verHw_:I

.field private verSoft_:I

.field private version_:I

.field private voiceAlert_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

.field private voiceType_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_QUERY_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_OFF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->fullInquiry_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->deviceName_:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bleName_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_OFF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->shareLoc_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_OFF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->voiceAlert_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->isAllPublic_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;->SEAL_VOICETYPE_CLOSE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->voiceType_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    sget-object p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_QUERY_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    sget-object p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_OFF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->fullInquiry_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->deviceName_:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bleName_:Lcom/google/protobuf/ByteString;

    sget-object p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_OFF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->shareLoc_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    sget-object p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_OFF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->voiceAlert_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->isAllPublic_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    sget-object p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;->SEAL_VOICETYPE_CLOSE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->voiceType_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/SealProtos$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$3600()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->create()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;-><init>()V

    return-object v0
.end method

.method private getChFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->getCh()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->s()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->access$3800()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->getChFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

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

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;
    .locals 5

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/SealProtos$a;)V

    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->version_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->access$4002(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->access$4102(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->fullInquiry_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->access$4202(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget v2, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->verHw_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->access$4302(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;I)I

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    :cond_4
    iget v2, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->verSoft_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->access$4402(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;I)I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    :cond_5
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->deviceName_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->access$4502(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    :cond_6
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bleName_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->access$4602(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    :cond_7
    iget v2, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->charge_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->access$4702(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;I)I

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x100

    :cond_8
    iget v2, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->activate_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->access$4802(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;I)I

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x200

    :cond_9
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->shareLoc_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->access$4902(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_a

    or-int/lit16 v3, v3, 0x400

    :cond_a
    iget v2, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->btAudio_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->access$5002(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;I)I

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_b

    or-int/lit16 v3, v3, 0x800

    :cond_b
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->access$5102(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    goto :goto_1

    :cond_c
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->access$5102(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    :goto_1
    and-int/lit16 v2, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_d

    or-int/lit16 v3, v3, 0x1000

    :cond_d
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->voiceAlert_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->access$5202(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    and-int/lit16 v2, v1, 0x2000

    const/16 v4, 0x2000

    if-ne v2, v4, :cond_e

    or-int/lit16 v3, v3, 0x2000

    :cond_e
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->isAllPublic_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->access$5302(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    and-int/lit16 v2, v1, 0x4000

    const/16 v4, 0x4000

    if-ne v2, v4, :cond_f

    or-int/lit16 v3, v3, 0x4000

    :cond_f
    iget v2, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->pwsaveMode_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->access$5402(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;I)I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_10

    or-int/2addr v3, v2

    :cond_10
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->voiceType_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->access$5502(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->access$5602(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->version_:I

    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    sget-object v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_QUERY_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    sget-object v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_OFF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->fullInquiry_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->verHw_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->verSoft_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    sget-object v2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->deviceName_:Lcom/google/protobuf/ByteString;

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bleName_:Lcom/google/protobuf/ByteString;

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->charge_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->activate_:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    sget-object v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_OFF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->shareLoc_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->btAudio_:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    iget-object v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    :goto_0
    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x801

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    sget-object v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_OFF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->voiceAlert_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    and-int/lit16 v1, v1, -0x1001

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->isAllPublic_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    and-int/lit16 v1, v1, -0x2001

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->pwsaveMode_:I

    and-int/lit16 v0, v1, -0x4001

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;->SEAL_VOICETYPE_CLOSE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->voiceType_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearActivate()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->activate_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBleName()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getBleName()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bleName_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBtAudio()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->btAudio_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCh()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearCharge()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->charge_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDeviceName()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getDeviceName()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->deviceName_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFullInquiry()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_OFF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->fullInquiry_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearIsAllPublic()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_OFF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->isAllPublic_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPwsaveMode()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->pwsaveMode_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;->SEAL_PARAM_QUERY_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearShareLoc()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_OFF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->shareLoc_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVerHw()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->verHw_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVerSoft()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->verSoft_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersion()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->version_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVoiceAlert()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;->SEAL_OFF:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->voiceAlert_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVoiceType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;->SEAL_VOICETYPE_CLOSE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->voiceType_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->create()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivate()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->activate_:I

    return v0
.end method

.method public getBleName()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bleName_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getBtAudio()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->btAudio_:I

    return v0
.end method

.method public getCh()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    return-object v0
.end method

.method public getChBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->getChFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    return-object v0
.end method

.method public getChOrBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    return-object v0
.end method

.method public getCharge()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->charge_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->s()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->deviceName_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFullInquiry()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->fullInquiry_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    return-object v0
.end method

.method public getIsAllPublic()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->isAllPublic_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    return-object v0
.end method

.method public getPwsaveMode()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->pwsaveMode_:I

    return v0
.end method

.method public getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    return-object v0
.end method

.method public getShareLoc()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->shareLoc_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    return-object v0
.end method

.method public getVerHw()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->verHw_:I

    return v0
.end method

.method public getVerSoft()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->verSoft_:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->version_:I

    return v0
.end method

.method public getVoiceAlert()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->voiceAlert_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    return-object v0
.end method

.method public getVoiceType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->voiceType_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;

    return-object v0
.end method

.method public hasActivate()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

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

.method public hasBleName()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

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

.method public hasBtAudio()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

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

.method public hasCh()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

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

.method public hasCharge()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

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

.method public hasDeviceName()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

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

.method public hasFullInquiry()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

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

.method public hasIsAllPublic()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

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

.method public hasPwsaveMode()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

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

.method public hasResult()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

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

.method public hasVerHw()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

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

.method public hasVerSoft()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasVoiceAlert()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

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

.method public hasVoiceType()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->t()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;

    const-class v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public mergeCh(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x800

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;->newBuilder(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    return-object p0
.end method

.method public setActivate(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->activate_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setBleName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bleName_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setBtAudio(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->btAudio_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setCh(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    return-object p0
.end method

.method public setCh(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->chBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->ch_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    return-object p0
.end method

.method public setCharge(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->charge_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setDeviceName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->deviceName_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setFullInquiry(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->fullInquiry_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setIsAllPublic(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->isAllPublic_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setPwsaveMode(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->pwsaveMode_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setResult(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_DEV_UERR;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setShareLoc(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->shareLoc_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setVerHw(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->verHw_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setVerSoft(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->verSoft_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->version_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setVoiceAlert(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->voiceAlert_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setVoiceType(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$Builder;->voiceType_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam$SEAL_VOICETYPE;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
