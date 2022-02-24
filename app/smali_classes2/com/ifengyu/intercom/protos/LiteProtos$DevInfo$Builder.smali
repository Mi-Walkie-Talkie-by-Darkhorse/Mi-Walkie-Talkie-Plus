.class public final Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "LiteProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/LiteProtos$DevInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/LiteProtos$DevInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private band_:I

.field private bitField0_:I

.field private bootVoice_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

.field private deviceColor_:I

.field private deviceId_:I

.field private keyVoice_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

.field private langType_:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

.field private name_:Lcom/google/protobuf/ByteString;

.field private polite_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

.field private sq_:I

.field private verHw_:I

.field private verSoft_:I

.field private verVoice_:I

.field private vox_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->OFF:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->vox_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    .line 4
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->polite_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    .line 5
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;->CLOSE:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->langType_:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    .line 6
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->OFF:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bootVoice_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    .line 7
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->keyVoice_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    .line 8
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->name_:Lcom/google/protobuf/ByteString;

    .line 9
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 11
    sget-object p1, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->OFF:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->vox_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    .line 12
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->polite_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    .line 13
    sget-object p1, Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;->CLOSE:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->langType_:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    .line 14
    sget-object p1, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->OFF:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bootVoice_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    .line 15
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->keyVoice_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    .line 16
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->name_:Lcom/google/protobuf/ByteString;

    .line 17
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/LiteProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$5000()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->create()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->x()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->access$5200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;
    .locals 5

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/LiteProtos$a;)V

    .line 4
    iget v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->sq_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->access$5402(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->vox_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->access$5502(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;)Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->band_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->access$5602(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;I)I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 8
    :cond_3
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->polite_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->access$5702(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;)Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 9
    :cond_4
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->langType_:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->access$5802(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;)Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 10
    :cond_5
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bootVoice_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->access$5902(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;)Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 11
    :cond_6
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->keyVoice_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->access$6002(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;)Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 12
    :cond_7
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->name_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->access$6102(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x100

    .line 13
    :cond_8
    iget v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->verHw_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->access$6202(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;I)I

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x200

    .line 14
    :cond_9
    iget v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->verSoft_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->access$6302(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;I)I

    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_a

    or-int/lit16 v3, v3, 0x400

    .line 15
    :cond_a
    iget v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->deviceId_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->access$6402(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;I)I

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_b

    or-int/lit16 v3, v3, 0x800

    .line 16
    :cond_b
    iget v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->deviceColor_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->access$6502(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;I)I

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    or-int/lit16 v3, v3, 0x1000

    .line 17
    :cond_c
    iget v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->verVoice_:I

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->access$6602(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;I)I

    .line 18
    invoke-static {v0, v3}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->access$6702(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;I)I

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->sq_:I

    .line 7
    iget v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 8
    sget-object v2, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->OFF:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->vox_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    and-int/lit8 v1, v1, -0x3

    .line 9
    iput v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 10
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->band_:I

    and-int/lit8 v1, v1, -0x5

    .line 11
    iput v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 12
    iput-object v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->polite_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    and-int/lit8 v1, v1, -0x9

    .line 13
    iput v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 14
    sget-object v2, Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;->CLOSE:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->langType_:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    and-int/lit8 v1, v1, -0x11

    .line 15
    iput v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 16
    sget-object v2, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->OFF:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bootVoice_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    and-int/lit8 v1, v1, -0x21

    .line 17
    iput v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 18
    iput-object v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->keyVoice_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    and-int/lit8 v1, v1, -0x41

    .line 19
    iput v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 20
    sget-object v2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->name_:Lcom/google/protobuf/ByteString;

    and-int/lit16 v1, v1, -0x81

    .line 21
    iput v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 22
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->verHw_:I

    and-int/lit16 v1, v1, -0x101

    .line 23
    iput v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 24
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->verSoft_:I

    and-int/lit16 v1, v1, -0x201

    .line 25
    iput v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 26
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->deviceId_:I

    and-int/lit16 v1, v1, -0x401

    .line 27
    iput v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 28
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->deviceColor_:I

    and-int/lit16 v1, v1, -0x801

    .line 29
    iput v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 30
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->verVoice_:I

    and-int/lit16 v0, v1, -0x1001

    .line 31
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearBand()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->band_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBootVoice()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->OFF:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bootVoice_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDeviceColor()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->deviceColor_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDeviceId()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->deviceId_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearKeyVoice()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->OFF:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->keyVoice_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLangType()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;->CLOSE:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->langType_:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearName()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getName()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->name_:Lcom/google/protobuf/ByteString;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPolite()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->OFF:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->polite_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSq()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->sq_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVerHw()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->verHw_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVerSoft()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->verSoft_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVerVoice()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->verVoice_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVox()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;->OFF:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->vox_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 2

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->create()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBand()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->band_:I

    return v0
.end method

.method public getBootVoice()Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bootVoice_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;
    .locals 1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->x()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->deviceColor_:I

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->deviceId_:I

    return v0
.end method

.method public getKeyVoice()Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->keyVoice_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    return-object v0
.end method

.method public getLangType()Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->langType_:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    return-object v0
.end method

.method public getName()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->name_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPolite()Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->polite_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    return-object v0
.end method

.method public getSq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->sq_:I

    return v0
.end method

.method public getVerHw()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->verHw_:I

    return v0
.end method

.method public getVerSoft()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->verSoft_:I

    return v0
.end method

.method public getVerVoice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->verVoice_:I

    return v0
.end method

.method public getVox()Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->vox_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    return-object v0
.end method

.method public hasBand()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

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

.method public hasBootVoice()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

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

.method public hasDeviceColor()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

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

.method public hasDeviceId()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

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

.method public hasKeyVoice()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

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

.method public hasLangType()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

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

.method public hasPolite()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

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

.method public hasSq()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasVerHw()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

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

.method public hasVerSoft()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

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

.method public hasVerVoice()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

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

.method public hasVox()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

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
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->y()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    const-class v2, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setBand(I)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->band_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setBootVoice(Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bootVoice_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public setDeviceColor(I)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->deviceColor_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setDeviceId(I)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->deviceId_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setKeyVoice(Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->keyVoice_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public setLangType(Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->langType_:Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public setName(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->name_:Lcom/google/protobuf/ByteString;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public setPolite(Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->polite_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public setSq(I)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->sq_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setVerHw(I)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->verHw_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setVerSoft(I)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->verSoft_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setVerVoice(I)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->verVoice_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setVox(Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->bitField0_:I

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->vox_:Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method
