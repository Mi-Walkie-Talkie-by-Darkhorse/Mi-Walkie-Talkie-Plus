.class public final Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SealProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControlOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControlOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private option_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

.field private result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;

.field private version_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;->SEAL_BTEAR_SCAN_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->SEAL_BTEAR_SCAN_START:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->option_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;->SEAL_BTEAR_SCAN_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->SEAL_BTEAR_SCAN_START:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->option_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/SealProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$15300()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->create()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->x()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;->access$15500()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/SealProtos$1;)V

    iget v3, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    :goto_0
    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->version_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;->access$15702(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;->access$15802(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;

    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->option_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;->access$15902(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;->access$16002(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;I)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->onBuilt()V

    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->version_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;->SEAL_BTEAR_SCAN_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->SEAL_BTEAR_SCAN_START:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->option_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearOption()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;->SEAL_BTEAR_SCAN_START:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->option_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->onChanged()V

    return-object p0
.end method

.method public clearResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;->SEAL_BTEAR_SCAN_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersion()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->version_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->create()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->x()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getOption()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->option_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    return-object v0
.end method

.method public getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->version_:I

    return v0
.end method

.method public hasOption()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->y()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;

    const-class v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setOption(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->option_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_CONTROL;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->onChanged()V

    return-object p0
.end method

.method public setResult(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$SEAL_BTEAR_SCAN_RESULT;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersion(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->version_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl$Builder;->onChanged()V

    return-object p0
.end method
