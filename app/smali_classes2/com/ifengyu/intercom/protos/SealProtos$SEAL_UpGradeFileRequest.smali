.class public final Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SealProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/SealProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SEAL_UpGradeFileRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;
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
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;


# instance fields
.field private bitField0_:I

.field private fCmd_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

.field private fCrc32_:I

.field private fSize_:I

.field private fType_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->defaultInstance:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->defaultInstance:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->initFields()V

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

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/SealProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$10200()Z
    .locals 1

    sget-boolean v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$10402(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->version_:I

    return p1
.end method

.method static synthetic access$10502(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->fCmd_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    return-object p1
.end method

.method static synthetic access$10602(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->fType_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    return-object p1
.end method

.method static synthetic access$10702(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->fSize_:I

    return p1
.end method

.method static synthetic access$10802(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->fCrc32_:I

    return p1
.end method

.method static synthetic access$10902(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->defaultInstance:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->n()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->version_:I

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;->SEAL_UP_START:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->fCmd_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;->SEAL_APP_UPGRADE_FILE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->fType_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->fSize_:I

    iput v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->fCrc32_:I

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->access$10000()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->defaultInstance:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    return-object v0
.end method

.method public getFCmd()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->fCmd_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILECMD;

    return-object v0
.end method

.method public getFCrc32()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->fCrc32_:I

    return v0
.end method

.method public getFSize()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->fSize_:I

    return v0
.end method

.method public getFType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->fType_:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$SEAL_FILETYPE;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->version_:I

    return v0
.end method

.method public hasFCmd()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->bitField0_:I

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

.method public hasFCrc32()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFSize()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFType()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->bitField0_:I

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

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->o()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;

    const-class v2, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->newBuilderForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->newBuilderForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->newBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/SealProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->toBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->toBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;->newBuilder(Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;)Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest$Builder;

    move-result-object v0

    return-object v0
.end method
