.class public final Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MitalkProtos.java"

# interfaces
.implements Lcom/ifengyu/intercom/protos/MitalkProtos$CommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;",
        ">;",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$CommandOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ConnectOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

.field private connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ConnectOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

.field private controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Control;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ControlOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

.field private filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FilePackOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

.field private fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequestOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

.field private fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponseOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

.field private heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Control;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ControlOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

.field private locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSyncOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

.field private locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSyncOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

.field private logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequestOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

.field private paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

.field private paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

.field private paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

.field private stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdateOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

.field private stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdateOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

.field private testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTestOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

.field private testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTestOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

.field private updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponseOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/MitalkProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->create()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;-><init>()V

    return-object v0
.end method

.method private getConnectQueryFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ConnectOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getConnectQuery()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getConnectRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ConnectOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getConnectResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getControlFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Control;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ControlOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getControl()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->b()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getFilePackFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FilePackOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getFilePack()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getFileReqFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequestOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getFileReq()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getFileRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponseOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getFileResp()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getHeartbeatFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Control;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ControlOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getHeartbeat()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getLocationCtlFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSyncOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getLocationCtl()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getLocationSyncFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSyncOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getLocationSync()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getLogReqFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequestOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getLogReq()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getParamQueryFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParamQuery()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getParamRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParamResp()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getParamUpdateFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParamUpdate()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getStateQueryFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdateOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getStateQuery()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getStateRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdateOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getStateResp()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getTestReqFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTestOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getTestReq()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getTestRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTestOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getTestResp()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getUpdateResponseFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponseOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getUpdateResponse()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getConnectQueryFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getConnectRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getHeartbeatFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getControlFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParamQueryFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParamUpdateFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParamRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getStateQueryFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getStateRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getLocationSyncFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getLocationCtlFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getFileReqFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getFilePackFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getFileRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getLogReqFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getTestReqFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getTestRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getUpdateResponseFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 8

    const/4 v0, 0x1

    const/high16 v7, 0x20000

    const/high16 v6, 0x10000

    const v5, 0x8000

    new-instance v2, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/MitalkProtos$1;)V

    iget v3, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_0

    move v1, v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$602(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    :goto_0
    and-int/lit8 v0, v3, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$702(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    :goto_1
    and-int/lit8 v0, v3, 0x4

    const/4 v4, 0x4

    if-ne v0, v4, :cond_2

    or-int/lit8 v1, v1, 0x4

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$802(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$Control;)Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    :goto_2
    and-int/lit8 v0, v3, 0x8

    const/16 v4, 0x8

    if-ne v0, v4, :cond_3

    or-int/lit8 v1, v1, 0x8

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$902(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$Control;)Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    :goto_3
    and-int/lit8 v0, v3, 0x10

    const/16 v4, 0x10

    if-ne v0, v4, :cond_4

    or-int/lit8 v1, v1, 0x10

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1002(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    :goto_4
    and-int/lit8 v0, v3, 0x20

    const/16 v4, 0x20

    if-ne v0, v4, :cond_5

    or-int/lit8 v1, v1, 0x20

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1102(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    :goto_5
    and-int/lit8 v0, v3, 0x40

    const/16 v4, 0x40

    if-ne v0, v4, :cond_6

    or-int/lit8 v1, v1, 0x40

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1202(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    :goto_6
    and-int/lit16 v0, v3, 0x80

    const/16 v4, 0x80

    if-ne v0, v4, :cond_7

    or-int/lit16 v1, v1, 0x80

    :cond_7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1302(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    :goto_7
    and-int/lit16 v0, v3, 0x100

    const/16 v4, 0x100

    if-ne v0, v4, :cond_8

    or-int/lit16 v1, v1, 0x100

    :cond_8
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1402(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    :goto_8
    and-int/lit16 v0, v3, 0x200

    const/16 v4, 0x200

    if-ne v0, v4, :cond_9

    or-int/lit16 v1, v1, 0x200

    :cond_9
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1502(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    :goto_9
    and-int/lit16 v0, v3, 0x400

    const/16 v4, 0x400

    if-ne v0, v4, :cond_a

    or-int/lit16 v1, v1, 0x400

    :cond_a
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1602(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    :goto_a
    and-int/lit16 v0, v3, 0x800

    const/16 v4, 0x800

    if-ne v0, v4, :cond_b

    or-int/lit16 v1, v1, 0x800

    :cond_b
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1702(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    :goto_b
    and-int/lit16 v0, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v0, v4, :cond_c

    or-int/lit16 v1, v1, 0x1000

    :cond_c
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1802(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    :goto_c
    and-int/lit16 v0, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v0, v4, :cond_d

    or-int/lit16 v1, v1, 0x2000

    :cond_d
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1902(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    :goto_d
    and-int/lit16 v0, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v0, v4, :cond_e

    or-int/lit16 v1, v1, 0x4000

    :cond_e
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$2002(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;)Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    :goto_e
    and-int v0, v3, v5

    if-ne v0, v5, :cond_f

    or-int/2addr v1, v5

    :cond_f
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$2102(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;)Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    :goto_f
    and-int v0, v3, v6

    if-ne v0, v6, :cond_10

    or-int/2addr v1, v6

    :cond_10
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$2202(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;)Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    :goto_10
    and-int v0, v3, v7

    if-ne v0, v7, :cond_11

    or-int/2addr v1, v7

    :cond_11
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$2302(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    :goto_11
    invoke-static {v2, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$2402(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;I)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onBuilt()V

    return-object v2

    :cond_12
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$602(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$702(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    goto/16 :goto_1

    :cond_14
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$802(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$Control;)Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    goto/16 :goto_2

    :cond_15
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$902(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$Control;)Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    goto/16 :goto_3

    :cond_16
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1002(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    goto/16 :goto_4

    :cond_17
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1102(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    goto/16 :goto_5

    :cond_18
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1202(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    goto/16 :goto_6

    :cond_19
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1302(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    goto/16 :goto_7

    :cond_1a
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1402(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    goto/16 :goto_8

    :cond_1b
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1502(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    goto/16 :goto_9

    :cond_1c
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1602(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    goto/16 :goto_a

    :cond_1d
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1702(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    goto/16 :goto_b

    :cond_1e
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1802(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    goto/16 :goto_c

    :cond_1f
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1902(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    goto/16 :goto_d

    :cond_20
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$2002(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;)Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    goto/16 :goto_e

    :cond_21
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$2102(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;)Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    goto/16 :goto_f

    :cond_22
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$2202(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;)Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    goto/16 :goto_10

    :cond_23
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    invoke-static {v2, v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$2302(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    goto/16 :goto_11
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    :goto_2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    :goto_3
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_4

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    :goto_4
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    :goto_5
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_6

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    :goto_6
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    :goto_7
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    :goto_8
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    :goto_9
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    :goto_a
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_b

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    :goto_b
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    :goto_c
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_d

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    :goto_d
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_e

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    :goto_e
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_f

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    :goto_f
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_10

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    :goto_10
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_11

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    :goto_11
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto/16 :goto_4

    :cond_5
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto/16 :goto_5

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto/16 :goto_6

    :cond_7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto/16 :goto_7

    :cond_8
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto/16 :goto_8

    :cond_9
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto/16 :goto_9

    :cond_a
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto/16 :goto_a

    :cond_b
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto/16 :goto_b

    :cond_c
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto/16 :goto_c

    :cond_d
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto/16 :goto_d

    :cond_e
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto/16 :goto_e

    :cond_f
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto/16 :goto_f

    :cond_10
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto/16 :goto_10

    :cond_11
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto/16 :goto_11
.end method

.method public clearConnectQuery()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearConnectResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearControl()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearFilePack()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearFileReq()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearFileResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearHeartbeat()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearLocationCtl()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearLocationSync()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearLogReq()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearParamQuery()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearParamResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearParamUpdate()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearStateQuery()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearStateResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearTestReq()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearTestResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearUpdateResponse()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->create()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConnectQuery()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    goto :goto_0
.end method

.method public getConnectQueryBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getConnectQueryFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    return-object v0
.end method

.method public getConnectQueryOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ConnectOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ConnectOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    goto :goto_0
.end method

.method public getConnectResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    goto :goto_0
.end method

.method public getConnectRespBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getConnectRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    return-object v0
.end method

.method public getConnectRespOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ConnectOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ConnectOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    goto :goto_0
.end method

.method public getControl()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    goto :goto_0
.end method

.method public getControlBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getControlFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    return-object v0
.end method

.method public getControlOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ControlOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ControlOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->b()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFilePack()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    goto :goto_0
.end method

.method public getFilePackBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getFilePackFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    return-object v0
.end method

.method public getFilePackOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePackOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePackOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    goto :goto_0
.end method

.method public getFileReq()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    goto :goto_0
.end method

.method public getFileReqBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getFileReqFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    return-object v0
.end method

.method public getFileReqOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequestOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequestOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    goto :goto_0
.end method

.method public getFileResp()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    goto :goto_0
.end method

.method public getFileRespBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getFileRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse$Builder;

    return-object v0
.end method

.method public getFileRespOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponseOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponseOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    goto :goto_0
.end method

.method public getHeartbeat()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    goto :goto_0
.end method

.method public getHeartbeatBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getHeartbeatFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    return-object v0
.end method

.method public getHeartbeatOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ControlOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ControlOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    goto :goto_0
.end method

.method public getLocationCtl()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    goto :goto_0
.end method

.method public getLocationCtlBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getLocationCtlFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    return-object v0
.end method

.method public getLocationCtlOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSyncOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSyncOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    goto :goto_0
.end method

.method public getLocationSync()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    goto :goto_0
.end method

.method public getLocationSyncBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getLocationSyncFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    return-object v0
.end method

.method public getLocationSyncOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSyncOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSyncOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    goto :goto_0
.end method

.method public getLogReq()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    goto :goto_0
.end method

.method public getLogReqBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getLogReqFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest$Builder;

    return-object v0
.end method

.method public getLogReqOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequestOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequestOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    goto :goto_0
.end method

.method public getParamQuery()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    goto :goto_0
.end method

.method public getParamQueryBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParamQueryFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    return-object v0
.end method

.method public getParamQueryOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    goto :goto_0
.end method

.method public getParamResp()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    goto :goto_0
.end method

.method public getParamRespBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParamRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    return-object v0
.end method

.method public getParamRespOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    goto :goto_0
.end method

.method public getParamUpdate()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    goto :goto_0
.end method

.method public getParamUpdateBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParamUpdateFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    return-object v0
.end method

.method public getParamUpdateOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    goto :goto_0
.end method

.method public getStateQuery()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    goto :goto_0
.end method

.method public getStateQueryBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getStateQueryFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    return-object v0
.end method

.method public getStateQueryOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdateOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdateOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    goto :goto_0
.end method

.method public getStateResp()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    goto :goto_0
.end method

.method public getStateRespBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getStateRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    return-object v0
.end method

.method public getStateRespOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdateOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdateOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    goto :goto_0
.end method

.method public getTestReq()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    goto :goto_0
.end method

.method public getTestReqBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getTestReqFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;

    return-object v0
.end method

.method public getTestReqOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTestOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTestOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    goto :goto_0
.end method

.method public getTestResp()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    goto :goto_0
.end method

.method public getTestRespBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getTestRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;

    return-object v0
.end method

.method public getTestRespOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTestOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTestOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    goto :goto_0
.end method

.method public getUpdateResponse()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    goto :goto_0
.end method

.method public getUpdateResponseBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getUpdateResponseFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    return-object v0
.end method

.method public getUpdateResponseOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponseOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponseOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    goto :goto_0
.end method

.method public hasConnectQuery()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConnectResp()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

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

.method public hasControl()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

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

.method public hasFilePack()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFileReq()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFileResp()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeartbeat()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

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

.method public hasLocationCtl()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocationSync()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLogReq()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasParamQuery()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

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

.method public hasParamResp()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasParamUpdate()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStateQuery()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStateResp()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTestReq()Z
    .locals 2

    const v1, 0x8000

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTestResp()Z
    .locals 2

    const/high16 v1, 0x10000

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUpdateResponse()Z
    .locals 2

    const/high16 v1, 0x20000

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/2addr v0, v1

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

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->c()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    const-class v2, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public mergeConnectQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeConnectResp(Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeControl(Lcom/ifengyu/intercom/protos/MitalkProtos$Control;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$Control;)Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeFilePack(Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeFileReq(Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeFileResp(Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeHeartbeat(Lcom/ifengyu/intercom/protos/MitalkProtos$Control;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$Control;)Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeLocationCtl(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeLocationSync(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeLogReq(Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;)Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeParamQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeParamResp(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeStateQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeStateResp(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeTestReq(Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 3

    const v2, 0x8000

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;)Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeTestResp(Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 3

    const/high16 v2, 0x10000

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;)Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeUpdateResponse(Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 3

    const/high16 v2, 0x20000

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setConnectQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setConnectQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setConnectResp(Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setConnectResp(Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setControl(Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setControl(Lcom/ifengyu/intercom/protos/MitalkProtos$Control;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setFilePack(Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setFilePack(Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setFileReq(Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setFileReq(Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setFileResp(Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setFileResp(Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setHeartbeat(Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setHeartbeat(Lcom/ifengyu/intercom/protos/MitalkProtos$Control;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setLocationCtl(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setLocationCtl(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setLocationSync(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setLocationSync(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setLogReq(Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setLogReq(Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setParamQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setParamQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setParamResp(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setParamResp(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setStateQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setStateQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setStateResp(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setStateResp(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setTestReq(Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setTestReq(Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setTestResp(Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setTestResp(Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setUpdateResponse(Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setUpdateResponse(Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method
