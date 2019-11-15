.class public final Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SealProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SealProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SEAL_UpGradeFileResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$Builder;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;
    }
.end annotation


# static fields
.field public static final OFFSET_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;


# instance fields
.field private bitField0_:I

.field private offset_:I

.field private result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->defaultInstance:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->defaultInstance:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->initFields()V

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

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/SealProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$11400()Z
    .locals 1

    sget-boolean v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$11602(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;

    return-object p1
.end method

.method static synthetic access$11702(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->offset_:I

    return p1
.end method

.method static synthetic access$11802(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->defaultInstance:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->p()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;->SEAL_UP_RESULT_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->offset_:I

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$Builder;->access$11200()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->defaultInstance:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->offset_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getResult()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->result_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$SEAL_UP_UERR;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasOffset()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->bitField0_:I

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

.method public hasResult()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->bitField0_:I

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

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->q()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;

    const-class v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->newBuilderForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->newBuilderForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$Builder;
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/SealProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->toBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->toBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$Builder;
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;->newBuilder(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse$Builder;

    move-result-object v0

    return-object v0
.end method
