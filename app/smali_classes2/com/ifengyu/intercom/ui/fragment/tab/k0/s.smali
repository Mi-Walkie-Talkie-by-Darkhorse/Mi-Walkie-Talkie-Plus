.class public Lcom/ifengyu/intercom/ui/fragment/tab/k0/s;
.super Lcom/ifengyu/intercom/ui/base/m;
.source "RecentTalkPresenter.java"

# interfaces
.implements Lcom/ifengyu/talk/h/a;
.implements Lcom/ifengyu/talk/h/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/base/m<",
        "Lcom/ifengyu/intercom/ui/fragment/tab/l0/b;",
        ">;",
        "Lcom/ifengyu/talk/h/a;",
        "Lcom/ifengyu/talk/h/e;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "s"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/m;-><init>()V

    return-void
.end method

.method static synthetic A(Lcom/ifengyu/talk/models/RecentTalkModel;)Lcom/ifengyu/talk/models/RecentTalkModel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroupId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/talk/d;->i()Lcom/ifengyu/talk/f/e0;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/ifengyu/talk/f/e0;->b(J)V

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/database/TalkDatabase;->D()Lcom/ifengyu/talk/database/TalkDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/talk/database/TalkDatabase;->C()Lcom/ifengyu/talk/database/a/a;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/ifengyu/talk/database/a/a;->f(J)V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ifengyu/talk/d;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ifengyu/library/utils/j;->c(Ljava/io/File;)V

    return-object p0
.end method

.method static synthetic B(Lcom/ifengyu/talk/models/RecentTalkModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/s;->c:Ljava/lang/String;

    const-string v0, "deleteRecentTalk success"

    invoke-static {p0, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic I(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/s;->c:Ljava/lang/String;

    const-string v1, "deleteRecentTalk failed"

    invoke-static {v0, v1, p0}, Lcom/ifengyu/intercom/p/y;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public J()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->i()Lcom/ifengyu/talk/f/e0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/f/e0;->F()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/fragment/tab/l0/b;

    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/talk/f/a0;->d()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/ui/fragment/tab/l0/b;->y0(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/fragment/tab/l0/b;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/ifengyu/intercom/ui/fragment/tab/l0/b;->y0(I)V

    :goto_0
    return-void
.end method

.method public f0(Lcom/shanlitech/et/notice/event/SearchResultEvent;)V
    .locals 0

    return-void
.end method

.method public g(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/talk/models/RecentTalkModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/fragment/tab/l0/b;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/l0/b;->z0()V

    return-void
.end method

.method public j(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/talk/models/RecentTalkModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/fragment/tab/l0/b;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/fragment/tab/l0/b;->z0()V

    return-void
.end method

.method public j0(Lcom/shanlitech/et/model/ContactList;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic n(Lcom/ifengyu/intercom/ui/base/q;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/ui/fragment/tab/l0/b;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/k0/s;->v(Lcom/ifengyu/intercom/ui/fragment/tab/l0/b;)V

    return-void
.end method

.method public onOnlineStatusChange(Lcom/shanlitech/et/notice/event/OnlineStatusEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/fragment/tab/l0/b;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/OnlineStatusEvent;->getOnlinestatus()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-interface {v0, v2}, Lcom/ifengyu/intercom/ui/fragment/tab/l0/b;->y0(I)V

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/OnlineStatusEvent;->getOnlinestatus()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/d;->i()Lcom/ifengyu/talk/f/e0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/f/e0;->F()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->E()V

    :goto_0
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/base/m;->q()V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/a0;->removeListener(Lcom/ifengyu/talk/h/a;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->i()Lcom/ifengyu/talk/f/e0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/e0;->removeListener(Lcom/ifengyu/talk/h/e;)V

    return-void
.end method

.method public v(Lcom/ifengyu/intercom/ui/fragment/tab/l0/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/base/m;->n(Lcom/ifengyu/intercom/ui/base/q;)V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/talk/f/a0;->addListener(Lcom/ifengyu/talk/h/a;)V

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/d;->i()Lcom/ifengyu/talk/f/e0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/talk/f/e0;->addListener(Lcom/ifengyu/talk/h/e;)V

    return-void
.end method

.method public w(Lcom/ifengyu/talk/models/RecentTalkModel;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/n;->a:Lcom/ifengyu/intercom/ui/fragment/tab/k0/n;

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/ui/fragment/tab/k0/o;->a:Lcom/ifengyu/intercom/ui/fragment/tab/k0/o;

    sget-object v1, Lcom/ifengyu/intercom/ui/fragment/tab/k0/p;->a:Lcom/ifengyu/intercom/ui/fragment/tab/k0/p;

    .line 4
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ifengyu/talk/models/RecentTalkModel;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->i()Lcom/ifengyu/talk/f/e0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/f/e0;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
