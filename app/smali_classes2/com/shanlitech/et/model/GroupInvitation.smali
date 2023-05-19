.class public Lcom/shanlitech/et/model/GroupInvitation;
.super Ljava/lang/Object;
.source "GroupInvitation.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/shanlitech/et/core/sl/model/IGroupInvitation;
.implements Lcom/shanlitech/et/core/sl/model/IGroupApplication;


# static fields
.field public static final RESPONSE_ACCEPT:I = 0x1

.field public static final RESPONSE_REFUSE:I = 0x2

.field public static final RESPONSE_WAIT:I


# instance fields
.field public accept:I

.field public asker:Lcom/shanlitech/et/model/User;

.field public asker_acc:Ljava/lang/String;

.field public asker_delete:I

.field public chatgroup:Lcom/shanlitech/et/model/Group;

.field public confirmer:Lcom/shanlitech/et/model/User;

.field public confirmer_acc:Ljava/lang/String;

.field public confirmer_delete:I

.field private datas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public gName:Ljava/lang/String;

.field public gid:J

.field public invite_account:Ljava/lang/String;

.field public invite_id:J

.field public invite_time:J

.field public invite_type:I

.field public invited_account:Ljava/lang/String;

.field public invitee:Lcom/shanlitech/et/model/User;

.field public invitee_delete:I

.field public inviter:Lcom/shanlitech/et/model/User;

.field public inviter_delete:I

.field public msg:Ljava/lang/String;

.field public operate_id:J

.field public requestor:Lcom/shanlitech/et/model/User;

.field public requestor_acc:Ljava/lang/String;

.field public response:I

.field public token:Ljava/lang/String;

.field public type:I

.field public unread:I

.field public update_time:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "<\u672a\u77e5>"

    .line 2
    iput-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->gName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->response:I

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->datas:Ljava/util/HashMap;

    return-void
.end method

.method private markRead(J)Z
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lcom/shanlitech/et/CoreEngine;->readGroup(J)I

    move-result p1

    sget p2, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public accept()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v1}, Lcom/shanlitech/et/core/c/l;->K0(Lcom/shanlitech/et/model/GroupInvitation;ZZ)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    instance-of v0, p1, Lcom/shanlitech/et/model/GroupInvitation;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/shanlitech/et/model/GroupInvitation;

    iget-wide v0, p1, Lcom/shanlitech/et/model/GroupInvitation;->invite_id:J

    iget-wide v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->invite_id:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 3
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getGid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->gid:J

    return-wide v0
.end method

.method public getGroup()Lcom/shanlitech/et/model/Group;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->chatgroup:Lcom/shanlitech/et/model/Group;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->chatgroup:Lcom/shanlitech/et/model/Group;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->gName:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getInviteAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->invite_account:Ljava/lang/String;

    return-object v0
.end method

.method public getInviteId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->invite_id:J

    return-wide v0
.end method

.method public getInviteTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->invite_time:J

    return-wide v0
.end method

.method public getInvitedAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->invited_account:Ljava/lang/String;

    return-object v0
.end method

.method public getInvitee()Lcom/shanlitech/et/model/User;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/GroupInvitation;->isTokenEnter()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->asker:Lcom/shanlitech/et/model/User;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->invitee:Lcom/shanlitech/et/model/User;

    :goto_0
    return-object v0
.end method

.method public getInviter()Lcom/shanlitech/et/model/User;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->inviter:Lcom/shanlitech/et/model/User;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/GroupInvitation;->isTokenEnter()Z

    move-result v0

    const-string v1, "-"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->chatgroup:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v2}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/model/GroupInvitation;->asker:Lcom/shanlitech/et/model/User;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/User;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/shanlitech/et/model/GroupInvitation;->iAmInviter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shanlitech/et/model/GroupInvitation;->invited_account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/model/GroupInvitation;->chatgroup:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/GroupInvitation;->iAmInvitee()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shanlitech/et/model/GroupInvitation;->invite_account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/model/GroupInvitation;->chatgroup:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->invite_account:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->invited_account:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/model/GroupInvitation;->chatgroup:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestor()Lcom/shanlitech/et/model/User;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->requestor:Lcom/shanlitech/et/model/User;

    return-object v0
.end method

.method public getRequestor_acc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->requestor_acc:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->response:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/GroupInvitation;->getInviteTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->type:I

    return v0
.end method

.method public iAmInvitee()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/GroupInvitation;->isTokenEnter()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->asker:Lcom/shanlitech/et/model/User;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->invitee:Lcom/shanlitech/et/model/User;

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/shanlitech/et/model/User;->getUid()J

    move-result-wide v0

    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shanlitech/et/core/c/h;->c()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public iAmInviter()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->inviter:Lcom/shanlitech/et/model/User;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/User;->getUid()J

    move-result-wide v0

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

.method public iAmMaster()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/GroupInvitation;->iAmInvitee()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/shanlitech/et/model/GroupInvitation;->iAmInviter()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inNotifyTime()Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->invite_time:J

    invoke-static {}, Lcom/shanlitech/et/c/n;->a()Lcom/shanlitech/et/c/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shanlitech/et/c/n;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1e

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMyInviteAction()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/model/GroupInvitation;->isTokenEnter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shanlitech/et/model/GroupInvitation;->iAmInvitee()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/shanlitech/et/model/GroupInvitation;->iAmInviter()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isTokenEnter()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->asker:Lcom/shanlitech/et/model/User;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public markRead()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->invite_id:J

    invoke-direct {p0, v0, v1}, Lcom/shanlitech/et/model/GroupInvitation;->markRead(J)Z

    move-result v0

    return v0
.end method

.method public refuse()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1}, Lcom/shanlitech/et/core/c/l;->K0(Lcom/shanlitech/et/model/GroupInvitation;ZZ)Z

    move-result v0

    return v0
.end method

.method public remove()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->datas:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->datas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->datas:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-int/lit8 v5, v1, 0x1

    .line 4
    aput-wide v3, v0, v1

    move v1, v5

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/shanlitech/et/core/c/l;->H0([J)Z

    move-result v0

    return v0

    .line 6
    :cond_1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/core/c/l;->G0(Lcom/shanlitech/et/model/GroupInvitation;)Z

    move-result v0

    return v0
.end method

.method public setRequestor(Lcom/shanlitech/et/model/User;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/GroupInvitation;->requestor:Lcom/shanlitech/et/model/User;

    return-void
.end method

.method public setRequestor_acc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/GroupInvitation;->requestor_acc:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/GroupInvitation;->type:I

    return-void
.end method

.method public toMe()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->inviter:Lcom/shanlitech/et/model/User;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/User;->isMe()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GroupInvitation{invite_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/model/GroupInvitation;->invite_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", invite_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/shanlitech/et/model/GroupInvitation;->invite_time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", invite_account=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/model/GroupInvitation;->invite_account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", invited_account=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->invited_account:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->gid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", gName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->gName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", msg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->msg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", response="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->response:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", chatgroup="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->chatgroup:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", inviter="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->inviter:Lcom/shanlitech/et/model/User;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", inviter_delete="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->inviter_delete:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", invitee="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->invitee:Lcom/shanlitech/et/model/User;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", invitee_delete="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->invitee_delete:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", operate_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->operate_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", invite_type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->invite_type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", asker_acc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->asker_acc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", confirmer_acc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->confirmer_acc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", asker="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->asker:Lcom/shanlitech/et/model/User;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", confirmer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->confirmer:Lcom/shanlitech/et/model/User;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", accept="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->accept:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", asker_delete="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->asker_delete:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", confirmer_delete="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->confirmer_delete:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", token=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", update_time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->update_time:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", datas="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->datas:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", unread="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->unread:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", requestor_acc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->requestor_acc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shanlitech/et/model/GroupInvitation;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shanlitech/et/model/GroupInvitation;->requestor:Lcom/shanlitech/et/model/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/shanlitech/et/model/GroupInvitation;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->datas:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->datas:Ljava/util/HashMap;

    .line 3
    iget-wide v1, p0, Lcom/shanlitech/et/model/GroupInvitation;->invite_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->datas:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/shanlitech/et/model/GroupInvitation;->invite_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->invite_time:J

    iget-wide v2, p1, Lcom/shanlitech/et/model/GroupInvitation;->invite_time:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    iget v0, p1, Lcom/shanlitech/et/model/GroupInvitation;->response:I

    iget v1, p0, Lcom/shanlitech/et/model/GroupInvitation;->response:I

    if-le v0, v1, :cond_3

    .line 7
    :cond_2
    iget-object v0, p1, Lcom/shanlitech/et/model/GroupInvitation;->inviter:Lcom/shanlitech/et/model/User;

    iput-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->inviter:Lcom/shanlitech/et/model/User;

    .line 8
    iget-object v0, p1, Lcom/shanlitech/et/model/GroupInvitation;->invitee:Lcom/shanlitech/et/model/User;

    iput-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->invitee:Lcom/shanlitech/et/model/User;

    .line 9
    iget v0, p1, Lcom/shanlitech/et/model/GroupInvitation;->response:I

    iput v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->response:I

    .line 10
    iget-wide v0, p1, Lcom/shanlitech/et/model/GroupInvitation;->invite_id:J

    iput-wide v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->invite_id:J

    .line 11
    iget-object v0, p1, Lcom/shanlitech/et/model/GroupInvitation;->invite_account:Ljava/lang/String;

    iput-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->invite_account:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/shanlitech/et/model/GroupInvitation;->invited_account:Ljava/lang/String;

    iput-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->invited_account:Ljava/lang/String;

    .line 13
    iput-wide v2, p0, Lcom/shanlitech/et/model/GroupInvitation;->invite_time:J

    .line 14
    iget-object v0, p1, Lcom/shanlitech/et/model/GroupInvitation;->asker:Lcom/shanlitech/et/model/User;

    iput-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->asker:Lcom/shanlitech/et/model/User;

    .line 15
    iget-object v0, p1, Lcom/shanlitech/et/model/GroupInvitation;->asker_acc:Ljava/lang/String;

    iput-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->asker_acc:Ljava/lang/String;

    .line 16
    iget-object v0, p1, Lcom/shanlitech/et/model/GroupInvitation;->msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->msg:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Lcom/shanlitech/et/model/GroupInvitation;->chatgroup:Lcom/shanlitech/et/model/Group;

    iput-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->chatgroup:Lcom/shanlitech/et/model/Group;

    .line 18
    iget-object v0, p1, Lcom/shanlitech/et/model/GroupInvitation;->gName:Ljava/lang/String;

    iput-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->gName:Ljava/lang/String;

    .line 19
    iget-wide v0, p1, Lcom/shanlitech/et/model/GroupInvitation;->gid:J

    iput-wide v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->gid:J

    .line 20
    iget-object v0, p1, Lcom/shanlitech/et/model/GroupInvitation;->requestor_acc:Ljava/lang/String;

    iput-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->requestor_acc:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lcom/shanlitech/et/model/GroupInvitation;->requestor:Lcom/shanlitech/et/model/User;

    iput-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->requestor:Lcom/shanlitech/et/model/User;

    .line 22
    iget v0, p1, Lcom/shanlitech/et/model/GroupInvitation;->type:I

    iput v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->type:I

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/shanlitech/et/model/GroupInvitation;->datas:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/shanlitech/et/model/GroupInvitation;->invite_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object p1, p1, Lcom/shanlitech/et/model/GroupInvitation;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
