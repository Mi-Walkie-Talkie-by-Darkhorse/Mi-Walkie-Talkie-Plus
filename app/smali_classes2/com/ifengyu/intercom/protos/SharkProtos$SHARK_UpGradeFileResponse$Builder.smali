.class public final Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SharkProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private offset_:I

.field private result_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;->SHARK_UP_RESULT_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;->SHARK_UP_RESULT_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/SharkProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$11500()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->create()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->p()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;->access$11700()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/SharkProtos$1;)V

    iget v3, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;->access$11902(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;

    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->offset_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;->access$12002(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;I)I

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;->access$12102(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;I)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->onBuilt()V

    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;->SHARK_UP_RESULT_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->offset_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearOffset()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->offset_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public clearResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;->SHARK_UP_RESULT_OK:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->create()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->p()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->offset_:I

    return v0
.end method

.method public getResult()Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;

    return-object v0
.end method

.method public hasOffset()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->bitField0_:I

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

.method public hasResult()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->q()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;

    const-class v2, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setOffset(I)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->offset_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setResult(Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;)Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$SHARK_UP_UERR;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse$Builder;->onChanged()V

    return-object p0
.end method
