.class public Lcom/google/protobuf/ExtensionRegistry;
.super Lcom/google/protobuf/ExtensionRegistryLite;
.source "ExtensionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/ExtensionRegistry$1;,
        Lcom/google/protobuf/ExtensionRegistry$DescriptorIntPair;,
        Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/google/protobuf/ExtensionRegistry;


# instance fields
.field private final immutableExtensionsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final immutableExtensionsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/ExtensionRegistry$DescriptorIntPair;",
            "Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mutableExtensionsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mutableExtensionsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/ExtensionRegistry$DescriptorIntPair;",
            "Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/ExtensionRegistry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/ExtensionRegistry;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/ExtensionRegistry;->EMPTY:Lcom/google/protobuf/ExtensionRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/ExtensionRegistryLite;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->immutableExtensionsByName:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->mutableExtensionsByName:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->immutableExtensionsByNumber:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->mutableExtensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/ExtensionRegistryLite;-><init>(Lcom/google/protobuf/ExtensionRegistryLite;)V

    iget-object v0, p1, Lcom/google/protobuf/ExtensionRegistry;->immutableExtensionsByName:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->immutableExtensionsByName:Ljava/util/Map;

    iget-object v0, p1, Lcom/google/protobuf/ExtensionRegistry;->mutableExtensionsByName:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->mutableExtensionsByName:Ljava/util/Map;

    iget-object v0, p1, Lcom/google/protobuf/ExtensionRegistry;->immutableExtensionsByNumber:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->immutableExtensionsByNumber:Ljava/util/Map;

    iget-object v0, p1, Lcom/google/protobuf/ExtensionRegistry;->mutableExtensionsByNumber:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->mutableExtensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;-><init>(Lcom/google/protobuf/ExtensionRegistryLite;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->immutableExtensionsByName:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->mutableExtensionsByName:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->immutableExtensionsByNumber:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->mutableExtensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method private add(Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Lcom/google/protobuf/Extension$ExtensionType;)V
    .locals 5

    iget-object v0, p1, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ExtensionRegistry.add() was given a FieldDescriptor for a regular (non-extension) field."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/google/protobuf/ExtensionRegistry$1;->$SwitchMap$com$google$protobuf$Extension$ExtensionType:[I

    invoke-virtual {p2}, Lcom/google/protobuf/Extension$ExtensionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/google/protobuf/ExtensionRegistry;->immutableExtensionsByName:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->immutableExtensionsByNumber:Ljava/util/Map;

    :goto_1
    iget-object v2, p1, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/protobuf/ExtensionRegistry$DescriptorIntPair;

    iget-object v3, p1, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v3

    iget-object v4, p1, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/protobuf/ExtensionRegistry$DescriptorIntPair;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;I)V

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isOptional()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getExtensionScope()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/google/protobuf/ExtensionRegistry;->mutableExtensionsByName:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->mutableExtensionsByNumber:Ljava/util/Map;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistry;
    .locals 1

    sget-object v0, Lcom/google/protobuf/ExtensionRegistry;->EMPTY:Lcom/google/protobuf/ExtensionRegistry;

    return-object v0
.end method

.method static newExtensionInfo(Lcom/google/protobuf/Extension;)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Extension",
            "<**>;)",
            "Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/protobuf/Extension;->getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/Extension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Registered message-type extension had null default instance: "

    invoke-virtual {p0}, Lcom/google/protobuf/Extension;->getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    invoke-virtual {p0}, Lcom/google/protobuf/Extension;->getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/Extension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Message;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;Lcom/google/protobuf/ExtensionRegistry$1;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    new-instance v0, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    invoke-virtual {p0}, Lcom/google/protobuf/Extension;->getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;Lcom/google/protobuf/ExtensionRegistry$1;)V

    goto :goto_1
.end method

.method public static newInstance()Lcom/google/protobuf/ExtensionRegistry;
    .locals 1

    new-instance v0, Lcom/google/protobuf/ExtensionRegistry;

    invoke-direct {v0}, Lcom/google/protobuf/ExtensionRegistry;-><init>()V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ExtensionRegistry.add() must be provided a default instance when adding an embedded message extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    invoke-direct {v0, p1, v2, v2}, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;Lcom/google/protobuf/ExtensionRegistry$1;)V

    sget-object v1, Lcom/google/protobuf/Extension$ExtensionType;->IMMUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/ExtensionRegistry;->add(Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Lcom/google/protobuf/Extension$ExtensionType;)V

    sget-object v1, Lcom/google/protobuf/Extension$ExtensionType;->MUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/ExtensionRegistry;->add(Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Lcom/google/protobuf/Extension$ExtensionType;)V

    return-void
.end method

.method public add(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ExtensionRegistry.add() provided a default instance for a non-message extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;Lcom/google/protobuf/ExtensionRegistry$1;)V

    sget-object v1, Lcom/google/protobuf/Extension$ExtensionType;->IMMUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/ExtensionRegistry;->add(Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Lcom/google/protobuf/Extension$ExtensionType;)V

    return-void
.end method

.method public add(Lcom/google/protobuf/Extension;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Extension",
            "<**>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->getExtensionType()Lcom/google/protobuf/Extension$ExtensionType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Extension$ExtensionType;->IMMUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->getExtensionType()Lcom/google/protobuf/Extension$ExtensionType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Extension$ExtensionType;->MUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/ExtensionRegistry;->newExtensionInfo(Lcom/google/protobuf/Extension;)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/Extension;->getExtensionType()Lcom/google/protobuf/Extension$ExtensionType;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/ExtensionRegistry;->add(Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Lcom/google/protobuf/Extension$ExtensionType;)V

    goto :goto_0
.end method

.method public findExtensionByName(Ljava/lang/String;)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ExtensionRegistry;->findImmutableExtensionByName(Ljava/lang/String;)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v0

    return-object v0
.end method

.method public findExtensionByNumber(Lcom/google/protobuf/Descriptors$Descriptor;I)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/ExtensionRegistry;->findImmutableExtensionByNumber(Lcom/google/protobuf/Descriptors$Descriptor;I)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v0

    return-object v0
.end method

.method public findImmutableExtensionByName(Ljava/lang/String;)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->immutableExtensionsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    return-object v0
.end method

.method public findImmutableExtensionByNumber(Lcom/google/protobuf/Descriptors$Descriptor;I)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->immutableExtensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/google/protobuf/ExtensionRegistry$DescriptorIntPair;

    invoke-direct {v1, p1, p2}, Lcom/google/protobuf/ExtensionRegistry$DescriptorIntPair;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    return-object v0
.end method

.method public findMutableExtensionByName(Ljava/lang/String;)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->mutableExtensionsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    return-object v0
.end method

.method public findMutableExtensionByNumber(Lcom/google/protobuf/Descriptors$Descriptor;I)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->mutableExtensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/google/protobuf/ExtensionRegistry$DescriptorIntPair;

    invoke-direct {v1, p1, p2}, Lcom/google/protobuf/ExtensionRegistry$DescriptorIntPair;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    return-object v0
.end method

.method public getAllImmutableExtensionsByExtendedType(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->immutableExtensionsByNumber:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ExtensionRegistry$DescriptorIntPair;

    invoke-static {v0}, Lcom/google/protobuf/ExtensionRegistry$DescriptorIntPair;->access$000(Lcom/google/protobuf/ExtensionRegistry$DescriptorIntPair;)Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/protobuf/ExtensionRegistry;->immutableExtensionsByNumber:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getAllMutableExtensionsByExtendedType(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/google/protobuf/ExtensionRegistry;->mutableExtensionsByNumber:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ExtensionRegistry$DescriptorIntPair;

    invoke-static {v0}, Lcom/google/protobuf/ExtensionRegistry$DescriptorIntPair;->access$000(Lcom/google/protobuf/ExtensionRegistry$DescriptorIntPair;)Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/protobuf/ExtensionRegistry;->mutableExtensionsByNumber:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getUnmodifiable()Lcom/google/protobuf/ExtensionRegistry;
    .locals 1

    new-instance v0, Lcom/google/protobuf/ExtensionRegistry;

    invoke-direct {v0, p0}, Lcom/google/protobuf/ExtensionRegistry;-><init>(Lcom/google/protobuf/ExtensionRegistry;)V

    return-object v0
.end method

.method public bridge synthetic getUnmodifiable()Lcom/google/protobuf/ExtensionRegistryLite;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/ExtensionRegistry;->getUnmodifiable()Lcom/google/protobuf/ExtensionRegistry;

    move-result-object v0

    return-object v0
.end method
