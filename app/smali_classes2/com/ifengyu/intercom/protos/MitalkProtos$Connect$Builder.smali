.class public final Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MitalkProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/MitalkProtos$ConnectOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$ConnectOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private connCode_:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

.field private deviceId_:I

.field private version_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->DISCONNECT:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->connCode_:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 6
    sget-object p1, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->DISCONNECT:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->connCode_:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/MitalkProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2700()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->create()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->q()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->access$2900()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;
    .locals 5

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/MitalkProtos$a;)V

    .line 4
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->version_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->access$3102(Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->connCode_:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->access$3202(Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->deviceId_:I

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->access$3302(Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;I)I

    .line 8
    invoke-static {v0, v3}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->access$3402(Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;I)I

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->version_:I

    .line 7
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->bitField0_:I

    .line 8
    sget-object v2, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->DISCONNECT:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->connCode_:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    and-int/lit8 v1, v1, -0x3

    .line 9
    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->bitField0_:I

    .line 10
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->deviceId_:I

    and-int/lit8 v0, v1, -0x5

    .line 11
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearConnCode()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;->DISCONNECT:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->connCode_:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDeviceId()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->deviceId_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersion()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->version_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;
    .locals 2

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->create()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConnCode()Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->connCode_:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;
    .locals 1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->q()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->deviceId_:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->version_:I

    return v0
.end method

.method public hasConnCode()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->bitField0_:I

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

.method public hasDeviceId()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->bitField0_:I

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
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->r()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    const-class v2, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setConnCode(Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->bitField0_:I

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->connCode_:Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public setDeviceId(I)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->deviceId_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->version_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
