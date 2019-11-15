.class public final Lcom/google/protobuf/DynamicMessage;
.super Lcom/google/protobuf/AbstractMessage;
.source "DynamicMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DynamicMessage$Builder;
    }
.end annotation


# instance fields
.field private final fields:Lcom/google/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedSize:I

.field private final oneofCases:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

.field private final type:Lcom/google/protobuf/Descriptors$Descriptor;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method constructor <init>(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/FieldSet;[Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/UnknownFieldSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$Descriptor;",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;[",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Lcom/google/protobuf/UnknownFieldSet;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessage;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/DynamicMessage;->memoizedSize:I

    iput-object p1, p0, Lcom/google/protobuf/DynamicMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    iput-object p2, p0, Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;

    iput-object p3, p0, Lcom/google/protobuf/DynamicMessage;->oneofCases:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    iput-object p4, p0, Lcom/google/protobuf/DynamicMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$200(Lcom/google/protobuf/DynamicMessage;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/protobuf/DynamicMessage;)Lcom/google/protobuf/FieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/protobuf/DynamicMessage;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/protobuf/DynamicMessage;)[Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->oneofCases:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    return-object v0
.end method

.method public static getDefaultInstance(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage;
    .locals 4

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$Descriptor;->toProto()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->getOneofDeclCount()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/Descriptors$FieldDescriptor;

    new-instance v1, Lcom/google/protobuf/DynamicMessage;

    invoke-static {}, Lcom/google/protobuf/FieldSet;->emptySet()Lcom/google/protobuf/FieldSet;

    move-result-object v2

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/google/protobuf/DynamicMessage;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/FieldSet;[Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/UnknownFieldSet;)V

    return-object v1
.end method

.method static isInitialized(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/FieldSet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$Descriptor;",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/FieldSet;->hasField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->isInitialized()Z

    move-result v0

    goto :goto_0
.end method

.method public static newBuilder(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage$Builder;
    .locals 2

    new-instance v0, Lcom/google/protobuf/DynamicMessage$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/DynamicMessage$Builder;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/DynamicMessage$1;)V

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DynamicMessage$Builder;
    .locals 3

    new-instance v0, Lcom/google/protobuf/DynamicMessage$Builder;

    invoke-interface {p0}, Lcom/google/protobuf/Message;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/DynamicMessage$Builder;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/DynamicMessage$1;)V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DynamicMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/DynamicMessage;->newBuilder(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DynamicMessage$Builder;

    invoke-static {v0}, Lcom/google/protobuf/DynamicMessage$Builder;->access$000(Lcom/google/protobuf/DynamicMessage$Builder;)Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistry;)Lcom/google/protobuf/DynamicMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/DynamicMessage;->newBuilder(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DynamicMessage$Builder;

    invoke-static {v0}, Lcom/google/protobuf/DynamicMessage$Builder;->access$000(Lcom/google/protobuf/DynamicMessage$Builder;)Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/DynamicMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/DynamicMessage;->newBuilder(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DynamicMessage$Builder;

    invoke-static {v0}, Lcom/google/protobuf/DynamicMessage$Builder;->access$000(Lcom/google/protobuf/DynamicMessage$Builder;)Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistry;)Lcom/google/protobuf/DynamicMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/DynamicMessage;->newBuilder(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DynamicMessage$Builder;

    invoke-static {v0}, Lcom/google/protobuf/DynamicMessage$Builder;->access$000(Lcom/google/protobuf/DynamicMessage$Builder;)Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/Descriptors$Descriptor;Ljava/io/InputStream;)Lcom/google/protobuf/DynamicMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/DynamicMessage;->newBuilder(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DynamicMessage$Builder;

    invoke-static {v0}, Lcom/google/protobuf/DynamicMessage$Builder;->access$000(Lcom/google/protobuf/DynamicMessage$Builder;)Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/Descriptors$Descriptor;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistry;)Lcom/google/protobuf/DynamicMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/DynamicMessage;->newBuilder(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DynamicMessage$Builder;

    invoke-static {v0}, Lcom/google/protobuf/DynamicMessage$Builder;->access$000(Lcom/google/protobuf/DynamicMessage$Builder;)Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/Descriptors$Descriptor;[B)Lcom/google/protobuf/DynamicMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/DynamicMessage;->newBuilder(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DynamicMessage$Builder;

    invoke-static {v0}, Lcom/google/protobuf/DynamicMessage$Builder;->access$000(Lcom/google/protobuf/DynamicMessage$Builder;)Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/Descriptors$Descriptor;[BLcom/google/protobuf/ExtensionRegistry;)Lcom/google/protobuf/DynamicMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/DynamicMessage;->newBuilder(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DynamicMessage$Builder;

    invoke-static {v0}, Lcom/google/protobuf/DynamicMessage$Builder;->access$000(Lcom/google/protobuf/DynamicMessage$Builder;)Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method private verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/DynamicMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private verifyOneofContainingType(Lcom/google/protobuf/Descriptors$OneofDescriptor;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$OneofDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/DynamicMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OneofDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAllFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->getAllFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DynamicMessage;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/google/protobuf/DynamicMessage;->getDefaultInstance(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage;->getDefaultInstanceForType()Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage;->getDefaultInstanceForType()Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/DynamicMessage;->getDefaultInstance(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMessage;->verifyOneofContainingType(Lcom/google/protobuf/Descriptors$OneofDescriptor;)V

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->oneofCases:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/DynamicMessage;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/DynamicMessage$1;

    invoke-direct {v0, p0}, Lcom/google/protobuf/DynamicMessage$1;-><init>(Lcom/google/protobuf/DynamicMessage;)V

    return-object v0
.end method

.method public getRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->getRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result v0

    return v0
.end method

.method public getSerializedSize()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/DynamicMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/DynamicMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSizeAsMessageSet()I

    move-result v1

    add-int/2addr v0, v1

    :goto_1
    iput v0, p0, Lcom/google/protobuf/DynamicMessage;->memoizedSize:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->getSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/DynamicMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->hasField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v0

    return v0
.end method

.method public hasOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMessage;->verifyOneofContainingType(Lcom/google/protobuf/Descriptors$OneofDescriptor;)V

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->oneofCases:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    iget-object v1, p0, Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-static {v0, v1}, Lcom/google/protobuf/DynamicMessage;->isInitialized(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/FieldSet;)Z

    move-result v0

    return v0
.end method

.method public newBuilderForType()Lcom/google/protobuf/DynamicMessage$Builder;
    .locals 3

    new-instance v0, Lcom/google/protobuf/DynamicMessage$Builder;

    iget-object v1, p0, Lcom/google/protobuf/DynamicMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/DynamicMessage$Builder;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/DynamicMessage$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage;->newBuilderForType()Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage;->newBuilderForType()Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/DynamicMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage;->newBuilderForType()Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage;->toBuilder()Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage;->toBuilder()Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->writeMessageSetTo(Lcom/google/protobuf/CodedOutputStream;)V

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeAsMessageSetTo(Lcom/google/protobuf/CodedOutputStream;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    goto :goto_0
.end method
