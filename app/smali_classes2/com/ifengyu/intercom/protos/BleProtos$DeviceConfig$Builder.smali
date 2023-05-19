.class public final Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "BleProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfigOrBuilder;"
    }
.end annotation


# instance fields
.field private advName_:Lcom/google/protobuf/ByteString;

.field private autoLock_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

.field private batchConfig_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

.field private bitField0_:I

.field private callVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

.field private keyVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

.field private langType_:Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;

.field private name_:Lcom/google/protobuf/ByteString;

.field private powerSave_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

.field private powerVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

.field private shareLoc_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

.field private voiceType_:Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;->CHINESE:Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->langType_:Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;

    .line 4
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->OFF:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->powerVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 5
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->keyVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->shareLoc_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 7
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->callVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 8
    sget-object v1, Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;->VOICE_CLOSE:Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->voiceType_:Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;

    .line 9
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->autoLock_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 10
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->batchConfig_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 11
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->name_:Lcom/google/protobuf/ByteString;

    .line 12
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->powerSave_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 13
    iput-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->advName_:Lcom/google/protobuf/ByteString;

    .line 14
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .line 15
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 16
    sget-object p1, Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;->CHINESE:Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->langType_:Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;

    .line 17
    sget-object p1, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->OFF:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->powerVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 18
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->keyVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 19
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->shareLoc_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 20
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->callVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 21
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;->VOICE_CLOSE:Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->voiceType_:Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;

    .line 22
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->autoLock_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 23
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->batchConfig_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 24
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->name_:Lcom/google/protobuf/ByteString;

    .line 25
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->powerSave_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 26
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->advName_:Lcom/google/protobuf/ByteString;

    .line 27
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/BleProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2300()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->create()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->l()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->access$2500()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;
    .locals 5

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/BleProtos$a;)V

    .line 4
    iget v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->langType_:Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->access$2702(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;)Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->powerVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->access$2802(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->keyVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->access$2902(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 8
    :cond_3
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->shareLoc_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->access$3002(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 9
    :cond_4
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->callVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->access$3102(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 10
    :cond_5
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->voiceType_:Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->access$3202(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;)Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 11
    :cond_6
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->autoLock_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->access$3302(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 12
    :cond_7
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->batchConfig_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->access$3402(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x100

    .line 13
    :cond_8
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->name_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->access$3502(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x200

    .line 14
    :cond_9
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->powerSave_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->access$3602(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    or-int/lit16 v3, v3, 0x400

    .line 15
    :cond_a
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->advName_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->access$3702(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 16
    invoke-static {v0, v3}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->access$3802(Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;I)I

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->clear()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->clear()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->clear()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->clear()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 6
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;->CHINESE:Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->langType_:Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;

    .line 7
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 8
    sget-object v1, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->OFF:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->powerVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    and-int/lit8 v0, v0, -0x3

    .line 9
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 10
    iput-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->keyVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    and-int/lit8 v0, v0, -0x5

    .line 11
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 12
    iput-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->shareLoc_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    and-int/lit8 v0, v0, -0x9

    .line 13
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 14
    iput-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->callVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    and-int/lit8 v0, v0, -0x11

    .line 15
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 16
    sget-object v2, Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;->VOICE_CLOSE:Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->voiceType_:Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;

    and-int/lit8 v0, v0, -0x21

    .line 17
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 18
    iput-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->autoLock_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    and-int/lit8 v0, v0, -0x41

    .line 19
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 20
    iput-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->batchConfig_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    and-int/lit16 v0, v0, -0x81

    .line 21
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 22
    sget-object v2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->name_:Lcom/google/protobuf/ByteString;

    and-int/lit16 v0, v0, -0x101

    .line 23
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 24
    iput-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->powerSave_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    and-int/lit16 v0, v0, -0x201

    .line 25
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 26
    iput-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->advName_:Lcom/google/protobuf/ByteString;

    and-int/lit16 v0, v0, -0x401

    .line 27
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAdvName()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->getAdvName()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->advName_:Lcom/google/protobuf/ByteString;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearAutoLock()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->OFF:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->autoLock_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBatchConfig()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->OFF:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->batchConfig_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCallVoice()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->OFF:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->callVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearKeyVoice()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->OFF:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->keyVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLangType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;->CHINESE:Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->langType_:Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearName()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->getName()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->name_:Lcom/google/protobuf/ByteString;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPowerSave()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->OFF:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->powerSave_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPowerVoice()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->OFF:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->powerVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearShareLoc()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->OFF:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->shareLoc_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVoiceType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;->VOICE_CLOSE:Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->voiceType_:Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 2

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->create()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdvName()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->advName_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getAutoLock()Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->autoLock_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object v0
.end method

.method public getBatchConfig()Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->batchConfig_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object v0
.end method

.method public getCallVoice()Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->callVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;
    .locals 1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->l()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getKeyVoice()Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->keyVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object v0
.end method

.method public getLangType()Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->langType_:Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;

    return-object v0
.end method

.method public getName()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->name_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPowerSave()Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->powerSave_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object v0
.end method

.method public getPowerVoice()Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->powerVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object v0
.end method

.method public getShareLoc()Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->shareLoc_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object v0
.end method

.method public getVoiceType()Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->voiceType_:Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;

    return-object v0
.end method

.method public hasAdvName()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

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

.method public hasAutoLock()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

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

.method public hasBatchConfig()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

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

.method public hasCallVoice()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

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

.method public hasKeyVoice()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

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

.method public hasLangType()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasName()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

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

.method public hasPowerSave()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

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

.method public hasPowerVoice()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

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

.method public hasVoiceType()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->m()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;

    const-class v2, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setAdvName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->advName_:Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setAutoLock(Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->autoLock_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setBatchConfig(Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->batchConfig_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setCallVoice(Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->callVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setKeyVoice(Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->keyVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setLangType(Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->langType_:Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->name_:Lcom/google/protobuf/ByteString;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setPowerSave(Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->powerSave_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setPowerVoice(Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->powerVoice_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setShareLoc(Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->shareLoc_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setVoiceType(Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig$Builder;->voiceType_:Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
