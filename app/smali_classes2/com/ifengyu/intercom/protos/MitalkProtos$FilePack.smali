.class public final Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MitalkProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/MitalkProtos$FilePackOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/MitalkProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FilePack"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEQ_FIELD_NUMBER:I = 0x1

.field public static final XOR_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;


# instance fields
.field private bitField0_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private seq_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private xor_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->defaultInstance:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->defaultInstance:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/MitalkProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$13600()Z
    .locals 1

    sget-boolean v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$13802(Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->seq_:I

    return p1
.end method

.method static synthetic access$13902(Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->xor_:I

    return p1
.end method

.method static synthetic access$14002(Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->data_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$14102(Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->defaultInstance:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->r()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->seq_:I

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->xor_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;->access$13400()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    return-object v0
.end method


# virtual methods
.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->defaultInstance:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSeq()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->seq_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getXor()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->xor_:I

    return v0
.end method

.method public hasData()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->bitField0_:I

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

.method public hasSeq()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->bitField0_:I

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

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->s()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    const-class v2, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->newBuilderForType()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->newBuilderForType()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/MitalkProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->toBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->toBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    move-result-object v0

    return-object v0
.end method
