.class public final Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "LiteProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/LiteProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OtaRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;,
        Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;,
        Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;
    }
.end annotation


# static fields
.field public static final FCMD_FIELD_NUMBER:I = 0x2

.field public static final FCRC32_FIELD_NUMBER:I = 0x5

.field public static final FSIZE_FIELD_NUMBER:I = 0x4

.field public static final FTYPE_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;


# instance fields
.field private bitField0_:I

.field private fCmd_:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

.field private fCrc32_:I

.field private fSize_:I

.field private fType_:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->defaultInstance:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    .line 3
    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->initFields()V

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

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/LiteProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$14800()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$15002(Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->version_:I

    return p1
.end method

.method static synthetic access$15102(Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->fCmd_:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    return-object p1
.end method

.method static synthetic access$15202(Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->fType_:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;

    return-object p1
.end method

.method static synthetic access$15302(Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->fSize_:I

    return p1
.end method

.method static synthetic access$15402(Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->fCrc32_:I

    return p1
.end method

.method static synthetic access$15502(Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->defaultInstance:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->n()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->version_:I

    .line 2
    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;->START:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->fCmd_:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    .line 3
    sget-object v1, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;->APP_UPGRADE_FILE:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;

    iput-object v1, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->fType_:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;

    .line 4
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->fSize_:I

    .line 5
    iput v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->fCrc32_:I

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;->access$14600()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;
    .locals 1

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;
    .locals 1

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->defaultInstance:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;

    return-object v0
.end method

.method public getFCmd()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->fCmd_:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_CMD;

    return-object v0
.end method

.method public getFCrc32()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->fCrc32_:I

    return v0
.end method

.method public getFSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->fSize_:I

    return v0
.end method

.method public getFType()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->fType_:Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$FILE_TYPE;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->version_:I

    return v0
.end method

.method public hasFCmd()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->bitField0_:I

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
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->bitField0_:I

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
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->bitField0_:I

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
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->bitField0_:I

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
    iget v0, p0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->bitField0_:I

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

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->newBuilderForType()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->newBuilderForType()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->newBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/LiteProtos$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->toBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->toBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;
    .locals 1

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;->newBuilder(Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;)Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest$Builder;

    move-result-object v0

    return-object v0
.end method
