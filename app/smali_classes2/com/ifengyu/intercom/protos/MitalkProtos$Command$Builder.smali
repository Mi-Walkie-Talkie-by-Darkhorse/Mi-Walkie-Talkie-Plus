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
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
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
            "Lcom/google/protobuf/SingleFieldBuilder<",
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
            "Lcom/google/protobuf/SingleFieldBuilder<",
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
            "Lcom/google/protobuf/SingleFieldBuilder<",
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
            "Lcom/google/protobuf/SingleFieldBuilder<",
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
            "Lcom/google/protobuf/SingleFieldBuilder<",
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
            "Lcom/google/protobuf/SingleFieldBuilder<",
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
            "Lcom/google/protobuf/SingleFieldBuilder<",
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
            "Lcom/google/protobuf/SingleFieldBuilder<",
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
            "Lcom/google/protobuf/SingleFieldBuilder<",
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
            "Lcom/google/protobuf/SingleFieldBuilder<",
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
            "Lcom/google/protobuf/SingleFieldBuilder<",
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
            "Lcom/google/protobuf/SingleFieldBuilder<",
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
            "Lcom/google/protobuf/SingleFieldBuilder<",
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
            "Lcom/google/protobuf/SingleFieldBuilder<",
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
            "Lcom/google/protobuf/SingleFieldBuilder<",
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
            "Lcom/google/protobuf/SingleFieldBuilder<",
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
            "Lcom/google/protobuf/SingleFieldBuilder<",
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
            "Lcom/google/protobuf/SingleFieldBuilder<",
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

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    .line 11
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    .line 12
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    .line 13
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    .line 14
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    .line 15
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    .line 16
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    .line 17
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    .line 18
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    .line 19
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    .line 20
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    .line 21
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 23
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    .line 24
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    .line 25
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    .line 26
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    .line 27
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 28
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 29
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 30
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    .line 31
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    .line 32
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    .line 33
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    .line 34
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    .line 35
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    .line 36
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    .line 37
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    .line 38
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    .line 39
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    .line 40
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    .line 41
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/ifengyu/intercom/protos/MitalkProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->create()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    invoke-direct {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;-><init>()V

    return-object v0
.end method

.method private getConnectQueryFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ConnectOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getConnectQuery()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getConnectRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ConnectOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getConnectResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getControlFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Control;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ControlOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getControl()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getFilePackFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FilePackOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getFilePack()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getFileReqFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequestOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getFileReq()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getFileRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getFileResp()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getHeartbeatFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Control;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ControlOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getHeartbeat()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getLocationCtlFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSyncOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getLocationCtl()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getLocationSyncFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSyncOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getLocationSync()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getLogReqFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequestOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getLogReq()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getParamQueryFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParamQuery()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getParamRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParamResp()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getParamUpdateFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParamUpdate()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getStateQueryFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdateOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getStateQuery()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getStateRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdateOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getStateResp()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getTestReqFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTestOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getTestReq()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getTestRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTestOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getTestResp()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getUpdateResponseFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;",
            "Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getUpdateResponse()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getConnectQueryFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getConnectRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getHeartbeatFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getControlFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParamQueryFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParamUpdateFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 8
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParamRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getStateQueryFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 10
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getStateRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getLocationSyncFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 12
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getLocationCtlFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 13
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getFileReqFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 14
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getFilePackFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 15
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getFileRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 16
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getLogReqFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 17
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getTestReqFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 18
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getTestRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 19
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getUpdateResponseFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 5

    .line 3
    new-instance v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/ifengyu/intercom/protos/MitalkProtos$a;)V

    .line 4
    iget v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$602(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$602(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    :goto_1
    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x2

    .line 8
    :cond_2
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_3

    .line 9
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$702(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$702(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    :goto_2
    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x4

    .line 11
    :cond_4
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_5

    .line 12
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$802(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$Control;)Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    goto :goto_3

    .line 13
    :cond_5
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$802(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$Control;)Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    :goto_3
    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x8

    .line 14
    :cond_6
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_7

    .line 15
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$902(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$Control;)Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    goto :goto_4

    .line 16
    :cond_7
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$902(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$Control;)Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    :goto_4
    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_8

    or-int/lit8 v3, v3, 0x10

    .line 17
    :cond_8
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_9

    .line 18
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1002(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    goto :goto_5

    .line 19
    :cond_9
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1002(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    :goto_5
    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_a

    or-int/lit8 v3, v3, 0x20

    .line 20
    :cond_a
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_b

    .line 21
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1102(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    goto :goto_6

    .line 22
    :cond_b
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1102(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    :goto_6
    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_c

    or-int/lit8 v3, v3, 0x40

    .line 23
    :cond_c
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_d

    .line 24
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1202(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    goto :goto_7

    .line 25
    :cond_d
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1202(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    :goto_7
    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_e

    or-int/lit16 v3, v3, 0x80

    .line 26
    :cond_e
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_f

    .line 27
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1302(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    goto :goto_8

    .line 28
    :cond_f
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1302(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    :goto_8
    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_10

    or-int/lit16 v3, v3, 0x100

    .line 29
    :cond_10
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_11

    .line 30
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1402(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    goto :goto_9

    .line 31
    :cond_11
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1402(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    :goto_9
    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_12

    or-int/lit16 v3, v3, 0x200

    .line 32
    :cond_12
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_13

    .line 33
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1502(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    goto :goto_a

    .line 34
    :cond_13
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1502(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    :goto_a
    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_14

    or-int/lit16 v3, v3, 0x400

    .line 35
    :cond_14
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_15

    .line 36
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1602(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    goto :goto_b

    .line 37
    :cond_15
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1602(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    :goto_b
    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_16

    or-int/lit16 v3, v3, 0x800

    .line 38
    :cond_16
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_17

    .line 39
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1702(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    goto :goto_c

    .line 40
    :cond_17
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1702(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    :goto_c
    and-int/lit16 v2, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_18

    or-int/lit16 v3, v3, 0x1000

    .line 41
    :cond_18
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_19

    .line 42
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1802(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    goto :goto_d

    .line 43
    :cond_19
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1802(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    :goto_d
    and-int/lit16 v2, v1, 0x2000

    const/16 v4, 0x2000

    if-ne v2, v4, :cond_1a

    or-int/lit16 v3, v3, 0x2000

    .line 44
    :cond_1a
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_1b

    .line 45
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1902(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    goto :goto_e

    .line 46
    :cond_1b
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$1902(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    :goto_e
    and-int/lit16 v2, v1, 0x4000

    const/16 v4, 0x4000

    if-ne v2, v4, :cond_1c

    or-int/lit16 v3, v3, 0x4000

    .line 47
    :cond_1c
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_1d

    .line 48
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$2002(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;)Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    goto :goto_f

    .line 49
    :cond_1d
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$2002(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;)Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    :goto_f
    const v2, 0x8000

    and-int v4, v1, v2

    if-ne v4, v2, :cond_1e

    or-int/2addr v3, v2

    .line 50
    :cond_1e
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_1f

    .line 51
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$2102(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;)Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    goto :goto_10

    .line 52
    :cond_1f
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$2102(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;)Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    :goto_10
    const/high16 v2, 0x10000

    and-int v4, v1, v2

    if-ne v4, v2, :cond_20

    or-int/2addr v3, v2

    .line 53
    :cond_20
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_21

    .line 54
    iget-object v2, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$2202(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;)Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    goto :goto_11

    .line 55
    :cond_21
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    invoke-static {v0, v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$2202(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;)Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    :goto_11
    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_22

    or-int/2addr v3, v2

    .line 56
    :cond_22
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v1, :cond_23

    .line 57
    iget-object v1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$2302(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    goto :goto_12

    .line 58
    :cond_23
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$2302(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    .line 59
    :goto_12
    invoke-static {v0, v3}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->access$2402(Lcom/ifengyu/intercom/protos/MitalkProtos$Command;I)I

    .line 60
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 11
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 13
    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_2

    .line 15
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 17
    :goto_2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_3

    .line 19
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    goto :goto_3

    .line 20
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 21
    :goto_3
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 22
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_4

    .line 23
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    goto :goto_4

    .line 24
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 25
    :goto_4
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 26
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_5

    .line 27
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    goto :goto_5

    .line 28
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 29
    :goto_5
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 30
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_6

    .line 31
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    goto :goto_6

    .line 32
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 33
    :goto_6
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 34
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_7

    .line 35
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    goto :goto_7

    .line 36
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 37
    :goto_7
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 38
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_8

    .line 39
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    goto :goto_8

    .line 40
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 41
    :goto_8
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 42
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_9

    .line 43
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    goto :goto_9

    .line 44
    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 45
    :goto_9
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 46
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_a

    .line 47
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    goto :goto_a

    .line 48
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 49
    :goto_a
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 50
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_b

    .line 51
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    goto :goto_b

    .line 52
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 53
    :goto_b
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 54
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_c

    .line 55
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    goto :goto_c

    .line 56
    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 57
    :goto_c
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 58
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_d

    .line 59
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    goto :goto_d

    .line 60
    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 61
    :goto_d
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 62
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_e

    .line 63
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    goto :goto_e

    .line 64
    :cond_e
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 65
    :goto_e
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 66
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_f

    .line 67
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    goto :goto_f

    .line 68
    :cond_f
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 69
    :goto_f
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 70
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_10

    .line 71
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    goto :goto_10

    .line 72
    :cond_10
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 73
    :goto_10
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 74
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_11

    .line 75
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    goto :goto_11

    .line 76
    :cond_11
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 77
    :goto_11
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearConnectQuery()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearConnectResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearControl()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearFilePack()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearFileReq()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearFileResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearHeartbeat()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearLocationCtl()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearLocationSync()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearLogReq()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearParamQuery()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearParamResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearParamUpdate()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearStateQuery()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearStateResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearTestReq()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearTestResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearUpdateResponse()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 5
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 2

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->create()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

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

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->clone()Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConnectQuery()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    return-object v0
.end method

.method public getConnectQueryBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getConnectQueryFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    return-object v0
.end method

.method public getConnectQueryOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ConnectOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ConnectOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    return-object v0
.end method

.method public getConnectResp()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    return-object v0
.end method

.method public getConnectRespBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getConnectRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    return-object v0
.end method

.method public getConnectRespOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ConnectOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ConnectOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    return-object v0
.end method

.method public getControl()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    return-object v0
.end method

.method public getControlBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getControlFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    return-object v0
.end method

.method public getControlOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ControlOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ControlOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;
    .locals 1

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->a()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFilePack()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    return-object v0
.end method

.method public getFilePackBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getFilePackFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    return-object v0
.end method

.method public getFilePackOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePackOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePackOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    return-object v0
.end method

.method public getFileReq()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    return-object v0
.end method

.method public getFileReqBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getFileReqFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    return-object v0
.end method

.method public getFileReqOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequestOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequestOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    return-object v0
.end method

.method public getFileResp()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    return-object v0
.end method

.method public getFileRespBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getFileRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse$Builder;

    return-object v0
.end method

.method public getFileRespOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponseOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponseOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    return-object v0
.end method

.method public getHeartbeat()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    return-object v0
.end method

.method public getHeartbeatBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getHeartbeatFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    return-object v0
.end method

.method public getHeartbeatOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ControlOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ControlOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    return-object v0
.end method

.method public getLocationCtl()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    return-object v0
.end method

.method public getLocationCtlBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getLocationCtlFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    return-object v0
.end method

.method public getLocationCtlOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSyncOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSyncOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    return-object v0
.end method

.method public getLocationSync()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    return-object v0
.end method

.method public getLocationSyncBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getLocationSyncFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    return-object v0
.end method

.method public getLocationSyncOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSyncOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSyncOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    return-object v0
.end method

.method public getLogReq()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    return-object v0
.end method

.method public getLogReqBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getLogReqFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest$Builder;

    return-object v0
.end method

.method public getLogReqOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequestOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequestOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    return-object v0
.end method

.method public getParamQuery()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    return-object v0
.end method

.method public getParamQueryBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParamQueryFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    return-object v0
.end method

.method public getParamQueryOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    return-object v0
.end method

.method public getParamResp()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    return-object v0
.end method

.method public getParamRespBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParamRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    return-object v0
.end method

.method public getParamRespOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    return-object v0
.end method

.method public getParamUpdate()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    return-object v0
.end method

.method public getParamUpdateBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getParamUpdateFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    return-object v0
.end method

.method public getParamUpdateOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    return-object v0
.end method

.method public getStateQuery()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    return-object v0
.end method

.method public getStateQueryBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getStateQueryFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    return-object v0
.end method

.method public getStateQueryOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdateOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdateOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    return-object v0
.end method

.method public getStateResp()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    return-object v0
.end method

.method public getStateRespBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getStateRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    return-object v0
.end method

.method public getStateRespOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdateOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdateOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    return-object v0
.end method

.method public getTestReq()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    return-object v0
.end method

.method public getTestReqBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getTestReqFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;

    return-object v0
.end method

.method public getTestReqOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTestOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTestOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    return-object v0
.end method

.method public getTestResp()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    return-object v0
.end method

.method public getTestRespBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getTestRespFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;

    return-object v0
.end method

.method public getTestRespOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTestOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTestOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    return-object v0
.end method

.method public getUpdateResponse()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    return-object v0
.end method

.method public getUpdateResponseBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->getUpdateResponseFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    return-object v0
.end method

.method public getUpdateResponseOrBuilder()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponseOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponseOrBuilder;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    return-object v0
.end method

.method public hasConnectQuery()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

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

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

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

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

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

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

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

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

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

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

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

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

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

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

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

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

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

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

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

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

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

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

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

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

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

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

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

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

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

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

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

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

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

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

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

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->b()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/ifengyu/intercom/protos/MitalkProtos$Command;

    const-class v2, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public mergeConnectQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeConnectResp(Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;)Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeControl(Lcom/ifengyu/intercom/protos/MitalkProtos$Control;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$Control;)Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeFilePack(Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x1000

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;)Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeFileReq(Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x800

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeFileResp(Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x2000

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;)Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeHeartbeat(Lcom/ifengyu/intercom/protos/MitalkProtos$Control;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$Control;)Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeLocationCtl(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x400

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeLocationSync(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x200

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeLogReq(Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x4000

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;)Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeParamQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x10

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeParamResp(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x40

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x20

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeStateQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x80

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeStateResp(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x100

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeTestReq(Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const v1, 0x8000

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;)Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeTestResp(Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/high16 v1, 0x10000

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;)Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeUpdateResponse(Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/high16 v1, 0x20000

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->getDefaultInstance()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    .line 5
    invoke-static {v0}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;->newBuilder(Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;)Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->buildPartial()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 9
    :goto_1
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setConnectQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setConnectQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setConnectResp(Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Connect$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setConnectResp(Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->connectResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setControl(Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setControl(Lcom/ifengyu/intercom/protos/MitalkProtos$Control;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->controlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->control_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setFilePack(Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setFilePack(Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePackBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->filePack_:Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setFileReq(Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setFileReq(Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setFileResp(Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setFileResp(Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->fileResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setHeartbeat(Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$Control$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setHeartbeat(Lcom/ifengyu/intercom/protos/MitalkProtos$Control;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeatBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->heartbeat_:Lcom/ifengyu/intercom/protos/MitalkProtos$Control;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setLocationCtl(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setLocationCtl(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtlBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationCtl_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setLocationSync(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setLocationSync(Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSyncBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->locationSync_:Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setLogReq(Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setLogReq(Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->logReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setParamQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setParamQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setParamResp(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setParamResp(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setParamUpdate(Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->paramUpdate_:Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setStateQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setStateQuery(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQueryBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateQuery_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setStateResp(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setStateResp(Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->stateResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setTestReq(Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setTestReq(Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReqBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testReq_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setTestResp(Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setTestResp(Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testRespBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->testResp_:Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setUpdateResponse(Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse$Builder;->build()Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 11
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method

.method public setUpdateResponse(Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;)Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponseBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->updateResponse_:Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 6
    :goto_0
    iget p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/ifengyu/intercom/protos/MitalkProtos$Command$Builder;->bitField0_:I

    return-object p0
.end method
