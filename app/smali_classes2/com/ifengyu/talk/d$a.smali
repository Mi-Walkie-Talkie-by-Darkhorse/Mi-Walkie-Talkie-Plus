.class Lcom/ifengyu/talk/d$a;
.super Lcom/shanlitech/et/core/sl/model/IAccountOption;
.source "SlTalkClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/talk/d;->q(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/ifengyu/talk/d;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/ifengyu/talk/d$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/shanlitech/et/core/sl/model/IAccountOption;-><init>()V

    return-void
.end method


# virtual methods
.method public alertNotOrgAccountSourceType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public buildDeviceID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/d$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ifengyu/library/utils/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public enableContact()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enableContactInvitation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAudioStream()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/d$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "SlTalkHelper"

    return-object v0
.end method

.method public logEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public logPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/d$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

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

    const/4 v0, 0x0

    return v0
.end method

.method public useIMCache()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shanlitech/et/core/sl/model/IAccountOption;->useIMCache()Z

    move-result v0

    return v0
.end method
