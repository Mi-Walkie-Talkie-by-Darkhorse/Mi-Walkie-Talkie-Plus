.class public final Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MitalkProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/MitalkProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;
    }
.end annotation


# static fields
.field public static final ACK_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_FIELD_NUMBER:I = 0x2

.field public static final STATE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;


# instance fields
.field private ack_:I

.field private bitField0_:I

.field private result_:Z

.field private state_:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->defaultInstance:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->defaultInstance:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->initFields()V

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

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/MitalkProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$17200()Z
    .locals 1

    sget-boolean v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$17402(Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;)Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->state_:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    return-object p1
.end method

.method static synthetic access$17502(Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->result_:Z

    return p1
.end method

.method static synthetic access$17602(Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->ack_:I

    return p1
.end method

.method static synthetic access$17702(Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->defaultInstance:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->z()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;->PREPARE:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->state_:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    iput-boolean v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->result_:Z

    iput v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->ack_:I

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->access$17000()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    return-object v0
.end method


# virtual methods
.method public getAck()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->ack_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->defaultInstance:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->result_:Z

    return v0
.end method

.method public getState()Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->state_:Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAck()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->bitField0_:I

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

.method public hasResult()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->bitField0_:I

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

.method public hasState()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->bitField0_:I

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

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->A()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    const-class v2, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->newBuilderForType()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->newBuilderForType()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/MitalkProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->toBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->toBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method
