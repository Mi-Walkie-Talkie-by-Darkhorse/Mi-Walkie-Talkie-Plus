.class public abstract Lcom/xiaomi/channel/common/audio/TouchableXMAudioRecord;
.super Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;
.source "TouchableXMAudioRecord.java"


# static fields
.field public static ACTION_START:I

.field public static ACTION_STOP:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/xiaomi/channel/common/audio/TouchableXMAudioRecord;->ACTION_START:I

    const/4 v0, 0x2

    sput v0, Lcom/xiaomi/channel/common/audio/TouchableXMAudioRecord;->ACTION_STOP:I

    const-class v0, Lcom/xiaomi/channel/common/audio/TouchableXMAudioRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/channel/common/audio/TouchableXMAudioRecord;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/channel/common/audio/AbstractXMAudioRecord;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    const v0, 0xea60

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/channel/common/audio/TouchableXMAudioRecord;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public abstract creatAudioPath()Ljava/lang/String;
.end method

.method public onTouch(I)Z
    .locals 3

    sget-object v0, Lcom/xiaomi/channel/common/audio/TouchableXMAudioRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "signal is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/xiaomi/channel/common/audio/TouchableXMAudioRecord;->ACTION_STOP:I

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/channel/common/audio/TouchableXMAudioRecord;->endRecord(Z)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/channel/common/audio/TouchableXMAudioRecord;->isRecordable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/xiaomi/channel/common/audio/TouchableXMAudioRecord;->ACTION_START:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/channel/common/audio/TouchableXMAudioRecord;->creatAudioPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/channel/common/audio/TouchableXMAudioRecord;->startRecord(Ljava/lang/String;)V

    goto :goto_0
.end method
