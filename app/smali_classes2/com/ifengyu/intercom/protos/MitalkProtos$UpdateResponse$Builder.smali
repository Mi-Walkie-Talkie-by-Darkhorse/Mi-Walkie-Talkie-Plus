.class public final Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MitalkProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private ack_:I

.field private bitField0_:I

.field private result_:Z

.field private state_:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->PREPARE:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->state_:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->PREPARE:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->state_:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/MitalkProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$17000()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->create()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->z()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->access$17200()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/MitalkProtos$1;)V

    iget v3, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->state_:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->access$17402(Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-boolean v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->result_:Z

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->access$17502(Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;Z)Z

    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->ack_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->access$17602(Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;I)I

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->access$17702(Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;I)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->onBuilt()V

    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->PREPARE:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->state_:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->bitField0_:I

    iput-boolean v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->result_:Z

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->ack_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAck()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->ack_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public clearResult()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->result_:Z

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public clearState()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->PREPARE:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->state_:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->create()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAck()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->ack_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->z()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->result_:Z

    return v0
.end method

.method public getState()Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->state_:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    return-object v0
.end method

.method public hasAck()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->bitField0_:I

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

.method public hasState()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->A()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    const-class v2, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setAck(I)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->ack_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setResult(Z)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->bitField0_:I

    iput-boolean p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->result_:Z

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public setState(Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->state_:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->onChanged()V

    return-object p0
.end method
