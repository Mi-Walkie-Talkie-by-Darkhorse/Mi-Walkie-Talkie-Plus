.class public final Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lcom/ifengyu/intercom/protos/LiteProtos$DevResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/LiteProtos$DevResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private devInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;",
            "Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;",
            "Lcom/ifengyu/intercom/protos/LiteProtos$DevInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

.field private result_:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

.field private version_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;->FAIL:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    sget-object p1, Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;->FAIL:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/LiteProtos$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$7900()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->create()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->B()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getDevInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;",
            "Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;",
            "Lcom/ifengyu/intercom/protos/LiteProtos$DevInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->getDevInfo()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;->access$8100()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->getDevInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;

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

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;
    .locals 5

    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/LiteProtos$a;)V

    iget v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->version_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;->access$8302(Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;->access$8402(Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;)Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;->access$8502(Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;->access$8502(Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    :goto_1
    invoke-static {v0, v3}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;->access$8602(Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->clear()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->clear()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->clear()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->clear()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->version_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;->FAIL:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearDevInfo()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearResult()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;->FAIL:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersion()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->version_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->create()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->B()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDevInfo()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    return-object v0
.end method

.method public getDevInfoBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->getDevInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    return-object v0
.end method

.method public getDevInfoOrBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfoOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    return-object v0
.end method

.method public getResult()Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->version_:I

    return v0
.end method

.method public hasDevInfo()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

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

.method public hasResult()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->C()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;

    const-class v2, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public mergeDevInfo(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;)Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->newBuilder(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public setDevInfo(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public setDevInfo(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;)Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public setResult(Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;)Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->result_:Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setVersion(I)Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse$Builder;->version_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
