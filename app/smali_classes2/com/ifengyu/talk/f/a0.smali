.class public Lcom/ifengyu/talk/f/a0;
.super Ljava/lang/Object;
.source "AccountHelper.java"


# static fields
.field private static final g:Ljava/lang/String; = "a0"


# instance fields
.field private final a:Lcom/shanlitech/et/model/Account;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ifengyu/talk/h/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Lcom/shanlitech/et/notice/event/ContactInvitationChangedEvent;

.field private e:Lcom/shanlitech/et/notice/event/GroupInvitationChangedEvent;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/shanlitech/et/model/Account;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/talk/f/a0;->b:Ljava/util/Set;

    .line 3
    iput-object p1, p0, Lcom/ifengyu/talk/f/a0;->a:Lcom/shanlitech/et/model/Account;

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->r(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/a0;->d:Lcom/shanlitech/et/notice/event/ContactInvitationChangedEvent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/ContactInvitationChangedEvent;->getInvitations()[Lcom/shanlitech/et/model/ContactInvitation;

    move-result-object v0

    .line 3
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    .line 4
    iget v7, v6, Lcom/shanlitech/et/model/ContactInvitation;->unread:I

    if-ne v7, v3, :cond_0

    .line 5
    invoke-virtual {v6}, Lcom/shanlitech/et/model/ContactInvitation;->markRead()Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iput-object v1, p0, Lcom/ifengyu/talk/f/a0;->d:Lcom/shanlitech/et/notice/event/ContactInvitationChangedEvent;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/talk/f/a0;->e:Lcom/shanlitech/et/notice/event/GroupInvitationChangedEvent;

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/GroupInvitationChangedEvent;->getInvitations()[Lcom/shanlitech/et/model/GroupInvitation;

    move-result-object v0

    .line 9
    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v0, v5

    .line 10
    iget v7, v6, Lcom/shanlitech/et/model/GroupInvitation;->unread:I

    if-ne v7, v3, :cond_3

    .line 11
    invoke-virtual {v6}, Lcom/shanlitech/et/model/GroupInvitation;->markRead()Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 12
    :cond_4
    iput-object v1, p0, Lcom/ifengyu/talk/f/a0;->e:Lcom/shanlitech/et/notice/event/GroupInvitationChangedEvent;

    .line 13
    :cond_5
    iput-boolean v2, p0, Lcom/ifengyu/talk/f/a0;->c:Z

    .line 14
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/library/event/SimpleEvent;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lcom/ifengyu/library/event/SimpleEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public addListener(Lcom/ifengyu/talk/h/a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/a0;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/a0;->a:Lcom/shanlitech/et/model/Account;

    invoke-virtual {v0}, Lcom/shanlitech/et/web/b/c/a;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/shanlitech/et/model/ContactList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/a0;->a:Lcom/shanlitech/et/model/Account;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Account;->getContactList()Lcom/shanlitech/et/model/ContactList;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/talk/f/a0;->f:I

    return v0
.end method

.method public e()Lcom/shanlitech/et/model/User;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/a0;->a:Lcom/shanlitech/et/model/Account;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Account;->getCurrentUser()Lcom/shanlitech/et/model/User;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/a0;->a:Lcom/shanlitech/et/model/Account;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Account;->getUid()J

    move-result-wide v0

    return-wide v0
.end method

.method public g(Ljava/lang/String;)Lcom/shanlitech/et/model/User;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/talk/f/a0;->c()Lcom/shanlitech/et/model/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shanlitech/et/model/User;

    .line 2
    invoke-virtual {v1}, Lcom/shanlitech/et/model/User;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/talk/f/a0;->c:Z

    return v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/a0;->a:Lcom/shanlitech/et/model/Account;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shanlitech/et/model/Account;->login(Ljava/lang/String;Ljava/lang/String;II)Z

    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/a0;->a:Lcom/shanlitech/et/model/Account;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Account;->logout()Z

    return-void
.end method

.method public k(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/shanlitech/et/model/ContactList;->queryUserByAccount(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public l(JZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/a0;->a:Lcom/shanlitech/et/model/Account;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shanlitech/et/model/Account;->responseContact(JZ)Z

    move-result p1

    return p1
.end method

.method public m(JZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/a0;->a:Lcom/shanlitech/et/model/Account;

    invoke-virtual {v0, p1, p2, p3, p3}, Lcom/shanlitech/et/model/Account;->responseGroup(JZZ)Z

    move-result p1

    return p1
.end method

.method public onContactInvitationEvent(Lcom/shanlitech/et/notice/event/ContactInvitationChangedEvent;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/a0;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contact onInvitationEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/ContactInvitationChangedEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/ContactInvitationChangedEvent;->getInvitations()[Lcom/shanlitech/et/model/ContactInvitation;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/ContactInvitationChangedEvent;->getInvitations()[Lcom/shanlitech/et/model/ContactInvitation;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/talk/f/a0;->d:Lcom/shanlitech/et/notice/event/ContactInvitationChangedEvent;

    .line 4
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/ContactInvitationChangedEvent;->getInvitations()[Lcom/shanlitech/et/model/ContactInvitation;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 5
    invoke-virtual {v2}, Lcom/shanlitech/et/model/ContactInvitation;->getInvitee()Lcom/shanlitech/et/model/User;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/shanlitech/et/model/ContactInvitation;->getInvitee()Lcom/shanlitech/et/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shanlitech/et/model/User;->isMe()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v2, v2, Lcom/shanlitech/et/model/ContactInvitation;->unread:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 6
    iput-boolean v3, p0, Lcom/ifengyu/talk/f/a0;->c:Z

    .line 7
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/library/event/SimpleEvent;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/ifengyu/library/event/SimpleEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onContactListEvent(Lcom/shanlitech/et/model/ContactList;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/a0;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContactListEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/ContactList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/talk/f/a0;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/a;

    .line 3
    invoke-interface {v1, p1}, Lcom/ifengyu/talk/h/a;->j0(Lcom/shanlitech/et/model/ContactList;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGroupInvitationEvent(Lcom/shanlitech/et/notice/event/GroupInvitationChangedEvent;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/a0;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Group onInvitationEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupInvitationChangedEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupInvitationChangedEvent;->getInvitations()[Lcom/shanlitech/et/model/GroupInvitation;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupInvitationChangedEvent;->getInvitations()[Lcom/shanlitech/et/model/GroupInvitation;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/ifengyu/talk/f/a0;->e:Lcom/shanlitech/et/notice/event/GroupInvitationChangedEvent;

    .line 4
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupInvitationChangedEvent;->getInvitations()[Lcom/shanlitech/et/model/GroupInvitation;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 5
    iget-object v3, v2, Lcom/shanlitech/et/model/GroupInvitation;->confirmer:Lcom/shanlitech/et/model/User;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/shanlitech/et/model/User;->isMe()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v2, v2, Lcom/shanlitech/et/model/GroupInvitation;->unread:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 6
    iput-boolean v3, p0, Lcom/ifengyu/talk/f/a0;->c:Z

    .line 7
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/library/event/SimpleEvent;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/ifengyu/library/event/SimpleEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onSearchResultEvent(Lcom/shanlitech/et/notice/event/SearchResultEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/a0;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSearchResultEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SearchResultEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/talk/f/a0;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/a;

    .line 3
    invoke-interface {v1, p1}, Lcom/ifengyu/talk/h/a;->f0(Lcom/shanlitech/et/notice/event/SearchResultEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onlineStatusChangeEvent(Lcom/shanlitech/et/notice/event/OnlineStatusEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/a0;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnlineStatusEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/OnlineStatusEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/OnlineStatusEvent;->getOnlinestatus()J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/ifengyu/talk/f/a0;->f:I

    .line 3
    iget-object v0, p0, Lcom/ifengyu/talk/f/a0;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/a;

    .line 4
    invoke-interface {v1, p1}, Lcom/ifengyu/talk/h/a;->onOnlineStatusChange(Lcom/shanlitech/et/notice/event/OnlineStatusEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/ifengyu/talk/h/a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/a0;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
