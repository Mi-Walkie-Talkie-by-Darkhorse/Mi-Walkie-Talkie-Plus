.class public final Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "BleProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private battery_:I

.field private bitField0_:I

.field private color_:Lcom/ifengyu/intercom/protos/BleProtos$ColorType;

.field private configInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;",
            "Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;",
            "Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfigOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private configInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

.field private deviceId_:I

.field private deviceMode_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;

.field private deviceType_:I

.field private mac_:Lcom/google/protobuf/ByteString;

.field private talkInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;",
            "Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;",
            "Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private talkInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

.field private verHw_:I

.field private verSoft_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$ColorType;->WHITE:Lcom/ifengyu/intercom/protos/BleProtos$ColorType;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->color_:Lcom/ifengyu/intercom/protos/BleProtos$ColorType;

    .line 4
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->mac_:Lcom/google/protobuf/ByteString;

    .line 5
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;->MODEL_NORMAL:Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->deviceMode_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    .line 8
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 10
    sget-object p1, Lcom/ifengyu/intercom/protos/BleProtos$ColorType;->WHITE:Lcom/ifengyu/intercom/protos/BleProtos$ColorType;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->color_:Lcom/ifengyu/intercom/protos/BleProtos$ColorType;

    .line 11
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->mac_:Lcom/google/protobuf/ByteString;

    .line 12
    sget-object p1, Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;->MODEL_NORMAL:Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->deviceMode_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;

    .line 13
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    .line 14
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    .line 15
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/BleProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$5700()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->create()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;-><init>()V

    return-object v0
.end method

.method private getConfigInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;",
            "Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;",
            "Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfigOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->getConfigInfo()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->p()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getTalkInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;",
            "Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;",
            "Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->getTalkInfo()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->access$5900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->getConfigInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->getTalkInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;
    .locals 5

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/BleProtos$a;)V

    .line 4
    iget v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->verHw_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->access$6102(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 6
    :cond_1
    iget v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->verSoft_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->access$6202(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->deviceId_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->access$6302(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;I)I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 8
    :cond_3
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->color_:Lcom/ifengyu/intercom/protos/BleProtos$ColorType;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->access$6402(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;Lcom/ifengyu/intercom/protos/BleProtos$ColorType;)Lcom/ifengyu/intercom/protos/BleProtos$ColorType;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 9
    :cond_4
    iget v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->deviceType_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->access$6502(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;I)I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 10
    :cond_5
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->mac_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->access$6602(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 11
    :cond_6
    iget v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->battery_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->access$6702(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;I)I

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 12
    :cond_7
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->deviceMode_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->access$6802(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x100

    .line 13
    :cond_8
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_9

    .line 14
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->access$6902(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    goto :goto_1

    .line 15
    :cond_9
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->access$6902(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    :goto_1
    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    or-int/lit16 v3, v3, 0x200

    .line 16
    :cond_a
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v1, :cond_b

    .line 17
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->access$7002(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    goto :goto_2

    .line 18
    :cond_b
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->access$7002(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    .line 19
    :goto_2
    invoke-static {v0, v3}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->access$7102(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;I)I

    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->verHw_:I

    .line 7
    iget v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    .line 8
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->verSoft_:I

    and-int/lit8 v1, v1, -0x3

    .line 9
    iput v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    .line 10
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->deviceId_:I

    and-int/lit8 v1, v1, -0x5

    .line 11
    iput v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    .line 12
    sget-object v2, Lcom/ifengyu/intercom/protos/BleProtos$ColorType;->WHITE:Lcom/ifengyu/intercom/protos/BleProtos$ColorType;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->color_:Lcom/ifengyu/intercom/protos/BleProtos$ColorType;

    and-int/lit8 v1, v1, -0x9

    .line 13
    iput v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    .line 14
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->deviceType_:I

    and-int/lit8 v1, v1, -0x11

    .line 15
    iput v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    .line 16
    sget-object v2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->mac_:Lcom/google/protobuf/ByteString;

    and-int/lit8 v1, v1, -0x21

    .line 17
    iput v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    .line 18
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->battery_:I

    and-int/lit8 v0, v1, -0x41

    .line 19
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    .line 20
    sget-object v1, Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;->MODEL_NORMAL:Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->deviceMode_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;

    and-int/lit16 v0, v0, -0x81

    .line 21
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 23
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 25
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    .line 26
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 27
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 29
    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearBattery()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->battery_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearColor()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$ColorType;->WHITE:Lcom/ifengyu/intercom/protos/BleProtos$ColorType;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->color_:Lcom/ifengyu/intercom/protos/BleProtos$ColorType;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearConfigInfo()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearDeviceId()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->deviceId_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDeviceMode()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;->MODEL_NORMAL:Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->deviceMode_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDeviceType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->deviceType_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMac()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->getMac()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->mac_:Lcom/google/protobuf/ByteString;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTalkInfo()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearVerHw()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->verHw_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVerSoft()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->verSoft_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 2

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->create()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBattery()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->battery_:I

    return v0
.end method

.method public getColor()Lcom/ifengyu/intercom/protos/BleProtos$ColorType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->color_:Lcom/ifengyu/intercom/protos/BleProtos$ColorType;

    return-object v0
.end method

.method public getConfigInfo()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    return-object v0
.end method

.method public getConfigInfoBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->getConfigInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    return-object v0
.end method

.method public getConfigInfoOrBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfigOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfigOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;
    .locals 1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->p()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->deviceId_:I

    return v0
.end method

.method public getDeviceMode()Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->deviceMode_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->deviceType_:I

    return v0
.end method

.method public getMac()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->mac_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTalkInfo()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    return-object v0
.end method

.method public getTalkInfoBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->getTalkInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    return-object v0
.end method

.method public getTalkInfoOrBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfoOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfoOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    return-object v0
.end method

.method public getVerHw()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->verHw_:I

    return v0
.end method

.method public getVerSoft()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->verSoft_:I

    return v0
.end method

.method public hasBattery()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

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

.method public hasColor()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

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

.method public hasConfigInfo()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

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

.method public hasDeviceId()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

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

.method public hasDeviceMode()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

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

.method public hasDeviceType()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

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

.method public hasMac()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

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

.method public hasTalkInfo()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

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

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasVerSoft()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->q()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    const-class v2, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public mergeConfigInfo(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x100

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->newBuilder(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeTalkInfo(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x200

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->newBuilder(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public setBattery(I)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->battery_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setColor(Lcom/ifengyu/intercom/protos/BleProtos$ColorType;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->color_:Lcom/ifengyu/intercom/protos/BleProtos$ColorType;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setConfigInfo(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public setConfigInfo(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->configInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public setDeviceId(I)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->deviceId_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setDeviceMode(Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->deviceMode_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setDeviceType(I)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->deviceType_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setMac(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->mac_:Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setTalkInfo(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public setTalkInfo(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->talkInfo_:Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public setVerHw(I)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->verHw_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setVerSoft(I)Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo$Builder;->verSoft_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
