.class public final Lcom/ifengyu/intercom/protos/SealProtos;
.super Ljava/lang/Object;
.source "SealProtos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatistics;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UserActionStatisticsOrBuilder;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItem;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanItemOrBuilder;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControl;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarScanControlOrBuilder;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectState;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarConnectStateOrBuilder;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfo;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_BtEarInfoOrBuilder;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePack;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFilePackOrBuilder;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponse;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileResponseOrBuilder;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequest;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_UpGradeFileRequestOrBuilder;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfo;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_LocationInfoOrBuilder;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperateOrBuilder;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperateOrBuilder;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParam;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_DeviceParamOrBuilder;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfo;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOrBuilder;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_Connect;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ConnectOrBuilder;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_SWITCH;,
        Lcom/ifengyu/intercom/protos/SealProtos$SEAL_CONNCODE;
    }
.end annotation


# static fields
.field private static final A:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static B:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static C:Lcom/google/protobuf/Descriptors$FileDescriptor;

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
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\n\nseal.proto\u0012\u0006protos\"\u00da\u0002\n\u000cSEAL_Connect\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\'\n\u0008connCode\u0018\u0002 \u0002(\u000e2\u0015.protos.SEAL_CONNCODE\u0012\u0010\n\u0008deviceId\u0018\u0003 \u0001(\r\u0012\u0012\n\ndeviceType\u0018\u0004 \u0001(\r\u00122\n\u0007appMode\u0018\u0005 \u0001(\u000e2!.protos.SEAL_Connect.SEAL_APPTYPE\u00128\n\u0008language\u0018\u0006 \u0001(\u000e2&.protos.SEAL_Connect.SEAL_LANGUAGETYPE\u0012\r\n\u0005color\u0018\u0007 \u0001(\r\"4\n\u000cSEAL_APPTYPE\u0012\u0010\n\u000cSEAL_OWN_APP\u0010\u0000\u0012\u0012\n\u000eSEAL_MIJIA_APP\u0010\u0001\"7\n\u0011SEAL_LANGUAGETYPE\u0012\u0010\n\u000cSEAL_CHINESE\u0010\u0000\u0012\u0010\n\u000cSEAL_ENGLISH\u0010\u0001\"\u0088\u0003\n\u0010SEAL_ChannelInfo\u0012\r\n\u0005ch_no\u0018"

    aput-object v1, v0, v5

    const-string v1, "\u0001 \u0001(\r\u00125\n\u0007ch_type\u0018\u0002 \u0001(\u000e2$.protos.SEAL_ChannelInfo.SEAL_CHTYPE\u0012\u0012\n\nch_txPower\u0018\u0003 \u0001(\r\u0012\u0011\n\tch_rxFreq\u0018\u0004 \u0001(\r\u0012\u0011\n\tch_txFreq\u0018\u0005 \u0001(\r\u0012\u000f\n\u0007ch_name\u0018\u0006 \u0001(\u000c\u0012\r\n\u0005ch_sq\u0018\u0007 \u0001(\r\u0012\u000e\n\u0006ch_vox\u0018\u0008 \u0001(\r\u0012\u0010\n\u0008ch_rxCss\u0018\t \u0001(\r\u0012\u0010\n\u0008ch_txCss\u0018\n \u0001(\r\u0012$\n\u0007ch_elim\u0018\u000b \u0001(\u000e2\u0013.protos.SEAL_SWITCH\u0012\u000f\n\u0007ch_band\u0018\u000c \u0001(\r\u0012&\n\tch_polite\u0018\r \u0001(\u000e2\u0013.protos.SEAL_SWITCH\"A\n\u000bSEAL_CHTYPE\u0012\u000f\n\u000bSEAL_PUBLIC\u0010\u0000\u0012\u000f\n\u000bSEAL_REMOTE\u0010\u0001\u0012\u0010\n\u000cSEAL_USERDEF\u0010\u0002\"\u00ce\u0005\n\u0010SEAL_DeviceParam\u0012\u000f\n\u0007version\u0018\u0001 \u0002"

    aput-object v1, v0, v6

    const-string v1, "(\r\u00126\n\u0006result\u0018\u0002 \u0001(\u000e2&.protos.SEAL_DeviceParam.SEAL_DEV_UERR\u0012(\n\u000bfullInquiry\u0018\u0003 \u0001(\u000e2\u0013.protos.SEAL_SWITCH\u0012\r\n\u0005verHw\u0018\u0004 \u0001(\r\u0012\u000f\n\u0007verSoft\u0018\u0005 \u0001(\r\u0012\u0012\n\ndeviceName\u0018\u0006 \u0001(\u000c\u0012\u000f\n\u0007bleName\u0018\u0007 \u0001(\u000c\u0012\u000e\n\u0006charge\u0018\u0008 \u0001(\r\u0012\u0010\n\u0008activate\u0018\t \u0001(\r\u0012%\n\u0008shareLoc\u0018\n \u0001(\u000e2\u0013.protos.SEAL_SWITCH\u0012\u000f\n\u0007btAudio\u0018\u000b \u0001(\r\u0012$\n\u0002ch\u0018\u000c \u0001(\u000b2\u0018.protos.SEAL_ChannelInfo\u0012\'\n\nvoiceAlert\u0018\r \u0001(\u000e2\u0013.protos.SEAL_SWITCH\u0012(\n\u000bisAllPublic\u0018\u000e \u0001(\u000e2\u0013.protos.SEAL_SWITCH\u0012\u0012\n\npwsaveMode\u0018\u000f \u0001(\r"

    aput-object v1, v0, v7

    const-string v1, "\u0012:\n\tvoiceType\u0018\u0010 \u0001(\u000e2\'.protos.SEAL_DeviceParam.SEAL_VOICETYPE\"{\n\rSEAL_DEV_UERR\u0012\u0017\n\u0013SEAL_PARAM_QUERY_OK\u0010\u0001\u0012\u001a\n\u0016SEAL_PARAM_QUERY_ERROR\u0010\u0002\u0012\u0018\n\u0014SEAL_PARAM_UPDATE_OK\u0010\u0003\u0012\u001b\n\u0017SEAL_PARAM_UPDATE_ERROR\u0010\u0004\"b\n\u000eSEAL_VOICETYPE\u0012\u0018\n\u0014SEAL_VOICETYPE_CLOSE\u0010\u0001\u0012\u001a\n\u0016SEAL_VOICETYPE_CHINESE\u0010\u0002\u0012\u001a\n\u0016SEAL_VOICETYPE_ENGLISH\u0010\u0003\"\u00c3\u0004\n\u0018SEAL_ChannelStateOperate\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012=\n\u0006result\u0018\u0002 \u0001(\u000e2-.protos.SEAL_ChannelStateOperate.SEAL_ST_UERR\u0012>\n\u0006op"

    aput-object v1, v0, v8

    const-string v1, "tion\u0018\u0003 \u0001(\u000e2..protos.SEAL_ChannelStateOperate.SEAL_STOPTION\u0012>\n\ndeviceMode\u0018\u0004 \u0001(\u000e2*.protos.SEAL_ChannelStateOperate.SEAL_MODE\u0012\u0011\n\tstateMode\u0018\u0005 \u0001(\r\u0012%\n\u0003ch1\u0018\u0006 \u0001(\u000b2\u0018.protos.SEAL_ChannelInfo\"Y\n\u000cSEAL_ST_UERR\u0012\u000e\n\nSEAL_ST_OK\u0010\u0000\u0012\u0011\n\rSEAL_ST_ERROR\u0010\u0001\u0012\u0011\n\rSEAL_ST_EMPTY\u0010\u0002\u0012\u0013\n\u000fSEAL_ST_FORBIDE\u0010\u0003\"6\n\rSEAL_STOPTION\u0012\u0012\n\u000eSEAL_ST_UPDATE\u0010\u0000\u0012\u0011\n\rSEAL_ST_QUERY\u0010\u0001\"\u0089\u0001\n\tSEAL_MODE\u0012\u0014\n\u0010SEAL_MODE_NORMAL\u0010\u0000\u0012\u000e\n\nSEAL_SOS_T\u0010\u0001\u0012\u000e\n\nSEAL_SOS_R\u0010\u0002\u0012\u0010\n\u000cS"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "EAL_SCAN_CH\u0010\u0003\u0012\u0012\n\u000eSEAL_SCAN_FREQ\u0010\u0004\u0012\u000f\n\u000bSEAL_TEAM_M\u0010\u0005\u0012\u000f\n\u000bSEAL_TEAM_S\u0010\u0006\"\u00bf\u0003\n\u0017SEAL_ChannelInfoOperate\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012<\n\u0006result\u0018\u0002 \u0001(\u000e2,.protos.SEAL_ChannelInfoOperate.SEAL_CH_UERR\u0012=\n\u0006option\u0018\u0003 \u0001(\u000e2-.protos.SEAL_ChannelInfoOperate.SEAL_CHOPTION\u0012$\n\u0002ch\u0018\u0004 \u0001(\u000b2\u0018.protos.SEAL_ChannelInfo\"\u008f\u0001\n\u000cSEAL_CH_UERR\u0012\u000e\n\nSEAL_CH_OK\u0010\u0000\u0012\u0011\n\rSEAL_CH_ERROR\u0010\u0001\u0012\u0011\n\rSEAL_CH_EMPTY\u0010\u0002\u0012\u0013\n\u000fSEAL_CH_FORBIDE\u0010\u0003\u0012\u001a\n\u0016SEAL_CH_QUERY_CONTINUE\u0010\u0004\u0012\u0018\n\u0014S"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EAL_CH_QUERY_FINISH\u0010\u0005\"^\n\rSEAL_CHOPTION\u0012\u0012\n\u000eSEAL_CH_INSERT\u0010\u0000\u0012\u0012\n\u000eSEAL_CH_DELETE\u0010\u0001\u0012\u0012\n\u000eSEAL_CH_MODIFY\u0010\u0002\u0012\u0011\n\rSEAL_CH_QUERY\u0010\u0003\"\u00d6\u0001\n\u0011SEAL_LocationInfo\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012$\n\u0007ctlsync\u0018\u0002 \u0001(\u000e2\u0013.protos.SEAL_SWITCH\u0012\u000e\n\u0006userId\u0018\u0003 \u0001(\r\u0012\u0010\n\u0008userName\u0018\u0004 \u0001(\u000c\u0012\u0010\n\u0008userFreq\u0018\u0005 \u0001(\r\u0012\u0011\n\tlongitude\u0018\u0006 \u0001(\u0011\u0012\u0010\n\u0008latitude\u0018\u0007 \u0001(\u0011\u0012\u0010\n\u0008altitude\u0018\u0008 \u0001(\u0011\u0012\u0010\n\u0008timeSync\u0018\t \u0001(\r\u0012\r\n\u0005rxCss\u0018\n \u0001(\r\"\u00d4\u0002\n\u0017SEAL_UpGradeFileRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012:\n\u0004fCmd\u0018\u0002 \u0002(\u000e2,.prot"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "os.SEAL_UpGradeFileRequest.SEAL_FILECMD\u0012<\n\u0005fType\u0018\u0003 \u0002(\u000e2-.protos.SEAL_UpGradeFileRequest.SEAL_FILETYPE\u0012\r\n\u0005fSize\u0018\u0004 \u0001(\r\u0012\u000e\n\u0006fCrc32\u0018\u0005 \u0001(\r\"I\n\u000cSEAL_FILECMD\u0012\u0011\n\rSEAL_UP_START\u0010\u0001\u0012\u0012\n\u000eSEAL_UP_COMPLE\u0010\u0002\u0012\u0012\n\u000eSEAL_UP_REBOOT\u0010\u0003\"D\n\rSEAL_FILETYPE\u0012\u0019\n\u0015SEAL_APP_UPGRADE_FILE\u0010\u0001\u0012\u0018\n\u0014SEAL_MCU_UPLOAD_FILE\u0010\u0002\"\u00c8\u0001\n\u0018SEAL_UpGradeFileResponse\u0012=\n\u0006result\u0018\u0001 \u0002(\u000e2-.protos.SEAL_UpGradeFileResponse.SEAL_UP_UERR\u0012\u000e\n\u0006offset\u0018\u0002 \u0001(\r\"]\n\u000cSEAL_UP_UER"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "R\u0012\u0015\n\u0011SEAL_UP_RESULT_OK\u0010\u0001\u0012\u0018\n\u0014SEAL_UP_RESULT_ERROR\u0010\u0002\u0012\u001c\n\u0018SEAL_UP_RESULT_LOW_POWER\u0010\u0003\"A\n\u0014SEAL_UpGradeFilePack\u0012\u000e\n\u0006offset\u0018\u0001 \u0002(\r\u0012\u000c\n\u0004data\u0018\u0002 \u0002(\u000c\u0012\u000b\n\u0003xor\u0018\u0003 \u0002(\r\"\u00ac\u0001\n\u000eSEAL_BtEarInfo\u0012\u000b\n\u0003mac\u0018\u0001 \u0002(\u000c\u0012\u000c\n\u0004name\u0018\u0002 \u0002(\u000c\u0012\u000c\n\u0004rssi\u0018\u0003 \u0002(\u0011\u00123\n\u0004type\u0018\u0004 \u0002(\u000e2%.protos.SEAL_BtEarInfo.SEAL_BTEARTYPE\"<\n\u000eSEAL_BTEARTYPE\u0012\u0015\n\u0011SEAL_BTEAR_NORMAL\u0010\u0000\u0012\u0013\n\u000fSEAL_BTEAR_CONE\u0010\u0001\"\u00a1\u0003\n\u0016SEAL_BtEarConnectState\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012E\n\u0006result\u0018\u0002 \u0001(\u000e25.protos.SEAL_BtE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "arConnectState.SEAL_BTEAR_CONN_RESULT\u0012@\n\u0006option\u0018\u0003 \u0001(\u000e20.protos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION\u0012%\n\u0005btEar\u0018\u0004 \u0001(\u000b2\u0016.protos.SEAL_BtEarInfo\"h\n\u0016SEAL_BTEAR_CONN_RESULT\u0012\u0016\n\u0012SEAL_BTEAR_CONN_OK\u0010\u0000\u0012\u0019\n\u0015SEAL_BTEAR_CONN_ERROR\u0010\u0001\u0012\u001b\n\u0017SEAL_BTEAR_CONN_TIMEOUT\u0010\u0002\"\\\n\u0011SEAL_BTEAR_OPTION\u0012\u0014\n\u0010SEAL_BTEAR_QUERY\u0010\u0000\u0012\u0016\n\u0012SEAL_BTEAR_CONNECT\u0010\u0001\u0012\u0019\n\u0015SEAL_BTEAR_DISCONNECT\u0010\u0002\"\u00e3\u0002\n\u0015SEAL_BtEarScanControl\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012D\n\u0006result\u0018\u0002 \u0001("

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u000e24.protos.SEAL_BtEarScanControl.SEAL_BTEAR_SCAN_RESULT\u0012@\n\u0006option\u0018\u0003 \u0002(\u000e20.protos.SEAL_BtEarScanControl.SEAL_BTEAR_CONTROL\"K\n\u0016SEAL_BTEAR_SCAN_RESULT\u0012\u0016\n\u0012SEAL_BTEAR_SCAN_OK\u0010\u0000\u0012\u0019\n\u0015SEAL_BTEAR_SCAN_ERROR\u0010\u0001\"d\n\u0012SEAL_BTEAR_CONTROL\u0012\u0019\n\u0015SEAL_BTEAR_SCAN_START\u0010\u0000\u0012\u0019\n\u0015SEAL_BTEAR_SCAN_PAUSE\u0010\u0001\u0012\u0018\n\u0014SEAL_BTEAR_SCAN_STOP\u0010\u0002\"\u00c1\u0001\n\u0012SEAL_BtEarScanItem\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012A\n\u0006result\u0018\u0002 \u0001(\u000e21.protos.SEAL_BtEarScanItem.SEAL_BTEAR_ITEM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_RESULT\u0012%\n\u0005btEar\u0018\u0003 \u0001(\u000b2\u0016.protos.SEAL_BtEarInfo\"0\n\u0016SEAL_BTEAR_ITEM_RESULT\u0012\u0016\n\u0012SEAL_BTEAR_ITEM_OK\u0010\u0000\"\u00a6\u0001\n\u0019SEAL_UserActionStatistics\u0012\u000f\n\u0007powerOn\u0018\u0001 \u0001(\r\u0012\u0014\n\u000cfactoryReset\u0018\u0002 \u0001(\r\u0012\u0015\n\rdeviceIdQuery\u0018\u0003 \u0001(\r\u0012\u000f\n\u0007keyLock\u0018\u0004 \u0001(\r\u0012\u0017\n\u000fpowerLevelQuery\u0018\u0005 \u0001(\r\u0012\u000e\n\u0006fmOpen\u0018\u0006 \u0001(\r\u0012\u0011\n\tconnBtEar\u0018\u0007 \u0001(\r*\u00db\u0001\n\rSEAL_CONNCODE\u0012\u0013\n\u000fSEAL_DISCONNECT\u0010\u0000\u0012\u0010\n\u000cSEAL_CONNECT\u0010\u0001\u0012\u000e\n\nSEAL_ALLOW\u0010\u0004\u0012\u000f\n\u000bSEAL_REFUSE\u0010\u0005\u0012\r\n\tSEAL_WAIT\u0010\u0006\u0012\u0011\n\rSEAL_LOWPOWER\u0010\u0007\u0012\u0012\n\u000eSEAL_DI"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "S_ALLOW\u0010\u0008\u0012\u0013\n\u000fSEAL_DIS_REFUSE\u0010\t\u0012\u0011\n\rSEAL_DIS_WAIT\u0010\n\u0012\u0015\n\u0011SEAL_DIS_LOWPOWER\u0010\u000b\u0012\r\n\tSEAL_BUSY\u0010\u000c*(\n\u000bSEAL_SWITCH\u0012\u000c\n\u0008SEAL_OFF\u0010\u0001\u0012\u000b\n\u0007SEAL_ON\u0010\u0002B+\n\u001bcom.ifengyu.intercom.protosB\nSealProtosH\u0002"

    aput-object v2, v0, v1

    new-instance v1, Lcom/ifengyu/intercom/protos/SealProtos$1;

    invoke-direct {v1}, Lcom/ifengyu/intercom/protos/SealProtos$1;-><init>()V

    new-array v2, v5, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Version"

    aput-object v3, v2, v5

    const-string v3, "ConnCode"

    aput-object v3, v2, v6

    const-string v3, "DeviceId"

    aput-object v3, v2, v7

    const-string v3, "DeviceType"

    aput-object v3, v2, v8

    const-string v3, "AppMode"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Language"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Color"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->b:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ChNo"

    aput-object v3, v2, v5

    const-string v3, "ChType"

    aput-object v3, v2, v6

    const-string v3, "ChTxPower"

    aput-object v3, v2, v7

    const-string v3, "ChRxFreq"

    aput-object v3, v2, v8

    const-string v3, "ChTxFreq"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "ChName"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "ChSq"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "ChVox"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "ChRxCss"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "ChTxCss"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "ChElim"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "ChBand"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "ChPolite"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->d:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Version"

    aput-object v3, v2, v5

    const-string v3, "Result"

    aput-object v3, v2, v6

    const-string v3, "FullInquiry"

    aput-object v3, v2, v7

    const-string v3, "VerHw"

    aput-object v3, v2, v8

    const-string v3, "VerSoft"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "DeviceName"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "BleName"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Charge"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Activate"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "ShareLoc"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "BtAudio"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Ch"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "VoiceAlert"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "IsAllPublic"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "PwsaveMode"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "VoiceType"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->f:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->g:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos;->g:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Version"

    aput-object v3, v2, v5

    const-string v3, "Result"

    aput-object v3, v2, v6

    const-string v3, "Option"

    aput-object v3, v2, v7

    const-string v3, "DeviceMode"

    aput-object v3, v2, v8

    const-string v3, "StateMode"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Ch1"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->h:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->i:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos;->i:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Version"

    aput-object v3, v2, v5

    const-string v3, "Result"

    aput-object v3, v2, v6

    const-string v3, "Option"

    aput-object v3, v2, v7

    const-string v3, "Ch"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->j:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->k:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos;->k:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Version"

    aput-object v3, v2, v5

    const-string v3, "Ctlsync"

    aput-object v3, v2, v6

    const-string v3, "UserId"

    aput-object v3, v2, v7

    const-string v3, "UserName"

    aput-object v3, v2, v8

    const-string v3, "UserFreq"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Longitude"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Latitude"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Altitude"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "TimeSync"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "RxCss"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->l:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->m:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos;->m:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Version"

    aput-object v3, v2, v5

    const-string v3, "FCmd"

    aput-object v3, v2, v6

    const-string v3, "FType"

    aput-object v3, v2, v7

    const-string v3, "FSize"

    aput-object v3, v2, v8

    const-string v3, "FCrc32"

    aput-object v3, v2, v9

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->n:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->o:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos;->o:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Result"

    aput-object v3, v2, v5

    const-string v3, "Offset"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->p:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->q:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos;->q:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Offset"

    aput-object v3, v2, v5

    const-string v3, "Data"

    aput-object v3, v2, v6

    const-string v3, "Xor"

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->r:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->s:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos;->s:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Mac"

    aput-object v3, v2, v5

    const-string v3, "Name"

    aput-object v3, v2, v6

    const-string v3, "Rssi"

    aput-object v3, v2, v7

    const-string v3, "Type"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->t:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->u:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos;->u:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Version"

    aput-object v3, v2, v5

    const-string v3, "Result"

    aput-object v3, v2, v6

    const-string v3, "Option"

    aput-object v3, v2, v7

    const-string v3, "BtEar"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->v:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->w:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos;->w:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Version"

    aput-object v3, v2, v5

    const-string v3, "Result"

    aput-object v3, v2, v6

    const-string v3, "Option"

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->x:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->y:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos;->y:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Version"

    aput-object v3, v2, v5

    const-string v3, "Result"

    aput-object v3, v2, v6

    const-string v3, "BtEar"

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->z:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->A:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos;->A:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "PowerOn"

    aput-object v3, v2, v5

    const-string v3, "FactoryReset"

    aput-object v3, v2, v6

    const-string v3, "DeviceIdQuery"

    aput-object v3, v2, v7

    const-string v3, "KeyLock"

    aput-object v3, v2, v8

    const-string v3, "PowerLevelQuery"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "FmOpen"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "ConnBtEar"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->B:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic A()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->z:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic B()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->A:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic C()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->B:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->C:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method static synthetic a(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/ifengyu/intercom/protos/SealProtos;->C:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic b()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic c()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->b:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic d()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic e()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->d:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic f()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic g()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->f:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic h()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->g:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic i()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->h:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic j()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->i:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic k()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->j:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic l()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->k:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic m()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->l:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic n()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->m:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic o()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->n:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic p()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->o:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic q()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->p:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic r()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->q:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic s()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->r:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic t()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->s:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic u()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->t:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic v()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->u:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic w()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->v:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic x()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->w:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic y()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->x:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic z()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/SealProtos;->y:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method
