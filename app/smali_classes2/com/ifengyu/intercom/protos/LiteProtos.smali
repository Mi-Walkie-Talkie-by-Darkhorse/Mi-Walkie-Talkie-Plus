.class public final Lcom/ifengyu/intercom/protos/LiteProtos;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacket;,
        Lcom/ifengyu/intercom/protos/LiteProtos$OtaPacketOrBuilder;,
        Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponse;,
        Lcom/ifengyu/intercom/protos/LiteProtos$OtaResponseOrBuilder;,
        Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequest;,
        Lcom/ifengyu/intercom/protos/LiteProtos$OtaRequestOrBuilder;,
        Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodFskResponse;,
        Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodFskResponseOrBuilder;,
        Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgResponse;,
        Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgResponseOrBuilder;,
        Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgRequest;,
        Lcom/ifengyu/intercom/protos/LiteProtos$BatchBrodCfgRequestOrBuilder;,
        Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponse;,
        Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoResponseOrBuilder;,
        Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequest;,
        Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoRequestOrBuilder;,
        Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfo;,
        Lcom/ifengyu/intercom/protos/LiteProtos$ChannelInfoOrBuilder;,
        Lcom/ifengyu/intercom/protos/LiteProtos$DevResponse;,
        Lcom/ifengyu/intercom/protos/LiteProtos$DevResponseOrBuilder;,
        Lcom/ifengyu/intercom/protos/LiteProtos$DevRequest;,
        Lcom/ifengyu/intercom/protos/LiteProtos$DevRequestOrBuilder;,
        Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;,
        Lcom/ifengyu/intercom/protos/LiteProtos$DevInfoOrBuilder;,
        Lcom/ifengyu/intercom/protos/LiteProtos$LoginResponse;,
        Lcom/ifengyu/intercom/protos/LiteProtos$LoginResponseOrBuilder;,
        Lcom/ifengyu/intercom/protos/LiteProtos$LoginRequest;,
        Lcom/ifengyu/intercom/protos/LiteProtos$LoginRequestOrBuilder;,
        Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponse;,
        Lcom/ifengyu/intercom/protos/LiteProtos$ConnectResponseOrBuilder;,
        Lcom/ifengyu/intercom/protos/LiteProtos$ConnectRequest;,
        Lcom/ifengyu/intercom/protos/LiteProtos$ConnectRequestOrBuilder;,
        Lcom/ifengyu/intercom/protos/LiteProtos$RESULT;,
        Lcom/ifengyu/intercom/protos/LiteProtos$SWITCH;,
        Lcom/ifengyu/intercom/protos/LiteProtos$LANGUAGE_TYPE;,
        Lcom/ifengyu/intercom/protos/LiteProtos$APP_TYPE;,
        Lcom/ifengyu/intercom/protos/LiteProtos$CONNECT_CODE;
    }
.end annotation


# static fields
.field private static final A:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static B:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final C:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static D:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final E:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static F:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static G:Lcom/google/protobuf/Descriptors$FileDescriptor;

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
    .locals 16

    const-string v0, "\n\nlite.proto\u0012\u0006protos\"i\n\u000eConnectRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012!\n\u0007appType\u0018\u0002 \u0002(\u000e2\u0010.protos.APP_TYPE\u0012\u0010\n\u0008deviceId\u0018\u0003 \u0001(\r\u0012\u0011\n\tpublicKey\u0018\u0005 \u0001(\u000c\"\u0093\u0001\n\u000fConnectResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012)\n\u000bconnectCode\u0018\u0002 \u0002(\u000e2\u0014.protos.CONNECT_CODE\u0012\u0010\n\u0008deviceId\u0018\u0003 \u0002(\r\u0012\u0012\n\ndeviceType\u0018\u0004 \u0002(\r\u0012\u000b\n\u0003mac\u0018\u0005 \u0002(\u000c\u0012\u0011\n\tpublicKey\u0018\u0006 \u0001(\u000c\".\n\u000cLoginRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\r\n\u0005token\u0018\u0002 \u0001(\u000c\"\u00a6\u0001\n\rLoginResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012)\n\u000bconnectCode\u0018\u0002 \u0002(\u000e2\u0014.protos.CONNECT_C"

    const-string v1, "ODE\u0012\u0010\n\u0008deviceId\u0018\u0003 \u0001(\r\u0012\u0012\n\ndeviceType\u0018\u0004 \u0001(\r\u0012\u000b\n\u0003mac\u0018\u0005 \u0001(\u000c\u0012\r\n\u0005token\u0018\u0006 \u0001(\u000c\u0012\u000b\n\u0003key\u0018\u0007 \u0001(\u000c\u0012\n\n\u0002iv\u0018\u0008 \u0001(\u000c\"\u00b5\u0002\n\u0007DevInfo\u0012\n\n\u0002sq\u0018\u0001 \u0001(\r\u0012\u001b\n\u0003vox\u0018\u0002 \u0001(\u000e2\u000e.protos.SWITCH\u0012\u000c\n\u0004band\u0018\u0003 \u0001(\r\u0012\u001e\n\u0006polite\u0018\u0004 \u0001(\u000e2\u000e.protos.SWITCH\u0012\'\n\u0008langType\u0018\u0005 \u0001(\u000e2\u0015.protos.LANGUAGE_TYPE\u0012!\n\tbootVoice\u0018\u0006 \u0001(\u000e2\u000e.protos.SWITCH\u0012 \n\u0008keyVoice\u0018\u0007 \u0001(\u000e2\u000e.protos.SWITCH\u0012\u000c\n\u0004name\u0018\u0008 \u0001(\u000c\u0012\r\n\u0005verHw\u0018\t \u0001(\r\u0012\u000f\n\u0007verSoft\u0018\n \u0001(\r\u0012\u0010\n\u0008deviceId\u0018\u000b \u0001(\r\u0012\u0013\n\u000bdeviceColor\u0018\u000c \u0001(\r\u0012\u0010\n\u0008verVoice"

    const-string v2, "\u0018\r \u0001(\r\"?\n\nDevRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012 \n\u0007devInfo\u0018\u0002 \u0001(\u000b2\u000f.protos.DevInfo\"`\n\u000bDevResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u001e\n\u0006result\u0018\u0002 \u0002(\u000e2\u000e.protos.RESULT\u0012 \n\u0007devInfo\u0018\u0003 \u0001(\u000b2\u000f.protos.DevInfo\"X\n\u000bChannelInfo\u0012\u000b\n\u0003seq\u0018\u0001 \u0002(\r\u0012\u000e\n\u0006rxFreq\u0018\u0002 \u0002(\r\u0012\u000e\n\u0006txFreq\u0018\u0003 \u0002(\r\u0012\r\n\u0005rxCss\u0018\u0004 \u0002(\r\u0012\r\n\u0005txCss\u0018\u0005 \u0002(\r\"O\n\u0012ChannelInfoRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012(\n\u000bchannelInfo\u0018\u0002 \u0001(\u000b2\u0013.protos.ChannelInfo\"p\n\u0013ChannelInfoResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u001e\n\u0006result\u0018\u0002 \u0002(\u000e2\u000e.p"

    const-string v3, "rotos.RESULT\u0012(\n\u000bchannelInfo\u0018\u0003 \u0001(\u000b2\u0013.protos.ChannelInfo\"&\n\u0013BatchBrodCfgRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\"G\n\u0014BatchBrodCfgResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u001e\n\u0006result\u0018\u0002 \u0002(\u000e2\u000e.protos.RESULT\"G\n\u0014BatchBrodFskResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u001e\n\u0006result\u0018\u0002 \u0002(\u000e2\u000e.protos.SWITCH\"\u00fd\u0001\n\nOtaRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012)\n\u0004fCmd\u0018\u0002 \u0002(\u000e2\u001b.protos.OtaRequest.FILE_CMD\u0012+\n\u0005fType\u0018\u0003 \u0002(\u000e2\u001c.protos.OtaRequest.FILE_TYPE\u0012\r\n\u0005fSize\u0018\u0004 \u0001(\r\u0012\u000e\n\u0006fCrc32\u0018\u0005 \u0001(\r\"/\n\u0008FILE_"

    const-string v4, "CMD\u0012\t\n\u0005START\u0010\u0001\u0012\u000c\n\u0008COMPLETE\u0010\u0002\u0012\n\n\u0006REBOOT\u0010\u0003\"6\n\tFILE_TYPE\u0012\u0014\n\u0010APP_UPGRADE_FILE\u0010\u0001\u0012\u0013\n\u000fMCU_UPLOAD_FILE\u0010\u0002\"=\n\u000bOtaResponse\u0012\u001e\n\u0006result\u0018\u0001 \u0002(\u000e2\u000e.protos.RESULT\u0012\u000e\n\u0006offset\u0018\u0002 \u0001(\r\")\n\tOtaPacket\u0012\u000e\n\u0006offset\u0018\u0001 \u0002(\r\u0012\u000c\n\u0004data\u0018\u0002 \u0002(\u000c*G\n\u000cCONNECT_CODE\u0012\t\n\u0005ALLOW\u0010\u0000\u0012\n\n\u0006REFUSE\u0010\u0001\u0012\u0008\n\u0004WAIT\u0010\u0002\u0012\u000c\n\u0008LOWPOWER\u0010\u0003\u0012\u0008\n\u0004BUSY\u0010\u0004*%\n\u0008APP_TYPE\u0012\n\n\u0006FY_APP\u0010\u0000\u0012\r\n\tMIJIA_APP\u0010\u0001*4\n\rLANGUAGE_TYPE\u0012\t\n\u0005CLOSE\u0010\u0000\u0012\u000b\n\u0007CHINESE\u0010\u0001\u0012\u000b\n\u0007ENGLISH\u0010\u0002*\u0019\n\u0006SWITCH\u0012\u0007\n\u0003OFF\u0010\u0000\u0012\u0006\n\u0002ON\u0010\u0001*=\n\u0006R"

    const-string v5, "ESULT\u0012\u0008\n\u0004FAIL\u0010\u0000\u0012\u000b\n\u0007SUCCESS\u0010\u0001\u0012\r\n\tLOW_POWER\u0010\u0002\u0012\r\n\tFORBIDDEN\u0010\u0003B+\n\u001bcom.ifengyu.intercom.protosB\nLiteProtosH\u0002"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/protos/LiteProtos$a;

    invoke-direct {v1}, Lcom/ifengyu/intercom/protos/LiteProtos$a;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->G()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Version"

    const-string v3, "AppType"

    const-string v4, "DeviceId"

    const-string v5, "PublicKey"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/LiteProtos;->b:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->G()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v3, "Version"

    const-string v4, "ConnectCode"

    const-string v5, "DeviceId"

    const-string v6, "DeviceType"

    const-string v7, "Mac"

    const-string v8, "PublicKey"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/LiteProtos;->d:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->G()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v3, "Token"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/LiteProtos;->f:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->G()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->g:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v3, "Version"

    const-string v4, "ConnectCode"

    const-string v5, "DeviceId"

    const-string v6, "DeviceType"

    const-string v7, "Mac"

    const-string v8, "Token"

    const-string v9, "Key"

    const-string v10, "Iv"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/LiteProtos;->h:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->G()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->i:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v3, "Sq"

    const-string v4, "Vox"

    const-string v5, "Band"

    const-string v6, "Polite"

    const-string v7, "LangType"

    const-string v8, "BootVoice"

    const-string v9, "KeyVoice"

    const-string v10, "Name"

    const-string v11, "VerHw"

    const-string v12, "VerSoft"

    const-string v13, "DeviceId"

    const-string v14, "DeviceColor"

    const-string v15, "VerVoice"

    filled-new-array/range {v3 .. v15}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/LiteProtos;->j:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->G()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->k:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v3, "DevInfo"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/LiteProtos;->l:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->G()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->m:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v4, "Result"

    filled-new-array {v2, v4, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/LiteProtos;->n:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->G()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->o:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v3, "Seq"

    const-string v5, "RxFreq"

    const-string v6, "TxFreq"

    const-string v7, "RxCss"

    const-string v8, "TxCss"

    filled-new-array {v3, v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/LiteProtos;->p:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->G()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->q:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v3, "ChannelInfo"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/LiteProtos;->r:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->G()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->s:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    filled-new-array {v2, v4, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/LiteProtos;->t:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->G()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->u:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/LiteProtos;->v:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->G()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->w:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/LiteProtos;->x:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->G()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->y:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/LiteProtos;->z:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->G()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->A:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v3, "FCmd"

    const-string v5, "FType"

    const-string v6, "FSize"

    const-string v7, "FCrc32"

    filled-new-array {v2, v3, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/LiteProtos;->B:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->G()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->C:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Offset"

    filled-new-array {v4, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/LiteProtos;->D:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/ifengyu/intercom/protos/LiteProtos;->G()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->E:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v3, "Data"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/ifengyu/intercom/protos/LiteProtos;->F:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic A()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->l:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic B()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->m:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic C()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->n:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic D()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->o:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic E()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->p:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic F()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->q:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static G()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->G:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method static synthetic a()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->a:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic a(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/ifengyu/intercom/protos/LiteProtos;->G:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic b()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->b:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic c()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->r:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic d()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->s:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic e()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->t:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic f()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->c:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic g()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->u:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic h()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->v:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic i()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->d:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic j()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->w:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic k()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->x:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic l()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->y:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic m()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->z:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic n()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->A:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic o()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->B:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic p()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->C:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic q()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->D:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic r()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->E:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic s()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->F:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic t()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->e:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic u()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->f:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic v()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->g:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic w()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->h:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic x()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->i:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic y()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->j:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic z()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/protos/LiteProtos;->k:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method
