.class public interface abstract Lcom/shanlitech/et/core/sl/model/IAccount;
.super Ljava/lang/Object;
.source "IAccount.java"


# virtual methods
.method public abstract configAudioServer(Ljava/lang/String;)Z
.end method

.method public abstract getContactList()Lcom/shanlitech/et/model/ContactList;
.end method

.method public abstract getCurrentGroup()Lcom/shanlitech/et/core/sl/model/IGroup;
.end method

.method public abstract getCurrentUser()Lcom/shanlitech/et/model/User;
.end method

.method public abstract getGroupList()Lcom/shanlitech/et/core/sl/model/list/IGroupList;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getUid()J
.end method

.method public abstract inBlockList()Z
.end method

.method public abstract isOnline()Z
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;II)Z
.end method

.method public abstract logout()Z
.end method

.method public abstract modifyEMail(Ljava/lang/String;)Z
.end method

.method public abstract modifyName(Ljava/lang/String;)Z
.end method

.method public abstract modifyPhone(Ljava/lang/String;)Z
.end method

.method public abstract modifyPwd(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract modifySex(Lcom/shanlitech/et/ETStatusCode$UserSex;)Z
.end method

.method public abstract useHal(Lcom/shanlitech/et/core/sl/hal/a;Lcom/shanlitech/et/core/sl/hal/b;)Z
.end method
