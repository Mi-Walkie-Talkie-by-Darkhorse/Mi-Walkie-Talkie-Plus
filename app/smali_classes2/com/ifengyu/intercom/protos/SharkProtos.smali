.class public final Lcom/ifengyu/intercom/protos/SharkProtos;
.super Ljava/lang/Object;
.source "SharkProtos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatistics;,
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UserActionStatisticsOrBuilder;,
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFilePack;,
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFilePackOrBuilder;,
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponse;,
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileResponseOrBuilder;,
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileRequest;,
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_UpGradeFileRequestOrBuilder;,
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfo;,
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_LocationInfoOrBuilder;,
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperate;,
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOperateOrBuilder;,
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperate;,
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelStateOperateOrBuilder;,
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParam;,
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_DeviceParamOrBuilder;,
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfo;,
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ChannelInfoOrBuilder;,
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_Connect;,
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_ConnectOrBuilder;,
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_SWITCH;,
        Lcom/ifengyu/intercom/protos/SharkProtos$SHARK_CONNCODE;
    }
.end annotation


# static fields
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

.field private static u:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string v0, "\n\u000bshark.proto\u0012\u0006protos\"\u00e6\u0002\n\rSHARK_Connect\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012(\n\u0008connCode\u0018\u0002 \u0002(\u000e2\u0016.protos.SHARK_CONNCODE\u0012\u0010\n\u0008deviceId\u0018\u0003 \u0001(\r\u0012\u0012\n\ndeviceType\u0018\u0004 \u0001(\r\u00124\n\u0007appMode\u0018\u0005 \u0001(\u000e2#.protos.SHARK_Connect.SHARK_APPTYPE\u0012:\n\u0008language\u0018\u0006 \u0001(\u000e2(.protos.SHARK_Connect.SHARK_LANGUAGETYPE\u0012\r\n\u0005btmac\u0018\u0007 \u0001(\u000c\"7\n\rSHARK_APPTYPE\u0012\u0011\n\rSHARK_OWN_APP\u0010\u0000\u0012\u0013\n\u000fSHARK_MIJIA_APP\u0010\u0001\":\n\u0012SHARK_LANGUAGETYPE\u0012\u0011\n\rSHARK_CHINESE\u0010\u0000\u0012\u0011\n\rSHARK_ENGLISH\u0010\u0001\"\u0091\u0003\n\u0011SHARK_Channel"

    const-string v1, "Info\u0012\r\n\u0005ch_no\u0018\u0001 \u0001(\r\u00127\n\u0007ch_type\u0018\u0002 \u0001(\u000e2&.protos.SHARK_ChannelInfo.SHARK_CHTYPE\u0012\u0012\n\nch_txPower\u0018\u0003 \u0001(\r\u0012\u0011\n\tch_rxFreq\u0018\u0004 \u0001(\r\u0012\u0011\n\tch_txFreq\u0018\u0005 \u0001(\r\u0012\u000f\n\u0007ch_name\u0018\u0006 \u0001(\u000c\u0012\r\n\u0005ch_sq\u0018\u0007 \u0001(\r\u0012\u000e\n\u0006ch_vox\u0018\u0008 \u0001(\r\u0012\u0010\n\u0008ch_rxCss\u0018\t \u0001(\r\u0012\u0010\n\u0008ch_txCss\u0018\n \u0001(\r\u0012%\n\u0007ch_elim\u0018\u000b \u0001(\u000e2\u0014.protos.SHARK_SWITCH\u0012\u000f\n\u0007ch_band\u0018\u000c \u0001(\r\u0012\'\n\tch_polite\u0018\r \u0001(\u000e2\u0014.protos.SHARK_SWITCH\"E\n\u000cSHARK_CHTYPE\u0012\u0010\n\u000cSHARK_PUBLIC\u0010\u0000\u0012\u0010\n\u000cSHARK_REMOTE\u0010\u0001\u0012\u0011\n\rSHARK_USERDEF\u0010\u0002\"\u00fa\u0004\n\u0011SHARK_Dev"

    const-string v2, "iceParam\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u00128\n\u0006result\u0018\u0002 \u0001(\u000e2(.protos.SHARK_DeviceParam.SHARK_DEV_UERR\u0012)\n\u000bfullInquiry\u0018\u0003 \u0001(\u000e2\u0014.protos.SHARK_SWITCH\u0012\r\n\u0005verHw\u0018\u0004 \u0001(\r\u0012\u000f\n\u0007verSoft\u0018\u0005 \u0001(\r\u0012\u0012\n\ndeviceName\u0018\u0006 \u0001(\u000c\u0012\u000f\n\u0007bleName\u0018\u0007 \u0001(\u000c\u0012\u000e\n\u0006charge\u0018\u0008 \u0001(\r\u0012\u0010\n\u0008activate\u0018\t \u0001(\r\u0012&\n\u0008shareLoc\u0018\n \u0001(\u000e2\u0014.protos.SHARK_SWITCH\u0012\u000f\n\u0007btAudio\u0018\u000b \u0001(\r\u0012%\n\u0002ch\u0018\u000c \u0001(\u000b2\u0019.protos.SHARK_ChannelInfo\u0012(\n\nvoiceAlert\u0018\r \u0001(\u000e2\u0014.protos.SHARK_SWITCH\u0012)\n\u000bisAllPublic\u0018\u000e \u0001(\u000e2\u0014.protos.SH"

    const-string v3, "ARK_SWITCH\u0012\u0012\n\npwsaveMode\u0018\u000f \u0001(\r\u0012\u0011\n\ttimeStamp\u0018\u001e \u0001(\r\u0012)\n\u000btimeDisplay\u0018\u001f \u0001(\u000e2\u0014.protos.SHARK_SWITCH\"\u0080\u0001\n\u000eSHARK_DEV_UERR\u0012\u0018\n\u0014SHARK_PARAM_QUERY_OK\u0010\u0001\u0012\u001b\n\u0017SHARK_PARAM_QUERY_ERROR\u0010\u0002\u0012\u0019\n\u0015SHARK_PARAM_UPDATE_OK\u0010\u0003\u0012\u001c\n\u0018SHARK_PARAM_UPDATE_ERROR\u0010\u0004\"\u0098\u0005\n\u0019SHARK_ChannelStateOperate\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012?\n\u0006result\u0018\u0002 \u0001(\u000e2/.protos.SHARK_ChannelStateOperate.SHARK_ST_UERR\u0012@\n\u0006option\u0018\u0003 \u0001(\u000e20.protos.SHARK_ChannelStateOperate.SHARK_STOPTIO"

    const-string v4, "N\u0012@\n\ndeviceMode\u0018\u0004 \u0001(\u000e2,.protos.SHARK_ChannelStateOperate.SHARK_MODE\u0012\u0011\n\tstateMode\u0018\u0005 \u0001(\r\u0012&\n\u0003ch1\u0018\u0006 \u0001(\u000b2\u0019.protos.SHARK_ChannelInfo\u0012&\n\u0003ch2\u0018\u0007 \u0001(\u000b2\u0019.protos.SHARK_ChannelInfo\u0012\u0013\n\u000bcurrentChId\u0018\u0008 \u0001(\r\"^\n\rSHARK_ST_UERR\u0012\u000f\n\u000bSHARK_ST_OK\u0010\u0000\u0012\u0012\n\u000eSHARK_ST_ERROR\u0010\u0001\u0012\u0012\n\u000eSHARK_ST_EMPTY\u0010\u0002\u0012\u0014\n\u0010SHARK_ST_FORBIDE\u0010\u0003\"9\n\u000eSHARK_STOPTION\u0012\u0013\n\u000fSHARK_ST_UPDATE\u0010\u0000\u0012\u0012\n\u000eSHARK_ST_QUERY\u0010\u0001\"\u0091\u0001\n\nSHARK_MODE\u0012\u0015\n\u0011SHARK_MODE_NORMAL\u0010\u0000\u0012\u000f\n\u000bSHARK_SOS_T\u0010\u0001\u0012\u000f\n"

    const-string v5, "\u000bSHARK_SOS_R\u0010\u0002\u0012\u0011\n\rSHARK_SCAN_CH\u0010\u0003\u0012\u0013\n\u000fSHARK_SCAN_FREQ\u0010\u0004\u0012\u0010\n\u000cSHARK_TEAM_M\u0010\u0005\u0012\u0010\n\u000cSHARK_TEAM_S\u0010\u0006\"\u00d1\u0003\n\u0018SHARK_ChannelInfoOperate\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012>\n\u0006result\u0018\u0002 \u0001(\u000e2..protos.SHARK_ChannelInfoOperate.SHARK_CH_UERR\u0012?\n\u0006option\u0018\u0003 \u0001(\u000e2/.protos.SHARK_ChannelInfoOperate.SHARK_CHOPTION\u0012%\n\u0002ch\u0018\u0004 \u0001(\u000b2\u0019.protos.SHARK_ChannelInfo\"\u0096\u0001\n\rSHARK_CH_UERR\u0012\u000f\n\u000bSHARK_CH_OK\u0010\u0000\u0012\u0012\n\u000eSHARK_CH_ERROR\u0010\u0001\u0012\u0012\n\u000eSHARK_CH_EMPTY\u0010\u0002\u0012\u0014\n\u0010SHARK_CH_FORBIDE\u0010"

    const-string v6, "\u0003\u0012\u001b\n\u0017SHARK_CH_QUERY_CONTINUE\u0010\u0004\u0012\u0019\n\u0015SHARK_CH_QUERY_FINISH\u0010\u0005\"c\n\u000eSHARK_CHOPTION\u0012\u0013\n\u000fSHARK_CH_INSERT\u0010\u0000\u0012\u0013\n\u000fSHARK_CH_DELETE\u0010\u0001\u0012\u0013\n\u000fSHARK_CH_MODIFY\u0010\u0002\u0012\u0012\n\u000eSHARK_CH_QUERY\u0010\u0003\"\u00d8\u0001\n\u0012SHARK_LocationInfo\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012%\n\u0007ctlsync\u0018\u0002 \u0001(\u000e2\u0014.protos.SHARK_SWITCH\u0012\u000e\n\u0006userId\u0018\u0003 \u0001(\r\u0012\u0010\n\u0008userName\u0018\u0004 \u0001(\u000c\u0012\u0010\n\u0008userFreq\u0018\u0005 \u0001(\r\u0012\u0011\n\tlongitude\u0018\u0006 \u0001(\u0011\u0012\u0010\n\u0008latitude\u0018\u0007 \u0001(\u0011\u0012\u0010\n\u0008altitude\u0018\u0008 \u0001(\u0011\u0012\u0010\n\u0008timeSync\u0018\t \u0001(\r\u0012\r\n\u0005rxCss\u0018\n \u0001(\r\"\u00e0\u0002\n\u0018SHARK_UpGradeFileR"

    const-string v7, "equest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012<\n\u0004fCmd\u0018\u0002 \u0002(\u000e2..protos.SHARK_UpGradeFileRequest.SHARK_FILECMD\u0012>\n\u0005fType\u0018\u0003 \u0002(\u000e2/.protos.SHARK_UpGradeFileRequest.SHARK_FILETYPE\u0012\r\n\u0005fSize\u0018\u0004 \u0001(\r\u0012\u000e\n\u0006fCrc32\u0018\u0005 \u0001(\r\"M\n\rSHARK_FILECMD\u0012\u0012\n\u000eSHARK_UP_START\u0010\u0001\u0012\u0013\n\u000fSHARK_UP_COMPLE\u0010\u0002\u0012\u0013\n\u000fSHARK_UP_REBOOT\u0010\u0003\"G\n\u000eSHARK_FILETYPE\u0012\u001a\n\u0016SHARK_APP_UPGRADE_FILE\u0010\u0001\u0012\u0019\n\u0015SHARK_MCU_UPLOAD_FILE\u0010\u0002\"\u00cf\u0001\n\u0019SHARK_UpGradeFileResponse\u0012?\n\u0006result\u0018\u0001 \u0002(\u000e2/.protos.SHARK_UpGrad"

    const-string v8, "eFileResponse.SHARK_UP_UERR\u0012\u000e\n\u0006offset\u0018\u0002 \u0001(\r\"a\n\rSHARK_UP_UERR\u0012\u0016\n\u0012SHARK_UP_RESULT_OK\u0010\u0001\u0012\u0019\n\u0015SHARK_UP_RESULT_ERROR\u0010\u0002\u0012\u001d\n\u0019SHARK_UP_RESULT_LOW_POWER\u0010\u0003\"B\n\u0015SHARK_UpGradeFilePack\u0012\u000e\n\u0006offset\u0018\u0001 \u0002(\r\u0012\u000c\n\u0004data\u0018\u0002 \u0002(\u000c\u0012\u000b\n\u0003xor\u0018\u0003 \u0002(\r\"\u00b2\u0002\n\u001aSHARK_UserActionStatistics\u0012\u000f\n\u0007powerOn\u0018\u0001 \u0001(\r\u0012\u0012\n\nazimuthMap\u0018\u0002 \u0001(\r\u0012\u000f\n\u0007fmRadio\u0018\u0003 \u0001(\r\u0012\u0011\n\tquickTeam\u0018\u0004 \u0001(\r\u0012\u0017\n\u000fbluetoothDevice\u0018\u0005 \u0001(\r\u0012\u0011\n\thandsFree\u0018\u0006 \u0001(\r\u0012\u0013\n\u000bchannelScan\u0018\u0007 \u0001(\r\u0012\u0012\n\ndoubleFreq\u0018\u0008 \u0001(\r\u0012"

    const-string v9, "\u000f\n\u0007sosMode\u0018\t \u0001(\r\u0012\u0012\n\npowerLevel\u0018\n \u0001(\r\u0012\u0010\n\u0008busyLock\u0018\u000b \u0001(\r\u0012\u0013\n\u000bsquelchTail\u0018\u000c \u0001(\r\u0012\u0012\n\nwideNarrow\u0018\r \u0001(\r\u0012\u0016\n\u000erestoreFactory\u0018\u000e \u0001(\r*\u00e7\u0001\n\u000eSHARK_CONNCODE\u0012\u0014\n\u0010SHARK_DISCONNECT\u0010\u0000\u0012\u0011\n\rSHARK_CONNECT\u0010\u0001\u0012\u000f\n\u000bSHARK_ALLOW\u0010\u0004\u0012\u0010\n\u000cSHARK_REFUSE\u0010\u0005\u0012\u000e\n\nSHARK_WAIT\u0010\u0006\u0012\u0012\n\u000eSHARK_LOWPOWER\u0010\u0007\u0012\u0013\n\u000fSHARK_DIS_ALLOW\u0010\u0008\u0012\u0014\n\u0010SHARK_DIS_REFUSE\u0010\t\u0012\u0012\n\u000eSHARK_DIS_WAIT\u0010\n\u0012\u0016\n\u0012SHARK_DIS_LOWPOWER\u0010\u000b\u0012\u000e\n\nSHARK_BUSY\u0010\u000c*+\n\u000cSHARK_SWITCH\u0012\r\n\tSHARK_OFF\u0010\u0001\u0012\u000c\n\u0008SHARK_ON\u0010\u0002B,"

    const-string v10, "\n\u001bcom.ifengyu.intercom.protosB\u000bSharkProtosH\u0002"

    .line 1
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/protos/SharkProtos$a;

    invoke-direct {v1}, Lcom/ifengyu/intercom/protos/SharkProtos$a;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->v()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Version"

    const-string v3, "ConnCode"

    const-string v4, "DeviceId"

    const-string v5, "DeviceType"

    const-string v6, "AppMode"

    const-string v7, "Language"

    const-string v8, "Btmac"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/SharkProtos;->b:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->v()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "ChNo"

    const-string v3, "ChType"

    const-string v4, "ChTxPower"

    const-string v5, "ChRxFreq"

    const-string v6, "ChTxFreq"

    const-string v7, "ChName"

    const-string v8, "ChSq"

    const-string v9, "ChVox"

    const-string v10, "ChRxCss"

    const-string v11, "ChTxCss"

    const-string v12, "ChElim"

    const-string v13, "ChBand"

    const-string v14, "ChPolite"

    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/SharkProtos;->d:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->v()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 9
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Version"

    const-string v3, "Result"

    const-string v4, "FullInquiry"

    const-string v5, "VerHw"

    const-string v6, "VerSoft"

    const-string v7, "DeviceName"

    const-string v8, "BleName"

    const-string v9, "Charge"

    const-string v10, "Activate"

    const-string v11, "ShareLoc"

    const-string v12, "BtAudio"

    const-string v13, "Ch"

    const-string v14, "VoiceAlert"

    const-string v15, "IsAllPublic"

    const-string v16, "PwsaveMode"

    const-string v17, "TimeStamp"

    const-string v18, "TimeDisplay"

    filled-new-array/range {v2 .. v18}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/SharkProtos;->f:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->v()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->g:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 11
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Version"

    const-string v3, "Result"

    const-string v4, "Option"

    const-string v5, "DeviceMode"

    const-string v6, "StateMode"

    const-string v7, "Ch1"

    const-string v8, "Ch2"

    const-string v9, "CurrentChId"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/SharkProtos;->h:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 12
    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->v()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->i:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 13
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Version"

    const-string v3, "Result"

    const-string v4, "Option"

    const-string v5, "Ch"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/SharkProtos;->j:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 14
    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->v()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->k:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 15
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v4, "Version"

    const-string v5, "Ctlsync"

    const-string v6, "UserId"

    const-string v7, "UserName"

    const-string v8, "UserFreq"

    const-string v9, "Longitude"

    const-string v10, "Latitude"

    const-string v11, "Altitude"

    const-string v12, "TimeSync"

    const-string v13, "RxCss"

    filled-new-array/range {v4 .. v13}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/SharkProtos;->l:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 16
    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->v()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->m:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 17
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v4, "FCmd"

    const-string v5, "FType"

    const-string v6, "FSize"

    const-string v7, "FCrc32"

    filled-new-array {v2, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/SharkProtos;->n:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 18
    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->v()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->o:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 19
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Offset"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/SharkProtos;->p:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 20
    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->v()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->q:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 21
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v3, "Data"

    const-string v4, "Xor"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/SharkProtos;->r:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 22
    invoke-static {}, Lcom/ifengyu/intercom/protos/SharkProtos;->v()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->s:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 23
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "PowerOn"

    const-string v3, "AzimuthMap"

    const-string v4, "FmRadio"

    const-string v5, "QuickTeam"

    const-string v6, "BluetoothDevice"

    const-string v7, "HandsFree"

    const-string v8, "ChannelScan"

    const-string v9, "DoubleFreq"

    const-string v10, "SosMode"

    const-string v11, "PowerLevel"

    const-string v12, "BusyLock"

    const-string v13, "SquelchTail"

    const-string v14, "WideNarrow"

    const-string v15, "RestoreFactory"

    filled-new-array/range {v2 .. v15}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/SharkProtos;->t:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic a()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic b()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->b:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic c()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->m:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic d()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->n:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic e()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->o:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic f()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->p:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic g()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->q:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic h()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->r:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic i()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->s:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic j()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->t:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic k()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic l()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->d:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic m(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 1
    sput-object p0, Lcom/ifengyu/intercom/protos/SharkProtos;->u:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic n()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic o()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->f:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic p()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->g:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic q()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->h:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic r()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->i:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic s()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->j:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic t()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->k:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic u()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->l:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method public static v()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/SharkProtos;->u:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
