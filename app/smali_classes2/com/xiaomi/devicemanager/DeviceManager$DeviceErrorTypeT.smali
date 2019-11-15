.class public final enum Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;
.super Ljava/lang/Enum;
.source "DeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/devicemanager/DeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceErrorTypeT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

.field public static final enum DEVICE_CAMERA_CHANGE_MODE_FAILED:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

.field public static final enum DEVICE_FAILED_GET_VOICEPRO_STATE:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

.field public static final enum DEVICE_NO_CAMERA:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

.field public static final enum DEVICE_SETUP_CAMERA_ERROR:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

.field public static final enum DEVICE_SET_CAMERA_FRAMERATE_FAILED:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

.field public static final enum DEVICE_START_CAMERA_FAILED:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

.field public static final enum DEVICE_START_MIC_FAILED:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

.field public static final enum DEVICE_START_SPEAKER_FAILED:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

.field public static final enum DEVICE_UNKNOWN_ERROR:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    const-string v1, "DEVICE_START_CAMERA_FAILED"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;->DEVICE_START_CAMERA_FAILED:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    new-instance v0, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    const-string v1, "DEVICE_CAMERA_CHANGE_MODE_FAILED"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;->DEVICE_CAMERA_CHANGE_MODE_FAILED:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    new-instance v0, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    const-string v1, "DEVICE_SET_CAMERA_FRAMERATE_FAILED"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;->DEVICE_SET_CAMERA_FRAMERATE_FAILED:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    new-instance v0, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    const-string v1, "DEVICE_NO_CAMERA"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;->DEVICE_NO_CAMERA:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    new-instance v0, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    const-string v1, "DEVICE_SETUP_CAMERA_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;->DEVICE_SETUP_CAMERA_ERROR:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    new-instance v0, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    const-string v1, "DEVICE_FAILED_GET_VOICEPRO_STATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;->DEVICE_FAILED_GET_VOICEPRO_STATE:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    new-instance v0, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    const-string v1, "DEVICE_START_MIC_FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;->DEVICE_START_MIC_FAILED:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    new-instance v0, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    const-string v1, "DEVICE_START_SPEAKER_FAILED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;->DEVICE_START_SPEAKER_FAILED:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    new-instance v0, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    const-string v1, "DEVICE_UNKNOWN_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;->DEVICE_UNKNOWN_ERROR:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    sget-object v1, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;->DEVICE_START_CAMERA_FAILED:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;->DEVICE_CAMERA_CHANGE_MODE_FAILED:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;->DEVICE_SET_CAMERA_FRAMERATE_FAILED:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;->DEVICE_NO_CAMERA:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;->DEVICE_SETUP_CAMERA_ERROR:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;->DEVICE_FAILED_GET_VOICEPRO_STATE:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;->DEVICE_START_MIC_FAILED:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;->DEVICE_START_SPEAKER_FAILED:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;->DEVICE_UNKNOWN_ERROR:Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;->$VALUES:[Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;
    .locals 1

    const-class v0, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;
    .locals 1

    sget-object v0, Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;->$VALUES:[Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    invoke-virtual {v0}, [Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/devicemanager/DeviceManager$DeviceErrorTypeT;

    return-object v0
.end method
