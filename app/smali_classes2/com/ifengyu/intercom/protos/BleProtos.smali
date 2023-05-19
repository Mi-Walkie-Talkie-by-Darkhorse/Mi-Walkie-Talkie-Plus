.class public final Lcom/ifengyu/intercom/protos/BleProtos;
.super Ljava/lang/Object;
.source "BleProtos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/BleProtos$ImportConfigFile;,
        Lcom/ifengyu/intercom/protos/BleProtos$ImportConfigFileOrBuilder;,
        Lcom/ifengyu/intercom/protos/BleProtos$OtaInfo;,
        Lcom/ifengyu/intercom/protos/BleProtos$OtaInfoOrBuilder;,
        Lcom/ifengyu/intercom/protos/BleProtos$LocationInfo;,
        Lcom/ifengyu/intercom/protos/BleProtos$LocationInfoOrBuilder;,
        Lcom/ifengyu/intercom/protos/BleProtos$Channel;,
        Lcom/ifengyu/intercom/protos/BleProtos$ChannelOrBuilder;,
        Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperate;,
        Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperateOrBuilder;,
        Lcom/ifengyu/intercom/protos/BleProtos$PttOperate;,
        Lcom/ifengyu/intercom/protos/BleProtos$PttOperateOrBuilder;,
        Lcom/ifengyu/intercom/protos/BleProtos$Frequency;,
        Lcom/ifengyu/intercom/protos/BleProtos$FrequencyOrBuilder;,
        Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;,
        Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfoOrBuilder;,
        Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfo;,
        Lcom/ifengyu/intercom/protos/BleProtos$DeviceTalkInfoOrBuilder;,
        Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfig;,
        Lcom/ifengyu/intercom/protos/BleProtos$DeviceConfigOrBuilder;,
        Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfo;,
        Lcom/ifengyu/intercom/protos/BleProtos$ConnectInfoOrBuilder;,
        Lcom/ifengyu/intercom/protos/BleProtos$PublicKey;,
        Lcom/ifengyu/intercom/protos/BleProtos$PublicKeyOrBuilder;,
        Lcom/ifengyu/intercom/protos/BleProtos$ImportState;,
        Lcom/ifengyu/intercom/protos/BleProtos$OtaState;,
        Lcom/ifengyu/intercom/protos/BleProtos$SqType;,
        Lcom/ifengyu/intercom/protos/BleProtos$MicSensitivity;,
        Lcom/ifengyu/intercom/protos/BleProtos$BandType;,
        Lcom/ifengyu/intercom/protos/BleProtos$ColorType;,
        Lcom/ifengyu/intercom/protos/BleProtos$VolumeOperateType;,
        Lcom/ifengyu/intercom/protos/BleProtos$PttOperateType;,
        Lcom/ifengyu/intercom/protos/BleProtos$VoiceType;,
        Lcom/ifengyu/intercom/protos/BleProtos$DeviceMode;,
        Lcom/ifengyu/intercom/protos/BleProtos$VoxType;,
        Lcom/ifengyu/intercom/protos/BleProtos$Switch;,
        Lcom/ifengyu/intercom/protos/BleProtos$LanguageType;
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

.field private static final u:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static v:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final w:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static x:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static y:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "\n\u000cfengyu.proto\u0012\u0006protos\"\u001a\n\tPublicKey\u0012\r\n\u0005value\u0018\u0001 \u0001(\u000c\"h\n\u000bConnectInfo\u0012\r\n\u0005token\u0018\u0001 \u0001(\u000c\u0012\u000b\n\u0003key\u0018\u0002 \u0001(\u000c\u0012\n\n\u0002iv\u0018\u0003 \u0001(\u000c\u0012\u000b\n\u0003mac\u0018\u0004 \u0001(\u000c\u0012\u0010\n\u0008deviceId\u0018\u0005 \u0001(\r\u0012\u0012\n\ndeviceType\u0018\u0006 \u0001(\r\"\u00f0\u0002\n\u000cDeviceConfig\u0012&\n\u0008langType\u0018\u0001 \u0001(\u000e2\u0014.protos.LanguageType\u0012\"\n\npowerVoice\u0018\u0002 \u0001(\u000e2\u000e.protos.Switch\u0012 \n\u0008keyVoice\u0018\u0003 \u0001(\u000e2\u000e.protos.Switch\u0012 \n\u0008shareLoc\u0018\u0004 \u0001(\u000e2\u000e.protos.Switch\u0012!\n\tcallVoice\u0018\u0005 \u0001(\u000e2\u000e.protos.Switch\u0012$\n\tvoiceType\u0018\u0006 \u0001(\u000e2\u0011.protos.VoiceType\u0012 \n\u0008autoLo"

    const-string v1, "ck\u0018\u0007 \u0001(\u000e2\u000e.protos.Switch\u0012#\n\u000bbatchConfig\u0018\u0008 \u0001(\u000e2\u000e.protos.Switch\u0012\u000c\n\u0004name\u0018\t \u0001(\u000c\u0012!\n\tpowerSave\u0018\n \u0001(\u000e2\u000e.protos.Switch\u0012\u000f\n\u0007advName\u0018\u000b \u0001(\u000c\"\u0097\u0002\n\u000eDeviceTalkInfo\u0012\u001a\n\u0002sq\u0018\u0001 \u0001(\u000e2\u000e.protos.SqType\u0012\u001c\n\u0003vox\u0018\u0002 \u0001(\u000e2\u000f.protos.VoxType\u0012\u001e\n\u0004band\u0018\u0003 \u0001(\u000e2\u0010.protos.BandType\u0012\u001e\n\u0006polite\u0018\u0004 \u0001(\u000e2\u000e.protos.Switch\u0012\u001c\n\u0004elim\u0018\u0005 \u0001(\u000e2\u000e.protos.Switch\u0012\u0010\n\u0008limtTime\u0018\u0006 \u0001(\r\u0012\'\n\u0007sensity\u0018\u0007 \u0001(\u000e2\u0016.protos.MicSensitivity\u0012 \n\u0008doubleCh\u0018\u0008 \u0001(\u000e2\u000e.protos.Switch\u0012\u0010\n\u0008curCh"

    const-string v2, "Seq\u0018\t \u0001(\r\"\u008e\u0002\n\nDeviceInfo\u0012\r\n\u0005verHw\u0018\u0001 \u0001(\r\u0012\u000f\n\u0007verSoft\u0018\u0002 \u0001(\r\u0012\u0010\n\u0008deviceId\u0018\u0003 \u0001(\r\u0012 \n\u0005color\u0018\u0004 \u0001(\u000e2\u0011.protos.ColorType\u0012\u0012\n\ndeviceType\u0018\u0005 \u0001(\r\u0012\u000b\n\u0003mac\u0018\u0006 \u0001(\u000c\u0012\u000f\n\u0007battery\u0018\u0007 \u0001(\r\u0012&\n\ndeviceMode\u0018\u0008 \u0001(\u000e2\u0012.protos.DeviceMode\u0012(\n\nconfigInfo\u0018\t \u0001(\u000b2\u0014.protos.DeviceConfig\u0012(\n\u0008talkInfo\u0018\n \u0001(\u000b2\u0016.protos.DeviceTalkInfo\"r\n\tFrequency\u0012\u000b\n\u0003seq\u0018\u0001 \u0001(\r\u0012\u000c\n\u0004type\u0018\u0002 \u0001(\r\u0012\u000c\n\u0004name\u0018\u0003 \u0001(\u000c\u0012\u000e\n\u0006rxFreq\u0018\u0004 \u0001(\r\u0012\u000e\n\u0006txFreq\u0018\u0005 \u0001(\r\u0012\r\n\u0005rxCss\u0018\u0006 \u0001(\r\u0012\r\n\u0005txCss\u0018\u0007 \u0001(\r\"5"

    const-string v3, "\n\nPttOperate\u0012\'\n\u0007operate\u0018\u0001 \u0001(\u000e2\u0016.protos.PttOperateType\";\n\rVolumeOperate\u0012*\n\u0007operate\u0018\u0001 \u0001(\u000e2\u0019.protos.VolumeOperateType\"I\n\u0007Channel\u0012\u001e\n\u0003ch1\u0018\u0001 \u0001(\u000b2\u0011.protos.Frequency\u0012\u001e\n\u0003ch2\u0018\u0002 \u0001(\u000b2\u0011.protos.Frequency\"\u00bc\u0001\n\u000cLocationInfo\u0012\u001f\n\u0007ctlsync\u0018\u0001 \u0001(\u000e2\u000e.protos.Switch\u0012\u000e\n\u0006userId\u0018\u0002 \u0001(\r\u0012\u0010\n\u0008userName\u0018\u0003 \u0001(\u000c\u0012\u0010\n\u0008userFreq\u0018\u0004 \u0001(\r\u0012\u0011\n\tlongitude\u0018\u0005 \u0001(\u0011\u0012\u0010\n\u0008latitude\u0018\u0006 \u0001(\u0011\u0012\u0010\n\u0008altitude\u0018\u0007 \u0001(\u0011\u0012\u0011\n\ttimestamp\u0018\u0008 \u0001(\r\u0012\r\n\u0005rxCss\u0018\t \u0001(\r\"9\n\u0007OtaInfo\u0012\r\n\u0005fSize"

    const-string v4, "\u0018\u0001 \u0001(\r\u0012\u001f\n\u0005state\u0018\u0002 \u0001(\u000e2\u0010.protos.OtaState\"6\n\u0010ImportConfigFile\u0012\"\n\u0005state\u0018\u0001 \u0001(\u000e2\u0013.protos.ImportState*(\n\u000cLanguageType\u0012\u000b\n\u0007CHINESE\u0010\u0000\u0012\u000b\n\u0007ENGLISH\u0010\u0001*\u0019\n\u0006Switch\u0012\u0007\n\u0003OFF\u0010\u0000\u0012\u0006\n\u0002ON\u0010\u0001*C\n\u0007VoxType\u0012\u000b\n\u0007VOX_OFF\u0010\u0000\u0012\u000b\n\u0007VOX_LOW\u0010\u0001\u0012\u000e\n\nVOX_MIDDLE\u0010\u0002\u0012\u000e\n\nVOX_HEIGHT\u0010\u0003*[\n\nDeviceMode\u0012\u0010\n\u000cMODEL_NORMAL\u0010\u0000\u0012\u000b\n\u0007SCAN_CH\u0010\u0001\u0012\r\n\tSCAN_FREQ\u0010\u0002\u0012\u0010\n\u000cBATCH_CONFIG\u0010\u0003\u0012\r\n\tSYNC_FREQ\u0010\u0004*B\n\tVoiceType\u0012\u000f\n\u000bVOICE_CLOSE\u0010\u0000\u0012\u0011\n\rVOICE_CHINESE\u0010\u0001\u0012\u0011\n\rVOICE_ENGLISH\u0010\u0002*,\n\u000ePt"

    const-string v5, "tOperateType\u0012\r\n\tPRESSDOWN\u0010\u0000\u0012\u000b\n\u0007RELEASE\u0010\u0001*/\n\u0011VolumeOperateType\u0012\r\n\tTURN_DOWN\u0010\u0000\u0012\u000b\n\u0007TURN_UP\u0010\u0001*:\n\tColorType\u0012\t\n\u0005WHITE\u0010\u0000\u0012\u0008\n\u0004BLUE\u0010\u0001\u0012\t\n\u0005BLACK\u0010\u0002\u0012\r\n\tSPACEGRAY\u0010\u0003**\n\u0008BandType\u0012\u000f\n\u000bBAND_NARROW\u0010\u0000\u0012\r\n\tBAND_WIDE\u0010\u0001*;\n\u000eMicSensitivity\u0012\u000b\n\u0007MIC_LOW\u0010\u0000\u0012\u000e\n\nMIC_MIDDLE\u0010\u0001\u0012\u000c\n\u0008MIC_HIGH\u0010\u0002*5\n\u0006SqType\u0012\n\n\u0006SQ_OFF\u0010\u0000\u0012\r\n\tSQ_NORMAL\u0010\u0001\u0012\u0010\n\u000cSQ_SENSITIVE\u0010\u0002*\u001e\n\u0008OtaState\u0012\t\n\u0005START\u0010\u0000\u0012\u0007\n\u0003END\u0010\u0001*0\n\u000bImportState\u0012\u000f\n\u000bImportSTART\u0010\u0000\u0012\u0010\n\u000cImportFINISH\u0010\u0001B*\n\u001bcom.i"

    const-string v6, "fengyu.intercom.protosB\tBleProtosH\u0002"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/protos/BleProtos$a;

    invoke-direct {v1}, Lcom/ifengyu/intercom/protos/BleProtos$a;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->z()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Value"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/BleProtos;->b:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->z()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Token"

    const-string v3, "Key"

    const-string v4, "Iv"

    const-string v5, "Mac"

    const-string v6, "DeviceId"

    const-string v7, "DeviceType"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/BleProtos;->d:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->z()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 9
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "LangType"

    const-string v3, "PowerVoice"

    const-string v4, "KeyVoice"

    const-string v5, "ShareLoc"

    const-string v6, "CallVoice"

    const-string v7, "VoiceType"

    const-string v8, "AutoLock"

    const-string v9, "BatchConfig"

    const-string v10, "Name"

    const-string v11, "PowerSave"

    const-string v12, "AdvName"

    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/BleProtos;->f:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 10
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->z()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->g:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 11
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Sq"

    const-string v3, "Vox"

    const-string v4, "Band"

    const-string v5, "Polite"

    const-string v6, "Elim"

    const-string v7, "LimtTime"

    const-string v8, "Sensity"

    const-string v9, "DoubleCh"

    const-string v10, "CurChSeq"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/BleProtos;->h:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 12
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->z()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->i:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 13
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "VerHw"

    const-string v3, "VerSoft"

    const-string v4, "DeviceId"

    const-string v5, "Color"

    const-string v6, "DeviceType"

    const-string v7, "Mac"

    const-string v8, "Battery"

    const-string v9, "DeviceMode"

    const-string v10, "ConfigInfo"

    const-string v11, "TalkInfo"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/BleProtos;->j:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 14
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->z()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->k:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 15
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Seq"

    const-string v3, "Type"

    const-string v4, "Name"

    const-string v5, "RxFreq"

    const-string v6, "TxFreq"

    const-string v7, "RxCss"

    const-string v8, "TxCss"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/BleProtos;->l:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 16
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->z()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->m:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 17
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Operate"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/BleProtos;->n:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 18
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->z()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->o:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 19
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/BleProtos;->p:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 20
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->z()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->q:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 21
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Ch1"

    const-string v3, "Ch2"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/BleProtos;->r:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 22
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->z()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->s:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 23
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Ctlsync"

    const-string v3, "UserId"

    const-string v4, "UserName"

    const-string v5, "UserFreq"

    const-string v6, "Longitude"

    const-string v7, "Latitude"

    const-string v8, "Altitude"

    const-string v9, "Timestamp"

    const-string v10, "RxCss"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/BleProtos;->t:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 24
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->z()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->u:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 25
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "FSize"

    const-string v3, "State"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/BleProtos;->v:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 26
    invoke-static {}, Lcom/ifengyu/intercom/protos/BleProtos;->z()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->w:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 27
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/BleProtos;->x:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic a()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic b()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->b:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic c()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->q:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic d()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->r:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic e()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->s:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic f()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->t:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic g()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->u:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic h()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->v:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic i()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->w:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic j()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->x:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic k(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 1
    sput-object p0, Lcom/ifengyu/intercom/protos/BleProtos;->y:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic l()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic m()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->f:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic n()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->g:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic o()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->h:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic p()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->i:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic q()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->j:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic r()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->k:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic s()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->l:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic t()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic u()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->m:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic v()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->n:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic w()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->d:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic x()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->o:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic y()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->p:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method public static z()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/protos/BleProtos;->y:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
