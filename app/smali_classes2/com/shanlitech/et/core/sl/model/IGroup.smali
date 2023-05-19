.class public interface abstract Lcom/shanlitech/et/core/sl/model/IGroup;
.super Ljava/lang/Object;
.source "IGroup.java"


# virtual methods
.method public abstract getAllMemberCount()I
.end method

.method public abstract getInGroupMemberCount()I
.end method

.method public abstract getMemberList()Lcom/shanlitech/et/core/sl/model/list/IMemberList;
.end method

.method public abstract getOnlineMemberCount()I
.end method

.method public abstract getOutGroupMemberCount()I
.end method

.method public abstract getSpeakingUser()Lcom/shanlitech/et/model/User;
.end method

.method public abstract hasSpeakingMember()Z
.end method

.method public abstract isCurrentGroup()Z
.end method

.method public abstract join()Z
.end method

.method public abstract leave()Z
.end method

.method public abstract modifyDesc(Ljava/lang/String;)Z
.end method

.method public abstract modifyMyName(Ljava/lang/String;)Z
.end method

.method public abstract modifyName(Ljava/lang/String;)Z
.end method

.method public abstract releaseMic()Z
.end method

.method public abstract requestMemberList()Z
.end method

.method public abstract requestMic()Z
.end method
