.class public Lcom/ifengyu/im/imservice/manager/GroupHelper;
.super Ljava/lang/Object;
.source "GroupHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGroupMemberDisplayName(II)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lcom/ifengyu/im/imservice/manager/GroupHelper;->getGroupNick(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/ifengyu/im/imservice/manager/GroupHelper;->getUserName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getGroupNick(II)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->instance()Lcom/ifengyu/im/imservice/manager/IMContactManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->findUserInGroup(II)Lcom/ifengyu/im/DB/entity/GroupMember;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupMember;->getGroupNick()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/GroupMember;->getGroupNick()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getUserName(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->instance()Lcom/ifengyu/im/imservice/manager/IMContactManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/im/imservice/manager/IMContactManager;->findContact(I)Lcom/ifengyu/im/DB/entity/UserEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getMainName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/im/DB/entity/UserEntity;->getMainName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
