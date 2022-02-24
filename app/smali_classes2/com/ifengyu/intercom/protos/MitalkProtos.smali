.class public final Lcom/ifengyu/intercom/protos/MitalkProtos;
.super Ljava/lang/Object;
.source "MitalkProtos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponse;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$UpdateResponseOrBuilder;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTest;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$IntercomTestOrBuilder;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequest;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$LogRequestOrBuilder;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponse;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$FileResponseOrBuilder;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$FilePack;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$FilePackOrBuilder;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequest;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$FileRequestOrBuilder;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSync;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$LocationSyncOrBuilder;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfo;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$ChannelInfoOrBuilder;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdate;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$StateUpdateOrBuilder;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdate;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$ParamUpdateOrBuilder;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$Control;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$ControlOrBuilder;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$Connect;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$ConnectOrBuilder;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$Command;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$CommandOrBuilder;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$UPDATESTATECODE;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$FILECMD;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$CTLSYNC;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$CHTYPE;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$CHOPTION;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$POWERSTATE;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$CTRLCODE;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$CONNCODE;,
        Lcom/ifengyu/intercom/protos/MitalkProtos$STATECODE;
    }
.end annotation


# static fields
.field private static A:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final a:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static b:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final c:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static d:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final e:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static f:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final g:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static h:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final i:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static j:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final k:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static l:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final m:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static n:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final o:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static p:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final q:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static r:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final s:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static t:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final u:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static v:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final w:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static x:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final y:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static z:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const-string v0, "\n\rmitalki.proto\u0012\u0006protos\"\u00d4\u0005\n\u0007Command\u0012%\n\u000cconnectQuery\u0018\u0001 \u0001(\u000b2\u000f.protos.Connect\u0012$\n\u000bconnectResp\u0018\u0002 \u0001(\u000b2\u000f.protos.Connect\u0012\"\n\theartbeat\u0018\u0003 \u0001(\u000b2\u000f.protos.Control\u0012 \n\u0007control\u0018\u0004 \u0001(\u000b2\u000f.protos.Control\u0012\'\n\nparamQuery\u0018\u0005 \u0001(\u000b2\u0013.protos.ParamUpdate\u0012(\n\u000bparamUpdate\u0018\u0006 \u0001(\u000b2\u0013.protos.ParamUpdate\u0012&\n\tparamResp\u0018\u0007 \u0001(\u000b2\u0013.protos.ParamUpdate\u0012\'\n\nstateQuery\u0018\u0008 \u0001(\u000b2\u0013.protos.StateUpdate\u0012&\n\tstateResp\u0018\t \u0001(\u000b2\u0013.protos.StateUpdate\u0012*\n\u000clocationSy"

    const-string v1, "nc\u0018\n \u0001(\u000b2\u0014.protos.LocationSync\u0012)\n\u000blocationCtl\u0018\u000b \u0001(\u000b2\u0014.protos.LocationSync\u0012$\n\u0007fileReq\u0018\u000c \u0001(\u000b2\u0013.protos.FileRequest\u0012\"\n\u0008filePack\u0018\r \u0001(\u000b2\u0010.protos.FilePack\u0012&\n\u0008fileResp\u0018\u000e \u0001(\u000b2\u0014.protos.FileResponse\u0012\"\n\u0006logReq\u0018\u000f \u0001(\u000b2\u0012.protos.LogRequest\u0012%\n\u0007testReq\u0018\u0010 \u0001(\u000b2\u0014.protos.IntercomTest\u0012&\n\u0008testResp\u0018\u0011 \u0001(\u000b2\u0014.protos.IntercomTest\u0012.\n\u000eupdateResponse\u0018\u0012 \u0001(\u000b2\u0016.protos.UpdateResponse\"P\n\u0007Connect\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\"\n\u0008connCode\u0018\u0002 \u0002(\u000e2\u0010.p"

    const-string v2, "rotos.CONNCODE\u0012\u0010\n\u0008deviceId\u0018\u0003 \u0001(\r\">\n\u0007Control\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\"\n\u0008ctrlCode\u0018\u0002 \u0001(\u000e2\u0010.protos.CTRLCODE\"\u0098\u0003\n\u000bParamUpdate\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012!\n\u0006result\u0018\u0002 \u0001(\u000e2\u0011.protos.STATECODE\u0012\u000c\n\u0004mode\u0018\u0003 \u0001(\u000c\u0012\u0010\n\u0008deviceId\u0018\u0004 \u0001(\r\u0012\u000e\n\u0006userId\u0018\u0005 \u0001(\r\u0012\u0010\n\u0008userName\u0018\u0006 \u0001(\u000c\u0012\u000f\n\u0007sosText\u0018\u0007 \u0001(\u000c\u0012\u0012\n\nversionBLE\u0018\u0008 \u0001(\r\u0012\u0012\n\nversionMCU\u0018\t \u0001(\r\u0012$\n\tstateMode\u0018\n \u0001(\u000e2\u0011.protos.STATEMODE\u0012\u0013\n\u000bdevNameUTF8\u0018\u000b \u0001(\u000c\u0012\u0012\n\ndevNameGBK\u0018\u000c \u0001(\u000c\u0012\u0010\n\u0008shareLoc\u0018\r \u0001(\r\u0012\u0011\n\tversionHW\u0018\u000e "

    const-string v3, "\u0001(\r\u0012$\n\u0008lowPower\u0018\u000f \u0001(\u000e2\u0012.protos.POWERSTATE\u0012\u0015\n\rversionExtend\u0018\u0010 \u0001(\r\u0012\u0017\n\u000factivateChannel\u0018\u0011 \u0001(\r\u0012\u0010\n\u0008language\u0018\u0012 \u0001(\r\"\u00cd\u0001\n\u000bStateUpdate\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012!\n\u0006result\u0018\u0002 \u0001(\u000e2\u0011.protos.STATECODE\u0012 \n\u0006option\u0018\u0003 \u0001(\u000e2\u0010.protos.CHOPTION\u0012 \n\u0003ch1\u0018\u0004 \u0001(\u000b2\u0013.protos.ChannelInfo\u0012 \n\u0003ch2\u0018\u0005 \u0001(\u000b2\u0013.protos.ChannelInfo\u0012$\n\tstateMode\u0018\u0006 \u0001(\u000e2\u0011.protos.STATEMODE\"\u00ec\u0001\n\u000bChannelInfo\u0012\u000c\n\u0004freq\u0018\u0001 \u0001(\r\u0012\u001c\n\u0004type\u0018\u0002 \u0001(\u000e2\u000e.protos.CHTYPE\u0012\n\n\u0002no\u0018\u0003 \u0001(\r\u0012\u000c\n\u0004name\u0018\u0004 \u0001("

    const-string v4, "\u000c\u0012\n\n\u0002sq\u0018\u0005 \u0001(\r\u0012\u000b\n\u0003vox\u0018\u0006 \u0001(\r\u0012\u000f\n\u0007cssType\u0018\u0007 \u0001(\r\u0012\u000f\n\u0007cssCode\u0018\u0008 \u0001(\r\u0012\u0011\n\tcssInvert\u0018\t \u0001(\r\u0012\u000e\n\u0006freq_2\u0018\n \u0001(\r\u0012\u0011\n\tcssType_2\u0018\u000b \u0001(\r\u0012\u0011\n\tcssCode_2\u0018\u000c \u0001(\r\u0012\u0013\n\u000bcssInvert_2\u0018\r \u0001(\r\"\u00b2\u0001\n\u000cLocationSync\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u001c\n\u0003ctl\u0018\u0002 \u0001(\u000e2\u000f.protos.CTLSYNC\u0012\u000e\n\u0006userId\u0018\u0003 \u0001(\r\u0012\u0010\n\u0008userName\u0018\u0004 \u0001(\u000c\u0012\u0011\n\tlongitude\u0018\u0005 \u0001(\u0011\u0012\u0010\n\u0008latitude\u0018\u0006 \u0001(\u0011\u0012\u0010\n\u0008altitude\u0018\u0007 \u0001(\u0011\u0012\u000c\n\u0004time\u0018\u0008 \u0001(\r\u0012\u000c\n\u0004freq\u0018\t \u0001(\r\"\u00a1\u0001\n\u000bFileRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u001d\n\u0004fCmd\u0018\u0002 \u0002(\u000e2\u000f.protos.FILECMD\u0012"

    const-string v5, "\u001f\n\u0005fType\u0018\u0003 \u0001(\u000e2\u0010.protos.FILETYPE\u0012\r\n\u0005fSize\u0018\u0004 \u0001(\r\u0012\u000e\n\u0006fCrc32\u0018\u0005 \u0001(\r\u0012\u0010\n\u0008fVersion\u0018\u0006 \u0001(\r\u0012\u0010\n\u0008fPackNum\u0018\u0007 \u0001(\r\"2\n\u0008FilePack\u0012\u000b\n\u0003seq\u0018\u0001 \u0002(\r\u0012\u000b\n\u0003xor\u0018\u0002 \u0002(\r\u0012\u000c\n\u0004data\u0018\u0003 \u0002(\u000c\"A\n\u000cFileResponse\u0012!\n\u0006result\u0018\u0001 \u0002(\u000e2\u0011.protos.STATECODE\u0012\u000e\n\u0006ackSeq\u0018\u0002 \u0001(\r\"\u001d\n\nLogRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\"-\n\u000cIntercomTest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u000c\n\u0004data\u0018\u0002 \u0002(\u000c\"U\n\u000eUpdateResponse\u0012&\n\u0005state\u0018\u0001 \u0001(\u000e2\u0017.protos.UPDATESTATECODE\u0012\u000e\n\u0006result\u0018\u0002 \u0001(\u0008\u0012\u000b\n\u0003ack\u0018\u0003 \u0001(\u0005*O\n\tSTATECODE\u0012\u000b\n\u0007"

    const-string v6, "SUCCESS\u0010\u0000\u0012\n\n\u0006FAILED\u0010\u0001\u0012\u000e\n\nPARAMERROR\u0010\u0002\u0012\u000e\n\nNOTSUPPORT\u0010\u0003\u0012\t\n\u0005FINAL\u0010\u0004*]\n\u0008CONNCODE\u0012\u000e\n\nDISCONNECT\u0010\u0000\u0012\u000b\n\u0007CONNECT\u0010\u0001\u0012\t\n\u0005ALLOW\u0010\u0002\u0012\n\n\u0006REFUSE\u0010\u0003\u0012\u0008\n\u0004WAIT\u0010\u0004\u0012\u0013\n\u000fREFUSE_LOWPOWER\u0010\u0005*%\n\u0008CTRLCODE\u0012\r\n\tRSTDEVICE\u0010\u0000\u0012\n\n\u0006RSTBLE\u0010\u0001*2\n\nPOWERSTATE\u0012\u000f\n\u000bALLOWUPDATE\u0010\u0000\u0012\u0013\n\u000fPROHIBITEUPDATE\u0010\u0001*y\n\tSTATEMODE\u0012\n\n\u0006SINGLE\u0010\u0000\u0012\n\n\u0006DOUBLE\u0010\u0001\u0012\n\n\u0006DIFFER\u0010\u0002\u0012\t\n\u0005SOS_T\u0010\u0003\u0012\t\n\u0005SOS_R\u0010\u0004\u0012\u000b\n\u0007SCAN_CH\u0010\u0005\u0012\r\n\tSCAN_FREQ\u0010\u0006\u0012\n\n\u0006TEAM_M\u0010\u0007\u0012\n\n\u0006TEAM_S\u0010\u0008*b\n\u0008CHOPTION\u0012\r\n\tCH_INSERT\u0010\u0000"

    const-string v7, "\u0012\r\n\tCH_DELETE\u0010\u0001\u0012\r\n\tCH_MODIFY\u0010\u0002\u0012\u000c\n\u0008CH_QUERY\u0010\u0003\u0012\r\n\tST_UPDATE\u0010\u0004\u0012\u000c\n\u0008ST_QUERY\u0010\u0005*m\n\u0006CHTYPE\u0012\n\n\u0006PRESET\u0010\u0000\u0012\n\n\u0006PUBLIC\u0010\u0001\u0012\u000e\n\nUSERDEFINE\u0010\u0002\u0012\t\n\u0005RADIO\u0010\u0003\u0012\u0007\n\u0003SOS\u0010\u0004\u0012\u0008\n\u0004TEMP\u0010\u0005\u0012\u0008\n\u0004TEAM\u0010\u0006\u0012\u0008\n\u0004SCAN\u0010\u0007\u0012\t\n\u0005RELAY\u0010\u0008*\"\n\u0007CTLSYNC\u0012\u000b\n\u0007DISABLE\u0010\u0000\u0012\n\n\u0006ENABLE\u0010\u0001*\u009b\u0001\n\u0008FILETYPE\u0012\r\n\tBLEUPFILE\u0010\u0001\u0012\r\n\tMCUUPFILE\u0010\u0002\u0012\r\n\tGBKFONT16\u0010\u0003\u0012\u000f\n\u000bASCIIFONT16\u0010\u0004\u0012\r\n\tGBKFONTEX\u0010\u0005\u0012\u000f\n\u000bASCIIFONTEX\u0010\u0006\u0012\u000e\n\nMCUSENDLOG\u0010\u0007\u0012\u000f\n\u000bWARNINGTONE\u0010\u0008\u0012\u0010\n\u000cMCUBLEUPFILE\u0010\t*\"\n\u0007FILECMD\u0012\t\n\u0005START\u0010\u0000"

    const-string v8, "\u0012\u000c\n\u0008COMPLETE\u0010\u0001*S\n\u000fUPDATESTATECODE\u0012\u000b\n\u0007PREPARE\u0010\u0000\u0012\u000b\n\u0007REQUEST\u0010\u0001\u0012\r\n\tTRANSPORT\u0010\u0002\u0012\n\n\u0006FINISH\u0010\u0003\u0012\u000b\n\u0007RESTART\u0010\u0004B-\n\u001bcom.ifengyu.intercom.protosB\u000cMitalkProtosH\u0002"

    .line 1
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/protos/MitalkProtos$a;

    invoke-direct {v1}, Lcom/ifengyu/intercom/protos/MitalkProtos$a;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->A()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "ConnectQuery"

    const-string v3, "ConnectResp"

    const-string v4, "Heartbeat"

    const-string v5, "Control"

    const-string v6, "ParamQuery"

    const-string v7, "ParamUpdate"

    const-string v8, "ParamResp"

    const-string v9, "StateQuery"

    const-string v10, "StateResp"

    const-string v11, "LocationSync"

    const-string v12, "LocationCtl"

    const-string v13, "FileReq"

    const-string v14, "FilePack"

    const-string v15, "FileResp"

    const-string v16, "LogReq"

    const-string v17, "TestReq"

    const-string v18, "TestResp"

    const-string v19, "UpdateResponse"

    filled-new-array/range {v2 .. v19}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos;->b:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->A()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Version"

    const-string v3, "ConnCode"

    const-string v4, "DeviceId"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos;->d:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->A()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 9
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v3, "CtrlCode"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos;->f:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->A()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->g:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 11
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v3, "Version"

    const-string v4, "Result"

    const-string v5, "Mode"

    const-string v6, "DeviceId"

    const-string v7, "UserId"

    const-string v8, "UserName"

    const-string v9, "SosText"

    const-string v10, "VersionBLE"

    const-string v11, "VersionMCU"

    const-string v12, "StateMode"

    const-string v13, "DevNameUTF8"

    const-string v14, "DevNameGBK"

    const-string v15, "ShareLoc"

    const-string v16, "VersionHW"

    const-string v17, "LowPower"

    const-string v18, "VersionExtend"

    const-string v19, "ActivateChannel"

    const-string v20, "Language"

    filled-new-array/range {v3 .. v20}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos;->h:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 12
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->A()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->i:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 13
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v3, "Version"

    const-string v4, "Result"

    const-string v5, "Option"

    const-string v6, "Ch1"

    const-string v7, "Ch2"

    const-string v8, "StateMode"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos;->j:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 14
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->A()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->k:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 15
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v3, "Freq"

    const-string v4, "Type"

    const-string v5, "No"

    const-string v6, "Name"

    const-string v7, "Sq"

    const-string v8, "Vox"

    const-string v9, "CssType"

    const-string v10, "CssCode"

    const-string v11, "CssInvert"

    const-string v12, "Freq2"

    const-string v13, "CssType2"

    const-string v14, "CssCode2"

    const-string v15, "CssInvert2"

    filled-new-array/range {v3 .. v15}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos;->l:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 16
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->A()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->m:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 17
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v3, "Version"

    const-string v4, "Ctl"

    const-string v5, "UserId"

    const-string v6, "UserName"

    const-string v7, "Longitude"

    const-string v8, "Latitude"

    const-string v9, "Altitude"

    const-string v10, "Time"

    const-string v11, "Freq"

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos;->n:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 18
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->A()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->o:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 19
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v3, "Version"

    const-string v4, "FCmd"

    const-string v5, "FType"

    const-string v6, "FSize"

    const-string v7, "FCrc32"

    const-string v8, "FVersion"

    const-string v9, "FPackNum"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos;->p:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 20
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->A()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->q:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 21
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v3, "Data"

    const-string v4, "Seq"

    const-string v5, "Xor"

    filled-new-array {v4, v5, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos;->r:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 22
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->A()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->s:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 23
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v4, "Result"

    const-string v5, "AckSeq"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos;->t:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 24
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->A()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->u:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 25
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos;->v:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 26
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->A()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->w:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 27
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos;->x:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 28
    invoke-static {}, Lcom/ifengyu/intercom/protos/MitalkProtos;->A()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->y:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 29
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "State"

    const-string v3, "Ack"

    filled-new-array {v2, v4, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/MitalkProtos;->z:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method public static A()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->A:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method static synthetic a()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic a(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 2
    sput-object p0, Lcom/ifengyu/intercom/protos/MitalkProtos;->A:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic b()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->b:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic c()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->m:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic d()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->n:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic e()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->o:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic f()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->p:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic g()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->q:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic h()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->r:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic i()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->s:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic j()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->t:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic k()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->u:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic l()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->v:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic m()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->w:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic n()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->x:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic o()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->y:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic p()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->z:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic q()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic r()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->d:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic s()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic t()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->f:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic u()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->g:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic v()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->h:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic w()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->i:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic x()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->j:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic y()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->k:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic z()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/MitalkProtos;->l:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method
