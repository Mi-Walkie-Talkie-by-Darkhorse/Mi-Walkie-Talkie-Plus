.class public interface abstract Lcom/shanlitech/et/core/sl/model/IContactInvitationBase;
.super Ljava/lang/Object;
.source "IContactInvitationBase.java"


# virtual methods
.method public abstract getID()J
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

.method public abstract msgs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract remove()Z
.end method

.method public abstract toMe()Z
.end method
