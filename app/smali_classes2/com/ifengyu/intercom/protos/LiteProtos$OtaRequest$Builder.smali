.class public final Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "LiteProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private fCmd_:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

.field private fCrc32_:I

.field private fSize_:I

.field private fType_:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;

.field private version_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->START:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->fCmd_:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    .line 4
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;->APP_UPGRADE_FILE:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->fType_:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 7
    sget-object p1, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->START:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->fCmd_:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    .line 8
    sget-object p1, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;->APP_UPGRADE_FILE:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->fType_:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;

    .line 9
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/LiteProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$14600()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->create()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->n()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->access$14800()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->build()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;
    .locals 5

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/LiteProtos$a;)V

    .line 4
    iget v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->version_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->access$15002(Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->fCmd_:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->access$15102(Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->fType_:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->access$15202(Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 8
    :cond_3
    iget v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->fSize_:I

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->access$15302(Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;I)I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 9
    :cond_4
    iget v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->fCrc32_:I

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->access$15402(Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;I)I

    .line 10
    invoke-static {v0, v3}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->access$15502(Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;I)I

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->clear()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->clear()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->clear()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->clear()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->version_:I

    .line 7
    iget v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    .line 8
    sget-object v2, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->START:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->fCmd_:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    and-int/lit8 v1, v1, -0x3

    .line 9
    iput v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    .line 10
    sget-object v2, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;->APP_UPGRADE_FILE:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->fType_:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;

    and-int/lit8 v1, v1, -0x5

    .line 11
    iput v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    .line 12
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->fSize_:I

    and-int/lit8 v1, v1, -0x9

    .line 13
    iput v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    .line 14
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->fCrc32_:I

    and-int/lit8 v0, v1, -0x11

    .line 15
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearFCmd()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->START:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->fCmd_:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFCrc32()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->fCrc32_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFSize()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->fSize_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFType()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;->APP_UPGRADE_FILE:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->fType_:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersion()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->version_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;
    .locals 2

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->create()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->clone()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;
    .locals 1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->n()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFCmd()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->fCmd_:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    return-object v0
.end method

.method public getFCrc32()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->fCrc32_:I

    return v0
.end method

.method public getFSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->fSize_:I

    return v0
.end method

.method public getFType()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->fType_:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->version_:I

    return v0
.end method

.method public hasFCmd()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

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

.method public hasFCrc32()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

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

.method public hasFSize()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

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

.method public hasFType()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

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
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

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
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->o()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    const-class v2, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setFCmd(Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->fCmd_:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setFCrc32(I)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->fCrc32_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setFSize(I)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->fSize_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setFType(Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->fType_:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersion(I)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->bitField0_:I

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->version_:I

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
