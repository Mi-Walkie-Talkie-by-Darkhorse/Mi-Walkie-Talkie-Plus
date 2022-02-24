.class public final Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "LiteProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/LiteProtos$DevRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/LiteProtos$DevRequestOrBuilder;"
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

.field private version_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/LiteProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$7000()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->create()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->z()Lcom/google/protobuf/Descriptors$Descriptor;

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

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->getDevInfo()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;->access$7200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->getDevInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;
    .locals 4

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/LiteProtos$a;)V

    .line 4
    iget v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->version_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;->access$7402(Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;I)I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;->access$7502(Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;->access$7502(Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    .line 9
    :goto_1
    invoke-static {v0, v3}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;->access$7602(Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;I)I

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->clear()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->clear()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->clear()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->clear()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;
    .locals 1

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->version_:I

    .line 7
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->bitField0_:I

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearDevInfo()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearVersion()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->version_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;
    .locals 2

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->create()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;

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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;
    .locals 1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->z()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDevInfo()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    return-object v0
.end method

.method public getDevInfoBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->bitField0_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->getDevInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    return-object v0
.end method

.method public getDevInfoOrBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfoOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfoOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->version_:I

    return v0
.end method

.method public hasDevInfo()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->bitField0_:I

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

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->bitField0_:I

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

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->A()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;

    const-class v2, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public mergeDevInfo(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->getDefaultInstance()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;->newBuilder(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;)Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public setDevInfo(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public setDevInfo(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->devInfo_:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public setVersion(I)Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest$Builder;->version_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
