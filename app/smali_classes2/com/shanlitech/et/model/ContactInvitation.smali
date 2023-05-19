.class public Lcom/shanlitech/et/model/ContactInvitation;
.super Ljava/lang/Object;
.source "ContactInvitation.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/shanlitech/et/core/sl/model/IContactInvitation;
.implements Lcom/shanlitech/et/core/sl/model/IContactApplication;


# static fields
.field public static final RESPONSE_ACCEPT:I = 0x1

.field public static final RESPONSE_REFUSE:I = 0x2

.field public static final RESPONSE_WAIT:I


# instance fields
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

.field public invite_account:Ljava/lang/String;

.field public invite_id:J

.field public invite_time:J

.field public invited_account:Ljava/lang/String;

.field public invitee:Lcom/shanlitech/et/model/User;

.field public inviter:Lcom/shanlitech/et/model/User;

.field public isNew:Z

.field public msg:Ljava/lang/String;

.field public response:I

.field public unread:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->response:I

    .line 3
    iput-boolean v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->isNew:Z

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->datas:Ljava/util/HashMap;

    return-void
.end method

.method private markRead(J)Z
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lcom/shanlitech/et/CoreEngine;->readContact(J)I

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
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/shanlitech/et/core/c/g;->w(Lcom/shanlitech/et/model/ContactInvitation;Z)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    instance-of v0, p1, Lcom/shanlitech/et/model/ContactInvitation;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/shanlitech/et/model/ContactInvitation;

    iget-wide v0, p1, Lcom/shanlitech/et/model/ContactInvitation;->invite_id:J

    iget-wide v2, p0, Lcom/shanlitech/et/model/ContactInvitation;->invite_id:J

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

.method public getID()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->invite_id:J

    return-wide v0
.end method

.method public getInviteAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->invite_account:Ljava/lang/String;

    return-object v0
.end method

.method public getInviteId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->invite_id:J

    return-wide v0
.end method

.method public getInviteTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->invite_time:J

    return-wide v0
.end method

.method public getInvitedAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->invited_account:Ljava/lang/String;

    return-object v0
.end method

.method public getInvitee()Lcom/shanlitech/et/model/User;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->invitee:Lcom/shanlitech/et/model/User;

    return-object v0
.end method

.method public getInviter()Lcom/shanlitech/et/model/User;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->inviter:Lcom/shanlitech/et/model/User;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/shanlitech/et/model/ContactInvitation;->getInviteAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shanlitech/et/model/ContactInvitation;->getInvitedAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->response:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->invite_time:J

    return-wide v0
.end method

.method public inNotifyTime()Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->invite_time:J

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

.method public isTrue(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->datas:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public markRead()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->invite_id:J

    invoke-direct {p0, v0, v1}, Lcom/shanlitech/et/model/ContactInvitation;->markRead(J)Z

    move-result v0

    return v0
.end method

.method public msgs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/shanlitech/et/model/ContactInvitation;->datas:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public refuse()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/shanlitech/et/core/c/g;->w(Lcom/shanlitech/et/model/ContactInvitation;Z)Z

    move-result v0

    return v0
.end method

.method public remove()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->datas:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->datas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 3
    iget-object v2, p0, Lcom/shanlitech/et/model/ContactInvitation;->datas:Ljava/util/HashMap;

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
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/shanlitech/et/core/c/g;->d([J)Z

    move-result v0

    return v0

    .line 6
    :cond_1
    invoke-static {}, Lcom/shanlitech/et/core/c/g;->j()Lcom/shanlitech/et/core/c/g;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/shanlitech/et/model/ContactInvitation;

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Lcom/shanlitech/et/core/c/g;->c([Lcom/shanlitech/et/model/ContactInvitation;)Z

    move-result v0

    return v0
.end method

.method public setInviteAccount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/ContactInvitation;->invite_account:Ljava/lang/String;

    return-void
.end method

.method public setInviteId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/ContactInvitation;->invite_id:J

    return-void
.end method

.method public setInviteTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shanlitech/et/model/ContactInvitation;->invite_time:J

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/model/ContactInvitation;->msg:Ljava/lang/String;

    return-void
.end method

.method public setResponse(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shanlitech/et/model/ContactInvitation;->response:I

    return-void
.end method

.method public toMe()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->inviter:Lcom/shanlitech/et/model/User;

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
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    const-class v1, Lcom/shanlitech/et/model/ContactInvitation;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, " id:"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/shanlitech/et/model/ContactInvitation;->invite_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, " from:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/shanlitech/et/model/ContactInvitation;->invite_account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " to:"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/shanlitech/et/model/ContactInvitation;->invited_account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " response:"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/shanlitech/et/model/ContactInvitation;->response:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " invitee:"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/shanlitech/et/model/ContactInvitation;->getInvitee()Lcom/shanlitech/et/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " inviter:"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/shanlitech/et/model/ContactInvitation;->getInviter()Lcom/shanlitech/et/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " count:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/shanlitech/et/model/ContactInvitation;->datas:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/shanlitech/et/model/ContactInvitation;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->datas:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->datas:Ljava/util/HashMap;

    .line 3
    iget-wide v1, p0, Lcom/shanlitech/et/model/ContactInvitation;->invite_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/shanlitech/et/model/ContactInvitation;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->datas:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/shanlitech/et/model/ContactInvitation;->invite_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/shanlitech/et/model/ContactInvitation;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->invite_time:J

    iget-wide v2, p1, Lcom/shanlitech/et/model/ContactInvitation;->invite_time:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 7
    iget-object v0, p1, Lcom/shanlitech/et/model/ContactInvitation;->inviter:Lcom/shanlitech/et/model/User;

    iput-object v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->inviter:Lcom/shanlitech/et/model/User;

    .line 8
    iget-object v0, p1, Lcom/shanlitech/et/model/ContactInvitation;->invitee:Lcom/shanlitech/et/model/User;

    iput-object v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->invitee:Lcom/shanlitech/et/model/User;

    .line 9
    iget v0, p1, Lcom/shanlitech/et/model/ContactInvitation;->response:I

    iput v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->response:I

    .line 10
    iget-wide v0, p1, Lcom/shanlitech/et/model/ContactInvitation;->invite_id:J

    iput-wide v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->invite_id:J

    .line 11
    iget-object v0, p1, Lcom/shanlitech/et/model/ContactInvitation;->invite_account:Ljava/lang/String;

    iput-object v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->invite_account:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/shanlitech/et/model/ContactInvitation;->invited_account:Ljava/lang/String;

    iput-object v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->invited_account:Ljava/lang/String;

    .line 13
    iput-wide v2, p0, Lcom/shanlitech/et/model/ContactInvitation;->invite_time:J

    .line 14
    iget-object v0, p1, Lcom/shanlitech/et/model/ContactInvitation;->msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->msg:Ljava/lang/String;

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/shanlitech/et/model/ContactInvitation;->datas:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/shanlitech/et/model/ContactInvitation;->invite_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object p1, p1, Lcom/shanlitech/et/model/ContactInvitation;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
