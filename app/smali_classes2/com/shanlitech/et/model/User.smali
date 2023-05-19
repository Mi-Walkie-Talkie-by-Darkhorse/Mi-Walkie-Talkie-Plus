.class public Lcom/shanlitech/et/model/User;
.super Lcom/shanlitech/et/web/b/c/i;
.source "User.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ONLINE_STATUS_LOGINING:I = 0x2

.field public static final ONLINE_STATUS_OFFLINE:I = 0x1

.field public static final ONLINE_STATUS_ONLINE:I = 0x3

.field public static final ONLINE_STATUS_UNKNOWN:I = 0x0

.field public static final ROLE_DISPATCHER:I = 0x3

.field public static final ROLE_NORMAL:I


# instance fields
.field private account:Ljava/lang/String;

.field private audio_enabled:I

.field private avatar:Ljava/lang/String;

.field private blocked:I

.field private chat_enabled:I

.field private device_id:Ljava/lang/String;

.field private device_model:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private iccid:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private no:Ljava/lang/String;

.field public online:I

.field private operator_:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private paid:I

.field private phone:Ljava/lang/String;

.field private priority:I

.field private role:I

.field private sex:I

.field private sortNum:I

.field private uid:J

.field private userconfigure:Lcom/shanlitech/et/model/UserConfigure;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/b/c/i;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/shanlitech/et/model/User;->paid:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shanlitech/et/model/User;->audio_enabled:I

    .line 4
    iput v0, p0, Lcom/shanlitech/et/model/User;->blocked:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;ILcom/shanlitech/et/model/UserConfigure;I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/shanlitech/et/web/b/c/i;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/shanlitech/et/model/User;->paid:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/shanlitech/et/model/User;->audio_enabled:I

    .line 8
    iput v0, p0, Lcom/shanlitech/et/model/User;->blocked:I

    .line 9
    iput-wide p1, p0, Lcom/shanlitech/et/model/User;->uid:J

    .line 10
    iput-object p3, p0, Lcom/shanlitech/et/model/User;->account:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/shanlitech/et/model/User;->name:Ljava/lang/String;

    .line 12
    iput p5, p0, Lcom/shanlitech/et/model/User;->role:I

    .line 13
    iput-object p6, p0, Lcom/shanlitech/et/model/User;->userconfigure:Lcom/shanlitech/et/model/UserConfigure;

    .line 14
    iput p7, p0, Lcom/shanlitech/et/model/User;->blocked:I

    return-void
.end method


# virtual methods
.method public addContact(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/shanlitech/et/model/User;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/shanlitech/et/core/c/g;->a(Ljava/lang/String;[Lcom/shanlitech/et/model/User;)Z

    move-result p1

    return p1
.end method

.method public chatDisable()Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/i;->e()Lcom/shanlitech/et/core/c/i;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    iget-wide v2, p0, Lcom/shanlitech/et/model/User;->uid:J

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    invoke-virtual {v0, v1, v4}, Lcom/shanlitech/et/core/c/i;->k([JZ)Z

    move-result v0

    return v0
.end method

.method public chatEnable()Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/i;->e()Lcom/shanlitech/et/core/c/i;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [J

    iget-wide v3, p0, Lcom/shanlitech/et/model/User;->uid:J

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    invoke-virtual {v0, v2, v1}, Lcom/shanlitech/et/core/c/i;->k([JZ)Z

    move-result v0

    return v0
.end method

.method public disable(Ljava/lang/String;II)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/i;->e()Lcom/shanlitech/et/core/c/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/shanlitech/et/core/c/i;->c(Ljava/lang/String;IILcom/shanlitech/et/model/User;)Z

    move-result p1

    return p1
.end method

.method public enable()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/i;->e()Lcom/shanlitech/et/core/c/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/i;->d(Lcom/shanlitech/et/model/User;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    instance-of v0, p1, Lcom/shanlitech/et/model/User;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/shanlitech/et/model/User;

    .line 3
    invoke-virtual {p1}, Lcom/shanlitech/et/model/User;->getUid()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/shanlitech/et/model/User;->uid:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/User;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/User;->avatar:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shanlitech/et/model/User;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBlocked()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/User;->blocked:I

    return v0
.end method

.method public getChat_enabled()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/User;->chat_enabled:I

    return v0
.end method

.method public getCommonGroupList()Lcom/shanlitech/et/model/GroupList;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/l;->o(Lcom/shanlitech/et/model/User;)Lcom/shanlitech/et/model/GroupList;

    move-result-object v0

    return-object v0
.end method

.method public getDevice_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/User;->device_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_model()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/User;->device_model:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/User;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getIccid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/User;->iccid:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/User;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/User;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/User;->no:Ljava/lang/String;

    return-object v0
.end method

.method public getOnline()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/User;->online:I

    return v0
.end method

.method public getOperator_()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/User;->operator_:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/User;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/User;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/User;->priority:I

    return v0
.end method

.method public getRole()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/User;->role:I

    return v0
.end method

.method public getSex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/User;->sex:I

    return v0
.end method

.method public getSortNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/User;->sortNum:I

    return v0
.end method

.method public getUid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/User;->uid:J

    return-wide v0
.end method

.method public getUserNotes()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/g;->i(Lcom/shanlitech/et/model/User;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserconfigure()Lcom/shanlitech/et/model/UserConfigure;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/User;->userconfigure:Lcom/shanlitech/et/model/UserConfigure;

    return-object v0
.end method

.method public iSpeaking()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/s;->i()Lcom/shanlitech/et/core/c/s;

    move-result-object v0

    iget-wide v1, p0, Lcom/shanlitech/et/model/User;->uid:J

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/s;->h(J)Z

    move-result v0

    return v0
.end method

.method public isChatEnabled()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/User;->chat_enabled:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDispatcher()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/i;->e()Lcom/shanlitech/et/core/c/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/i;->f(Lcom/shanlitech/et/model/User;)Z

    move-result v0

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/User;->blocked:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMe()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/User;->uid:J

    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shanlitech/et/core/c/h;->c()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVipUser()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/User;->paid:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public online()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/User;->online:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeContact()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/shanlitech/et/model/User;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/core/c/g;->v([Lcom/shanlitech/et/model/User;)Z

    move-result v0

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/User;->account:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/User;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBlocked(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/User;->blocked:I

    return-void
.end method

.method public setChat_enabled(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/User;->chat_enabled:I

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/User;->email:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/User;->name:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/User;->phone:Ljava/lang/String;

    return-void
.end method

.method public setSortNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/User;->sortNum:I

    return-void
.end method

.method public setUid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/User;->uid:J

    return-void
.end method

.method public setUserNotes(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/shanlitech/et/core/c/g;->y(Lcom/shanlitech/et/model/User;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User{online="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/User;->online:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/model/User;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", account=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/model/User;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/User;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", role="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/User;->role:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", priority="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/User;->priority:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/User;->sex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", avatar=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/User;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", paid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/User;->paid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", audio_enabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/User;->audio_enabled:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", blocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/User;->blocked:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", email=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/User;->email:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", phone=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/User;->phone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", os=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/User;->os:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", device_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/User;->device_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", device_model=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/User;->device_model:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", operator_=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/User;->operator_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", no=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/User;->no:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imsi=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/User;->imsi:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", iccid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/User;->iccid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", sortNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/User;->sortNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userconfigure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/model/User;->userconfigure:Lcom/shanlitech/et/model/UserConfigure;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", chat_enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/User;->chat_enabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
