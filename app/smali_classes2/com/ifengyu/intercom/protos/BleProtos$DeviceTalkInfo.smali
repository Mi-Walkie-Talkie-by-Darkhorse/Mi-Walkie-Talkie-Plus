.class public final Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;
.super Lcom/google/protobuf/GeneratedMessage;
.source "BleProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/BleProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceTalkInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    }
.end annotation


# static fields
.field public static final BAND_FIELD_NUMBER:I = 0x3

.field public static final CURCHSEQ_FIELD_NUMBER:I = 0x9

.field public static final DOUBLECH_FIELD_NUMBER:I = 0x8

.field public static final ELIM_FIELD_NUMBER:I = 0x5

.field public static final LIMTTIME_FIELD_NUMBER:I = 0x6

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final POLITE_FIELD_NUMBER:I = 0x4

.field public static final SENSITY_FIELD_NUMBER:I = 0x7

.field public static final SQ_FIELD_NUMBER:I = 0x1

.field public static final VOX_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;


# instance fields
.field private band_:Lcom/ifengyu/intercom/protos/BleProtos$BandType;

.field private bitField0_:I

.field private curChSeq_:I

.field private doubleCh_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

.field private elim_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

.field private limtTime_:I

.field private polite_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

.field private sensity_:Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;

.field private sq_:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private vox_:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->defaultInstance:Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    .line 3
    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->initFields()V

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

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/BleProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$4300()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;Lcom/ifengyu/intercom/protos/BleProtos$SqType;)Lcom/ifengyu/intercom/protos/BleProtos$SqType;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->sq_:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;Lcom/ifengyu/intercom/protos/BleProtos$VoxType;)Lcom/ifengyu/intercom/protos/BleProtos$VoxType;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->vox_:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    return-object p1
.end method

.method static synthetic access$4702(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;Lcom/ifengyu/intercom/protos/BleProtos$BandType;)Lcom/ifengyu/intercom/protos/BleProtos$BandType;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->band_:Lcom/ifengyu/intercom/protos/BleProtos$BandType;

    return-object p1
.end method

.method static synthetic access$4802(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->polite_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->elim_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->limtTime_:I

    return p1
.end method

.method static synthetic access$5102(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;)Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->sensity_:Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;

    return-object p1
.end method

.method static synthetic access$5202(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;Lcom/ifengyu/intercom/protos/BleProtos$Switch;)Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->doubleCh_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object p1
.end method

.method static synthetic access$5302(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->curChSeq_:I

    return p1
.end method

.method static synthetic access$5402(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->defaultInstance:Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->n()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$SqType;->SQ_OFF:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->sq_:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$VoxType;->VOX_OFF:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->vox_:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$BandType;->BAND_NARROW:Lcom/ifengyu/intercom/protos/BleProtos$BandType;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->band_:Lcom/ifengyu/intercom/protos/BleProtos$BandType;

    .line 4
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$Switch;->OFF:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->polite_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 5
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->elim_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->limtTime_:I

    .line 7
    sget-object v2, Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;->MIC_LOW:Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;

    iput-object v2, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->sensity_:Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;

    .line 8
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->doubleCh_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    .line 9
    iput v1, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->curChSeq_:I

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;->access$4100()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    return-object p0
.end method


# virtual methods
.method public getBand()Lcom/ifengyu/intercom/protos/BleProtos$BandType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->band_:Lcom/ifengyu/intercom/protos/BleProtos$BandType;

    return-object v0
.end method

.method public getCurChSeq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->curChSeq_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;
    .locals 1

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->defaultInstance:Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    return-object v0
.end method

.method public getDoubleCh()Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->doubleCh_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object v0
.end method

.method public getElim()Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->elim_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object v0
.end method

.method public getLimtTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->limtTime_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPolite()Lcom/ifengyu/intercom/protos/BleProtos$Switch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->polite_:Lcom/ifengyu/intercom/protos/BleProtos$Switch;

    return-object v0
.end method

.method public getSensity()Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->sensity_:Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;

    return-object v0
.end method

.method public getSq()Lcom/ifengyu/intercom/protos/BleProtos$SqType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->sq_:Lcom/ifengyu/intercom/protos/BleProtos$SqType;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVox()Lcom/ifengyu/intercom/protos/BleProtos$VoxType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->vox_:Lcom/ifengyu/intercom/protos/BleProtos$VoxType;

    return-object v0
.end method

.method public hasBand()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->bitField0_:I

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

.method public hasCurChSeq()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDoubleCh()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasElim()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->bitField0_:I

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

.method public hasLimtTime()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPolite()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->bitField0_:I

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

.method public hasSensity()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSq()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasVox()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->o()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;

    const-class v2, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->newBuilderForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->newBuilderForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->newBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/BleProtos$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->toBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->toBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;
    .locals 1

    .line 3
    invoke-static {p0}, Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;->newBuilder(Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;)Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo$Builder;

    move-result-object v0

    return-object v0
.end method
