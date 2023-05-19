.class public Lcom/ifengyu/talk/f/g0;
.super Ljava/lang/Object;
.source "SessionHelper.java"


# static fields
.field private static final f:Ljava/lang/String; = "g0"


# instance fields
.field private final a:Lcom/shanlitech/et/model/Account;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ifengyu/talk/h/g;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

.field private d:Lio/reactivex/disposables/Disposable;

.field private e:Z


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

    iput-object v0, p0, Lcom/ifengyu/talk/f/g0;->b:Ljava/util/Set;

    .line 3
    iput-object p1, p0, Lcom/ifengyu/talk/f/g0;->a:Lcom/shanlitech/et/model/Account;

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->r(Ljava/lang/Object;)V

    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/g0;->d:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ifengyu/talk/f/g0;->d:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private e(Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getMyResponse()Ljava/lang/Integer;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/ifengyu/talk/f/g0;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle new session calling MyResponse:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->isMySession()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/talk/f/g0;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/g;

    .line 6
    invoke-interface {v1, p1}, Lcom/ifengyu/talk/h/g;->Z(Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/talk/event/NewSessionInviteEvent;

    invoke-direct {v1}, Lcom/ifengyu/talk/event/NewSessionInviteEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    :cond_2
    const-wide/16 v0, 0x3c

    .line 8
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/talk/f/y;

    invoke-direct {v1, p0}, Lcom/ifengyu/talk/f/y;-><init>(Lcom/ifengyu/talk/f/g0;)V

    .line 9
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/talk/f/x;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/talk/f/x;-><init>(Lcom/ifengyu/talk/f/g0;Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V

    sget-object p1, Lcom/ifengyu/talk/f/z;->a:Lcom/ifengyu/talk/f/z;

    .line 11
    invoke-virtual {v0, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic f(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/f/g0;->d:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic h(Lcom/shanlitech/et/notice/event/GroupSessionEvent;Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p2, Lcom/ifengyu/talk/f/g0;->f:Ljava/lang/String;

    const-string v0, "session calling timeout"

    invoke-static {p2, v0}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lcom/ifengyu/talk/f/g0;->d:Lio/reactivex/disposables/Disposable;

    .line 3
    iget-object p2, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    if-eqz p2, :cond_4

    .line 4
    invoke-virtual {p2}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->isMySession()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getStatus()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    .line 6
    iget-object p1, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->stop()Z

    .line 7
    iget-object p1, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->deleteSession()Z

    :cond_0
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/ifengyu/talk/f/g0;->e:Z

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getMyResponse()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_3

    .line 11
    iget-object p2, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    const/16 v0, 0x64

    invoke-virtual {p2, v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->refuse(I)Z

    .line 12
    iget-object p2, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {p2}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 13
    iget-object p2, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {p2}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shanlitech/et/model/Group;->deleteSession()Z

    .line 14
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p2

    new-instance v0, Lcom/ifengyu/talk/event/NewSessionTimeoutEvent;

    invoke-direct {v0}, Lcom/ifengyu/talk/event/NewSessionTimeoutEvent;-><init>()V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    .line 15
    :cond_3
    iget-object p2, p0, Lcom/ifengyu/talk/f/g0;->b:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/talk/h/g;

    .line 16
    invoke-interface {v0, p1}, Lcom/ifengyu/talk/h/g;->n0(Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    return-void
.end method

.method public addListener(Lcom/ifengyu/talk/h/g;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/g0;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public varargs b([Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/g0;->a:Lcom/shanlitech/et/model/Account;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/shanlitech/et/b/c/a;->createSessionGroup(Ljava/lang/String;Z[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public d()Lcom/shanlitech/et/notice/event/GroupSessionEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    return-object v0
.end method

.method public synthetic g(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/talk/f/g0;->f(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public synthetic i(Lcom/shanlitech/et/notice/event/GroupSessionEvent;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/talk/f/g0;->h(Lcom/shanlitech/et/notice/event/GroupSessionEvent;Ljava/lang/Long;)V

    return-void
.end method

.method public onGroupRemovedEvent(Lcom/shanlitech/et/notice/event/GroupRemovedEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/g0;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGroupRemovedEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupRemovedEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupRemovedEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupRemovedEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getType()I

    move-result v1

    sget v2, Lcom/shanlitech/et/model/Group;->GROUP_SESSION:I

    if-ne v1, v2, :cond_3

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGroupRemovedEvent111111:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupRemovedEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    if-eqz v0, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/talk/f/g0;->c()V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->stop()Z

    .line 9
    iget-object v0, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->deleteSession()Z

    :cond_1
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    .line 12
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/ifengyu/talk/f/g0;->e:Z

    if-nez v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/ifengyu/talk/f/g0;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/g;

    .line 14
    invoke-interface {v1, p1}, Lcom/ifengyu/talk/h/g;->C0(Lcom/shanlitech/et/notice/event/GroupRemovedEvent;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onGroupSessionEvent(Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V
    .locals 8
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/g0;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGroupSessionEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {v1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    .line 5
    invoke-virtual {v1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getStatus()I

    move-result v1

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getStatus()I

    move-result v4

    if-ne v1, v4, :cond_1

    const-string p1, "\u907f\u514d\u540c\u4e00\u4e2a\u4e8b\u4ef6\u91cd\u590d\u56de\u8c03"

    .line 6
    invoke-static {v0, p1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    .line 8
    iget-object v1, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getStatus()I

    move-result v1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getStatus()I

    move-result v1

    if-ne v1, v2, :cond_4

    :cond_2
    const-string v1, "\u6536\u5230\u65b0\u7684\u4e34\u65f6\u5bf9\u8bb2\uff0c\u4f46\u662f\u81ea\u5df1\u5df2\u7ecf\u5904\u4e8e\u4e00\u4e2a\u4e34\u65f6\u5bf9\u8bb2"

    .line 9
    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    .line 10
    invoke-virtual {p1, v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->refuse(I)Z

    .line 11
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "SessionHelper"

    const-string v1, " preSessionEvent.getGroup().deleteSession()"

    .line 12
    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->deleteSession()Z

    :cond_3
    return-void

    .line 14
    :cond_4
    iput-object p1, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    .line 15
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getStatus()I

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_c

    const/4 v5, 0x0

    if-eq v1, v3, :cond_b

    if-eq v1, v2, :cond_a

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    goto/16 :goto_3

    .line 16
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session State Change: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getStatus()I

    move-result v3

    if-ne v3, v2, :cond_6

    const-string v2, "STATUS_DISCONNECTED"

    goto :goto_0

    :cond_6
    const-string v2, "STATUS_IDLE"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "myResponse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getMyResponse()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-direct {p0}, Lcom/ifengyu/talk/f/g0;->c()V

    .line 19
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->isMySession()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 20
    iget-object v0, p0, Lcom/ifengyu/talk/f/g0;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/g;

    .line 21
    iget-boolean v2, p0, Lcom/ifengyu/talk/f/g0;->e:Z

    if-eqz v2, :cond_7

    .line 22
    invoke-interface {v1}, Lcom/ifengyu/talk/h/g;->k()V

    goto :goto_1

    .line 23
    :cond_7
    invoke-interface {v1, p1}, Lcom/ifengyu/talk/h/g;->r1(Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V

    goto :goto_1

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/ifengyu/talk/f/g0;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/g;

    .line 25
    invoke-interface {v1, p1}, Lcom/ifengyu/talk/h/g;->r1(Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V

    goto :goto_2

    .line 26
    :cond_9
    iput-object v4, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    goto :goto_3

    :cond_a
    const-string v1, "Session State Change: STATUS_CONNECTED"

    .line 27
    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-direct {p0}, Lcom/ifengyu/talk/f/g0;->c()V

    .line 29
    iput-boolean v5, p0, Lcom/ifengyu/talk/f/g0;->e:Z

    goto :goto_3

    :cond_b
    const-string v1, "Session State Change: STATUS_CALLING"

    .line 30
    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-direct {p0}, Lcom/ifengyu/talk/f/g0;->c()V

    .line 32
    iput-boolean v5, p0, Lcom/ifengyu/talk/f/g0;->e:Z

    .line 33
    invoke-direct {p0, p1}, Lcom/ifengyu/talk/f/g0;->e(Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V

    goto :goto_3

    :cond_c
    const-string v1, "Session State Change: STATUS_IDLE"

    .line 34
    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-direct {p0}, Lcom/ifengyu/talk/f/g0;->c()V

    .line 36
    iget-object v0, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->stop()Z

    .line 37
    iget-object v0, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 38
    iget-object v0, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->deleteSession()Z

    .line 39
    :cond_d
    iput-object v4, p0, Lcom/ifengyu/talk/f/g0;->c:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    .line 40
    :goto_3
    iget-object v0, p0, Lcom/ifengyu/talk/f/g0;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/g;

    .line 41
    invoke-interface {v1, p1}, Lcom/ifengyu/talk/h/g;->n0(Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V

    goto :goto_4

    :cond_e
    return-void
.end method

.method public onStartSessionAckEvent(Lcom/shanlitech/et/notice/event/StartSessionAckEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/g0;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartSessionAckEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/StartSessionAckEvent;->getReason()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/StartSessionAckEvent;->getGid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/StartSessionAckEvent;->getGid()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/talk/f/g0;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/g;

    .line 4
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/StartSessionAckEvent;->getReason()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/ifengyu/talk/h/g;->T(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/ifengyu/talk/h/g;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/g0;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
