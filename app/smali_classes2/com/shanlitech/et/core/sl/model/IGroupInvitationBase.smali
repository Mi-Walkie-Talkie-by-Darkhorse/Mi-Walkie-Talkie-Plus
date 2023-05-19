.class public interface abstract Lcom/shanlitech/et/core/sl/model/IGroupInvitationBase;
.super Ljava/lang/Object;
.source "IGroupInvitationBase.java"


# virtual methods
.method public abstract getGroup()Lcom/shanlitech/et/model/Group;
.end method

.method public abstract getGroupName()Ljava/lang/String;
.end method

.method public abstract getInviteAccount()Ljava/lang/String;
.end method

.method public abstract getInvitedAccount()Ljava/lang/String;
.end method

.method public abstract getInvitee()Lcom/shanlitech/et/model/User;
.end method

.method public abstract getInviter()Lcom/shanlitech/et/model/User;
.end method

.method public abstract getMsg()Ljava/lang/String;
.end method

.method public abstract getResponse()I
.end method

.method public abstract getTime()J
.end method

.method public abstract iAmInvitee()Z
.end method

.method public abstract iAmInviter()Z
.end method

.method public abstract iAmMaster()Z
.end method

.method public abstract isTokenEnter()Z
.end method

.method public abstract remove()Z
.end method

.method public abstract toMe()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
