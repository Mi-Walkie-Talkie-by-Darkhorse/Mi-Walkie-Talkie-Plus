.class public Lcom/shanlitech/et/model/UserConfigure;
.super Ljava/lang/Object;
.source "UserConfigure.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shanlitech/et/model/UserConfigure$Type;
    }
.end annotation


# instance fields
.field private allow_invite:I

.field private allow_invited:I

.field private allow_send_broadcast:I

.field private allow_view_video:I

.field private audio_enabled:I

.field private auto_answer:I

.field private default_group:J

.field private devinfo_enabled:I

.field private location:I

.field private location_model:I

.field private location_period:I

.field private type:Lcom/shanlitech/et/model/UserConfigure$Type;

.field private uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIIJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/shanlitech/et/model/UserConfigure;->allow_invite:I

    .line 4
    iput p2, p0, Lcom/shanlitech/et/model/UserConfigure;->allow_invited:I

    .line 5
    iput p3, p0, Lcom/shanlitech/et/model/UserConfigure;->allow_send_broadcast:I

    .line 6
    iput p4, p0, Lcom/shanlitech/et/model/UserConfigure;->allow_view_video:I

    .line 7
    iput p5, p0, Lcom/shanlitech/et/model/UserConfigure;->auto_answer:I

    .line 8
    iput p6, p0, Lcom/shanlitech/et/model/UserConfigure;->audio_enabled:I

    .line 9
    iput-wide p7, p0, Lcom/shanlitech/et/model/UserConfigure;->uid:J

    return-void
.end method


# virtual methods
.method public buildStatusStr()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n ===\u662f\u5426\u53ef\u4ee5\u53d1\u8d77\u4f1a\u8bdd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shanlitech/et/model/UserConfigure;->isAllowInviteEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "===\n ===\u662f\u5426\u53ef\u4ee5\u63a5\u6536\u4f1a\u8bdd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/shanlitech/et/model/UserConfigure;->isAllowInvitedEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "===\n ===\u662f\u5426\u53ef\u4ee5\u53d1\u9001\u5e7f\u64ad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/shanlitech/et/model/UserConfigure;->isSendBroadcastEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "===\n ===\u662f\u5426\u53ef\u4ee5\u67e5\u770b\u89c6\u9891:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lcom/shanlitech/et/model/UserConfigure;->isPlayVideoEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "===\n ===\u662f\u5426\u53ef\u4ee5\u81ea\u52a8\u5e94\u7b54:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lcom/shanlitech/et/model/UserConfigure;->isAutoAnswerEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "===\n ===\u662f\u5426\u53ef\u4ee5\u4f7f\u7528\u8bed\u97f3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lcom/shanlitech/et/model/UserConfigure;->isAudioEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "===\n ===\u9ed8\u8ba4\u7fa4\u7ec4:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Lcom/shanlitech/et/model/UserConfigure;->getDefault_group()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "===\n ===\u662f\u5426\u9700\u8981\u4e0a\u62a5\u4f4d\u7f6e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lcom/shanlitech/et/model/UserConfigure;->isNeedReportLocation()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "===\n ===\u4f4d\u7f6e\u4e0a\u62a5\u95f4\u9694:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Lcom/shanlitech/et/model/UserConfigure;->getLocation_period()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "===\n ===\u662f\u5426\u9700\u8981\u4e0a\u62a5\u8bbe\u5907:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lcom/shanlitech/et/model/UserConfigure;->isNeedReportDeviceInfo()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "===\n ===\u5b9a\u4f4d\u6a21\u5f0f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Lcom/shanlitech/et/model/UserConfigure;->getLocationModel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllow_invite()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/UserConfigure;->allow_invite:I

    return v0
.end method

.method public getAllow_invited()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/UserConfigure;->allow_invited:I

    return v0
.end method

.method public getAllow_send_broadcast()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/UserConfigure;->allow_send_broadcast:I

    return v0
.end method

.method public getAllow_view_video()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/UserConfigure;->allow_view_video:I

    return v0
.end method

.method public getAudio_enabled()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/UserConfigure;->audio_enabled:I

    return v0
.end method

.method public getAuto_answer()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/UserConfigure;->auto_answer:I

    return v0
.end method

.method public getDefault_group()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/UserConfigure;->default_group:J

    return-wide v0
.end method

.method public getDevinfo_enabled()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/UserConfigure;->devinfo_enabled:I

    return v0
.end method

.method public getLocation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/UserConfigure;->location:I

    return v0
.end method

.method public getLocationModel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/UserConfigure;->location_model:I

    return v0
.end method

.method public getLocation_period()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/UserConfigure;->location_period:I

    return v0
.end method

.method public getType()Lcom/shanlitech/et/model/UserConfigure$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/UserConfigure;->type:Lcom/shanlitech/et/model/UserConfigure$Type;

    return-object v0
.end method

.method public isAllowInviteEnable()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/UserConfigure;->allow_invite:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isAllowInvitedEnable()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/UserConfigure;->allow_invited:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isAudioEnable()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/UserConfigure;->audio_enabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isAutoAnswerEnable()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/UserConfigure;->auto_answer:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMyConfigure()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/model/UserConfigure;->uid:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/h;->m(J)Z

    move-result v0

    return v0
.end method

.method public isNeedReportDeviceInfo()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/UserConfigure;->devinfo_enabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNeedReportLocation()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/UserConfigure;->location:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPlayVideoEnable()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/UserConfigure;->allow_view_video:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSendBroadcastEnable()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/UserConfigure;->allow_send_broadcast:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public post(Lcom/shanlitech/et/model/UserConfigure$Type;J)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/shanlitech/et/model/UserConfigure;->uid:J

    .line 2
    iput-object p1, p0, Lcom/shanlitech/et/model/UserConfigure;->type:Lcom/shanlitech/et/model/UserConfigure$Type;

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserConfigure{allow_invite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/UserConfigure;->allow_invite:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", allow_invited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/UserConfigure;->allow_invited:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", allow_send_broadcast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/UserConfigure;->allow_send_broadcast:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", allow_view_video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/UserConfigure;->allow_view_video:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", auto_answer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/UserConfigure;->auto_answer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audio_enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/UserConfigure;->audio_enabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", default_group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/model/UserConfigure;->default_group:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", location_period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/UserConfigure;->location_period:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/UserConfigure;->location:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", devinfo_enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/UserConfigure;->devinfo_enabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", location_model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/UserConfigure;->location_model:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/model/UserConfigure;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/model/UserConfigure;->type:Lcom/shanlitech/et/model/UserConfigure$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
