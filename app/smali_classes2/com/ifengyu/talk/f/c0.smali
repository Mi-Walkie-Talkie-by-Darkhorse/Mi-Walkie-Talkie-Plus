.class public Lcom/ifengyu/talk/f/c0;
.super Ljava/lang/Object;
.source "GroupHelper.java"


# static fields
.field private static final d:Ljava/lang/String; = "c0"


# instance fields
.field private final a:Lcom/shanlitech/et/model/Account;

.field private b:Z

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ifengyu/talk/h/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/shanlitech/et/model/Account;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ifengyu/talk/f/c0;->b:Z

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/talk/f/c0;->c:Ljava/util/Set;

    .line 4
    iput-object p1, p0, Lcom/ifengyu/talk/f/c0;->a:Lcom/shanlitech/et/model/Account;

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->r(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/c0;->a:Lcom/shanlitech/et/model/Account;

    const/4 v3, 0x0

    const/4 v4, 0x2

    move-wide v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/shanlitech/et/model/Account;->joinGroup(JLjava/lang/String;ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public addListener(Lcom/ifengyu/talk/h/c;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/c0;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/c0;->a:Lcom/shanlitech/et/model/Account;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shanlitech/et/b/c/a;->createGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public c(J)Lcom/shanlitech/et/model/Group;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/c0;->a:Lcom/shanlitech/et/model/Account;

    invoke-virtual {v0, p1, p2}, Lcom/shanlitech/et/model/Account;->getGroup(J)Lcom/shanlitech/et/model/Group;

    move-result-object p1

    return-object p1
.end method

.method public d()Lcom/shanlitech/et/model/GroupList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/c0;->a:Lcom/shanlitech/et/model/Account;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Account;->getGroupList()Lcom/shanlitech/et/model/GroupList;

    move-result-object v0

    return-object v0
.end method

.method public onGroupEvent(Lcom/shanlitech/et/notice/event/GroupEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/c0;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGroupEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupEvent;->getTargetGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupEvent;->getType()Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/notice/event/GroupEvent$EventType;->CURRENT:Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ifengyu/talk/f/c0;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/c;

    .line 5
    invoke-interface {v1, p1}, Lcom/ifengyu/talk/h/c;->V0(Lcom/shanlitech/et/notice/event/GroupEvent;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupEvent;->getType()Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/notice/event/GroupEvent$EventType;->ADD:Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    if-ne v0, v1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupEvent;->getTargetGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->requestMemberList()Z

    .line 8
    iget-object v0, p0, Lcom/ifengyu/talk/f/c0;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/c;

    .line 9
    invoke-interface {v1, p1}, Lcom/ifengyu/talk/h/c;->D(Lcom/shanlitech/et/notice/event/GroupEvent;)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupEvent;->getType()Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/notice/event/GroupEvent$EventType;->LEAVE:Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    if-ne v0, v1, :cond_3

    .line 11
    iget-object v0, p0, Lcom/ifengyu/talk/f/c0;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/c;

    .line 12
    invoke-interface {v1, p1}, Lcom/ifengyu/talk/h/c;->z(Lcom/shanlitech/et/notice/event/GroupEvent;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onGroupListEvent(Lcom/shanlitech/et/model/GroupList;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/c0;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGroupListEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/GroupList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/ifengyu/talk/f/c0;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ifengyu/talk/f/c0;->b:Z

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shanlitech/et/model/Group;

    .line 5
    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getType()I

    move-result v2

    sget v3, Lcom/shanlitech/et/model/Group;->GROUP_NORMAL:I

    if-ne v2, v3, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->requestMemberList()Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/talk/f/c0;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/c;

    .line 8
    invoke-interface {v1, p1}, Lcom/ifengyu/talk/h/c;->G(Lcom/shanlitech/et/model/GroupList;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onGroupRemovedEvent(Lcom/shanlitech/et/notice/event/GroupRemovedEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/c0;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGroupRemovedEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupRemovedEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onGroupTrans(Lcom/shanlitech/et/model/GroupTrans;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/c0;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGroupTrans:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/GroupTrans;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMemberListEvent(Lcom/shanlitech/et/model/MemberList;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/c0;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMemberListEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/MemberList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/model/MemberList;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/talk/f/c0;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/c;

    .line 4
    invoke-interface {v1, p1}, Lcom/ifengyu/talk/h/c;->C(Lcom/shanlitech/et/model/MemberList;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTransferGroupEvent(Lcom/shanlitech/et/notice/event/TransferGroupEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/c0;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransferGroupEvent gid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/TransferGroupEvent;->getGid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/TransferGroupEvent;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/talk/f/c0;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/c;

    .line 4
    invoke-interface {v1, p1}, Lcom/ifengyu/talk/h/c;->W0(Lcom/shanlitech/et/notice/event/TransferGroupEvent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onlineStatusChangeEvent(Lcom/shanlitech/et/notice/event/OnlineStatusEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/OnlineStatusEvent;->getOnlinestatus()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/ifengyu/talk/f/c0;->b:Z

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/ifengyu/talk/h/c;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/c0;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
