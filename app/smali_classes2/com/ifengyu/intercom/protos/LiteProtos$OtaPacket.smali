.class public final Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;
.super Lcom/google/protobuf/GeneratedMessage;
.source "LiteProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacketOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/LiteProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OtaPacket"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket$Builder;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x2

.field public static final OFFSET_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;


# instance fields
.field private bitField0_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private offset_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->defaultInstance:Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;

    .line 3
    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/LiteProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$16900()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$17102(Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->offset_:I

    return p1
.end method

.method static synthetic access$17202(Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->data_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$17302(Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->defaultInstance:Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->r()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->offset_:I

    .line 2
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket$Builder;->access$16700()Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket$Builder;
    .locals 1

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;

    return-object p0
.end method


# virtual methods
.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;
    .locals 1

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->defaultInstance:Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->offset_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasData()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->bitField0_:I

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

.method public hasOffset()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->bitField0_:I

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
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->s()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;

    const-class v2, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->newBuilderForType()Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->newBuilderForType()Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/LiteProtos$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->toBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->toBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket$Builder;
    .locals 1

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;->newBuilder(Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket$Builder;

    move-result-object v0

    return-object v0
.end method