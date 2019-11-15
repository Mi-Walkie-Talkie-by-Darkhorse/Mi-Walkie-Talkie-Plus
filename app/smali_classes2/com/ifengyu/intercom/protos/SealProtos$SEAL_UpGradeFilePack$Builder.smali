.class public final Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SealProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePackOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePackOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private offset_:I

.field private xor_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->data_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->data_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/SealProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$12100()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->create()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->r()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;->access$12300()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/SealProtos$1;)V

    iget v3, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    :goto_0
    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->offset_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;->access$12502(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->data_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;->access$12602(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->xor_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;->access$12702(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;I)I

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;->access$12802(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;I)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->onBuilt()V

    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->offset_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->data_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->bitField0_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->xor_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearData()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->bitField0_:I

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->data_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOffset()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->offset_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->onChanged()V

    return-object p0
.end method

.method public clearXor()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->xor_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->create()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->clone()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;->getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->r()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->offset_:I

    return v0
.end method

.method public getXor()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->xor_:I

    return v0
.end method

.method public hasData()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->bitField0_:I

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

.method public hasOffset()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasXor()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->s()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;

    const-class v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->data_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->onChanged()V

    return-object p0
.end method

.method public setOffset(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->offset_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->onChanged()V

    return-object p0
.end method

.method public setXor(I)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->xor_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack$Builder;->onChanged()V

    return-object p0
.end method
