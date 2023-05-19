.class public final Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "BleProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private band_:Lcom/ifengyu/intercom/protos/BleProtos$BandType;

.field private bitField0_:I

.field private curChSeq_:I

.field private doubleCh_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

.field private elim_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

.field private limtTime_:I

.field private polite_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

.field private sensity_:Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;

.field private sq_:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

.field private vox_:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->SQ_OFF:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->sq_:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    .line 4
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->VOX_OFF:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->vox_:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    .line 5
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$BandType;->BAND_NARROW:Lcom/ifengyu/intercom/protos/BleProtos$BandType;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->band_:Lcom/ifengyu/intercom/protos/BleProtos$BandType;

    .line 6
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->OFF:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->polite_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 7
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->elim_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 8
    sget-object v1, Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;->MIC_LOW:Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->sensity_:Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;

    .line 9
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->doubleCh_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 10
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 12
    sget-object p1, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->SQ_OFF:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->sq_:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    .line 13
    sget-object p1, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->VOX_OFF:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->vox_:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    .line 14
    sget-object p1, Lcom/ifengyu/intercom/protos/BleProtos$BandType;->BAND_NARROW:Lcom/ifengyu/intercom/protos/BleProtos$BandType;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->band_:Lcom/ifengyu/intercom/protos/BleProtos$BandType;

    .line 15
    sget-object p1, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->OFF:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->polite_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 16
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->elim_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 17
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;->MIC_LOW:Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->sensity_:Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;

    .line 18
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->doubleCh_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 19
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/BleProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$4100()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->create()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->n()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->access$4300()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;
    .locals 5

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/BleProtos$a;)V

    .line 4
    iget v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->sq_:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->access$4502(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;Lcom/ifengyu/intercom/protos/BleProtos$SqType;)Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->vox_:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->access$4602(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;Lcom/ifengyu/intercom/protos/BleProtos$VoxType;)Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->band_:Lcom/ifengyu/intercom/protos/BleProtos$BandType;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->access$4702(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;Lcom/ifengyu/intercom/protos/BleProtos$BandType;)Lcom/ifengyu/intercom/protos/BleProtos$BandType;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 8
    :cond_3
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->polite_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->access$4802(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 9
    :cond_4
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->elim_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->access$4902(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 10
    :cond_5
    iget v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->limtTime_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->access$5002(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;I)I

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x40

    .line 11
    :cond_6
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->sensity_:Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->access$5102(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;)Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 12
    :cond_7
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->doubleCh_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->access$5202(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    or-int/lit16 v3, v3, 0x100

    .line 13
    :cond_8
    iget v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->curChSeq_:I

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->access$5302(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;I)I

    .line 14
    invoke-static {v0, v3}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->access$5402(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;I)I

    .line 15
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->clear()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 4

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 6
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->SQ_OFF:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->sq_:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    .line 7
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    .line 8
    sget-object v1, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->VOX_OFF:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->vox_:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    and-int/lit8 v0, v0, -0x3

    .line 9
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    .line 10
    sget-object v1, Lcom/ifengyu/intercom/protos/BleProtos$BandType;->BAND_NARROW:Lcom/ifengyu/intercom/protos/BleProtos$BandType;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->band_:Lcom/ifengyu/intercom/protos/BleProtos$BandType;

    and-int/lit8 v0, v0, -0x5

    .line 11
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    .line 12
    sget-object v1, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->OFF:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->polite_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    and-int/lit8 v0, v0, -0x9

    .line 13
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    .line 14
    iput-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->elim_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    and-int/lit8 v0, v0, -0x11

    .line 15
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    const/4 v2, 0x0

    .line 16
    iput v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->limtTime_:I

    and-int/lit8 v0, v0, -0x21

    .line 17
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    .line 18
    sget-object v3, Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;->MIC_LOW:Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;

    iput-object v3, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->sensity_:Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;

    and-int/lit8 v0, v0, -0x41

    .line 19
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    .line 20
    iput-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->doubleCh_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    and-int/lit16 v0, v0, -0x81

    .line 21
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    .line 22
    iput v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->curChSeq_:I

    and-int/lit16 v0, v0, -0x101

    .line 23
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearBand()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$BandType;->BAND_NARROW:Lcom/ifengyu/intercom/protos/BleProtos$BandType;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->band_:Lcom/ifengyu/intercom/protos/BleProtos$BandType;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearCurChSeq()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->curChSeq_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDoubleCh()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->OFF:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->doubleCh_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearElim()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->OFF:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->elim_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearLimtTime()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->limtTime_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPolite()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->OFF:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->polite_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSensity()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;->MIC_LOW:Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->sensity_:Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSq()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->SQ_OFF:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->sq_:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVox()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->VOX_OFF:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->vox_:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 2

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->create()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBand()Lcom/ifengyu/intercom/protos/BleProtos$BandType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->band_:Lcom/ifengyu/intercom/protos/BleProtos$BandType;

    return-object v0
.end method

.method public getCurChSeq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->curChSeq_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;
    .locals 1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->n()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleCh()Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->doubleCh_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object v0
.end method

.method public getElim()Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->elim_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object v0
.end method

.method public getLimtTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->limtTime_:I

    return v0
.end method

.method public getPolite()Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->polite_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object v0
.end method

.method public getSensity()Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->sensity_:Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;

    return-object v0
.end method

.method public getSq()Lcom/ifengyu/intercom/protos/BleProtos$SqType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->sq_:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    return-object v0
.end method

.method public getVox()Lcom/ifengyu/intercom/protos/BleProtos$VoxType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->vox_:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    return-object v0
.end method

.method public hasBand()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

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

.method public hasCurChSeq()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

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

.method public hasDoubleCh()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

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

.method public hasElim()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

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

.method public hasLimtTime()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

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

.method public hasPolite()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

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

.method public hasSensity()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

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

.method public hasSq()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasVox()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

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
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->o()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    const-class v2, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setBand(Lcom/ifengyu/intercom/protos/BleProtos$BandType;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->band_:Lcom/ifengyu/intercom/protos/BleProtos$BandType;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setCurChSeq(I)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->curChSeq_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setDoubleCh(Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->doubleCh_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setElim(Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->elim_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setLimtTime(I)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->limtTime_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setPolite(Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->polite_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setSensity(Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->sensity_:Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setSq(Lcom/ifengyu/intercom/protos/BleProtos$SqType;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->sq_:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setVox(Lcom/ifengyu/intercom/protos/BleProtos$VoxType;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->vox_:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
