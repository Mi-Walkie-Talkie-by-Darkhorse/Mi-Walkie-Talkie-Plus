.class public final Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private offset_:I

.field private result_:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;->FAIL:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    sget-object p1, Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;->FAIL:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/LiteProtos$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$15800()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->create()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->p()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;->access$16000()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;

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

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;
    .locals 4

    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/LiteProtos$a;)V

    iget v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;->access$16202(Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;)Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->offset_:I

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;->access$16302(Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;I)I

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;->access$16402(Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->clear()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->clear()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->clear()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->clear()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;->FAIL:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->bitField0_:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->offset_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearOffset()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->offset_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearResult()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;->FAIL:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->create()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->p()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->offset_:I

    return v0
.end method

.method public getResult()Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    return-object v0
.end method

.method public hasOffset()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->bitField0_:I

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

.method public hasResult()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->q()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;

    const-class v2, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setOffset(I)Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->offset_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setResult(Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
