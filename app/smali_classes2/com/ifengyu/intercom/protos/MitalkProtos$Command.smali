.class public final Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/ifengyu/intercom/protos/MitalkProtos$CommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/MitalkProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    }
.end annotation


# static fields
.field public static final CONNECTQUERY_FIELD_NUMBER:I = 0x1

.field public static final CONNECTRESP_FIELD_NUMBER:I = 0x2

.field public static final CONTROL_FIELD_NUMBER:I = 0x4

.field public static final FILEPACK_FIELD_NUMBER:I = 0xd

.field public static final FILEREQ_FIELD_NUMBER:I = 0xc

.field public static final FILERESP_FIELD_NUMBER:I = 0xe

.field public static final HEARTBEAT_FIELD_NUMBER:I = 0x3

.field public static final LOCATIONCTL_FIELD_NUMBER:I = 0xb

.field public static final LOCATIONSYNC_FIELD_NUMBER:I = 0xa

.field public static final LOGREQ_FIELD_NUMBER:I = 0xf

.field public static final PARAMQUERY_FIELD_NUMBER:I = 0x5

.field public static final PARAMRESP_FIELD_NUMBER:I = 0x7

.field public static final PARAMUPDATE_FIELD_NUMBER:I = 0x6

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Command;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATEQUERY_FIELD_NUMBER:I = 0x8

.field public static final STATERESP_FIELD_NUMBER:I = 0x9

.field public static final TESTREQ_FIELD_NUMBER:I = 0x10

.field public static final TESTRESP_FIELD_NUMBER:I = 0x11

.field public static final UPDATERESPONSE_FIELD_NUMBER:I = 0x12

.field private static final defaultInstance:Lcom/ifengyu/intercom/protos/MitalkProtos$Command;


# instance fields
.field private bitField0_:I

.field private connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

.field private connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

.field private control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

.field private filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

.field private fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

.field private fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

.field private heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

.field private locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

.field private locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

.field private logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

.field private paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

.field private paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

.field private paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

.field private stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

.field private stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

.field private testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

.field private testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;-><init>(Z)V

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->defaultInstance:Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->initFields()V

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

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/MitalkProtos$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1002(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;)Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;)Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;)Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->bitField0_:I

    return p1
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$602(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    return-object p1
.end method

.method static synthetic access$702(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    return-object p1
.end method

.method static synthetic access$802(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$Control;)Lcom/ifengyu/intercom/protos/MitalkProtos$Control;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    return-object p1
.end method

.method static synthetic access$902(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$Control;)Lcom/ifengyu/intercom/protos/MitalkProtos$Control;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->defaultInstance:Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    return-void
.end method

.method public static newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->access$200()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    return-object p0
.end method


# virtual methods
.method public getConnectQuery()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    return-object v0
.end method

.method public getConnectQueryOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ConnectOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    return-object v0
.end method

.method public getConnectResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    return-object v0
.end method

.method public getConnectRespOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ConnectOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    return-object v0
.end method

.method public getControl()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    return-object v0
.end method

.method public getControlOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ControlOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->defaultInstance:Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    return-object v0
.end method

.method public getFilePack()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    return-object v0
.end method

.method public getFilePackOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePackOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    return-object v0
.end method

.method public getFileReq()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    return-object v0
.end method

.method public getFileReqOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequestOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    return-object v0
.end method

.method public getFileResp()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    return-object v0
.end method

.method public getFileRespOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponseOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    return-object v0
.end method

.method public getHeartbeat()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    return-object v0
.end method

.method public getHeartbeatOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ControlOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    return-object v0
.end method

.method public getLocationCtl()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    return-object v0
.end method

.method public getLocationCtlOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSyncOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    return-object v0
.end method

.method public getLocationSync()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    return-object v0
.end method

.method public getLocationSyncOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSyncOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    return-object v0
.end method

.method public getLogReq()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    return-object v0
.end method

.method public getLogReqOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequestOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    return-object v0
.end method

.method public getParamQuery()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    return-object v0
.end method

.method public getParamQueryOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    return-object v0
.end method

.method public getParamResp()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    return-object v0
.end method

.method public getParamRespOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    return-object v0
.end method

.method public getParamUpdate()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    return-object v0
.end method

.method public getParamUpdateOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Command;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getStateQuery()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    return-object v0
.end method

.method public getStateQueryOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdateOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    return-object v0
.end method

.method public getStateResp()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    return-object v0
.end method

.method public getStateRespOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdateOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    return-object v0
.end method

.method public getTestReq()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    return-object v0
.end method

.method public getTestReqOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTestOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    return-object v0
.end method

.method public getTestResp()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    return-object v0
.end method

.method public getTestRespOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTestOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUpdateResponse()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    return-object v0
.end method

.method public getUpdateResponseOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponseOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    return-object v0
.end method

.method public hasConnectQuery()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasConnectResp()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->bitField0_:I

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

.method public hasControl()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->bitField0_:I

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

.method public hasFilePack()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->bitField0_:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFileReq()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->bitField0_:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFileResp()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->bitField0_:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeartbeat()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->bitField0_:I

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

.method public hasLocationCtl()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLocationSync()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLogReq()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->bitField0_:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasParamQuery()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->bitField0_:I

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

.method public hasParamResp()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->bitField0_:I

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

.method public hasParamUpdate()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->bitField0_:I

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

.method public hasStateQuery()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->bitField0_:I

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

.method public hasStateResp()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->bitField0_:I

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

.method public hasTestReq()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTestResp()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUpdateResponse()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->bitField0_:I

    const/high16 v1, 0x20000

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

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->b()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    const-class v2, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilderForType()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilderForType()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/MitalkProtos$a;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->toBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->toBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method
