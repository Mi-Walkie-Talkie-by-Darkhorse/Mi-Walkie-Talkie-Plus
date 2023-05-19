.class public abstract Lcom/shanlitech/et/core/sl/model/IAccountOption;
.super Ljava/lang/Object;
.source "IAccountOption.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alertNotOrgAccountSourceType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public buildDeviceID()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/n;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public enableContact()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enableContactInvitation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAudioStream()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getNotification()Landroid/app/Notification;
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "SL"

    return-object v0
.end method

.method public logEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public logPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public platformId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public useAlarm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public useCPULock()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public useIMCache()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
