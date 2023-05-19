.class public final Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "BleProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperateOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private operate_:Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperateType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperateType;->TURN_DOWN:Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperateType;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->operate_:Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperateType;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 6
    sget-object p1, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperateType;->TURN_DOWN:Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperateType;

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->operate_:Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperateType;

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/BleProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$9600()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->create()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->x()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate;->access$9800()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->build()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate;

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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate;
    .locals 3

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/BleProtos$a;)V

    .line 4
    iget v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->operate_:Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperateType;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate;->access$10002(Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate;Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperateType;)Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperateType;

    .line 6
    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate;->access$10102(Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate;I)I

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->clear()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->clear()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->clear()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->clear()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;
    .locals 1

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 6
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperateType;->TURN_DOWN:Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperateType;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->operate_:Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperateType;

    .line 7
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearOperate()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->bitField0_:I

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperateType;->TURN_DOWN:Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperateType;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->operate_:Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperateType;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;
    .locals 2

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->create()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;

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
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->clone()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate;
    .locals 1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->x()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getOperate()Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperateType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->operate_:Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperateType;

    return-object v0
.end method

.method public hasOperate()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->bitField0_:I

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
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->y()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate;

    const-class v2, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setOperate(Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperateType;)Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->bitField0_:I

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate$Builder;->operate_:Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperateType;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method
