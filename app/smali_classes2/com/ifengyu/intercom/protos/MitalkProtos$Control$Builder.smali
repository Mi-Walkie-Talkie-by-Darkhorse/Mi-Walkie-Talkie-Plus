.class public final Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MitalkProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/MitalkProtos$ControlOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/MitalkProtos$Control;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$ControlOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private ctrlCode_:Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;

.field private version_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;->RSTDEVICE:Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->ctrlCode_:Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;->RSTDEVICE:Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->ctrlCode_:Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/MitalkProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$3700()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->create()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->f()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->access$3900()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/MitalkProtos$1;)V

    iget v3, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_1

    :goto_0
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->version_:I

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->access$4102(Lcom/ifengyu/intercom/protos/MitalkProtos$Control;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->ctrlCode_:Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->access$4202(Lcom/ifengyu/intercom/protos/MitalkProtos$Control;Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->access$4302(Lcom/ifengyu/intercom/protos/MitalkProtos$Control;I)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->onBuilt()V

    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->version_:I

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;->RSTDEVICE:Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->ctrlCode_:Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearCtrlCode()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->bitField0_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;->RSTDEVICE:Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->ctrlCode_:Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVersion()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->version_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->create()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCtrlCode()Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->ctrlCode_:Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->f()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->version_:I

    return v0
.end method

.method public hasCtrlCode()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->bitField0_:I

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

    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->g()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    const-class v2, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public setCtrlCode(Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->ctrlCode_:Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->onChanged()V

    return-object p0
.end method

.method public setVersion(I)Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->bitField0_:I

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->version_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->onChanged()V

    return-object p0
.end method
