.class public Lcom/ifengyu/intercom/ui/talk/c3/j0;
.super Lcom/ifengyu/intercom/ui/base/m;
.source "TalkPresenter.java"

# interfaces
.implements Lcom/ifengyu/talk/h/a;
.implements Lcom/ifengyu/talk/h/c;
.implements Lcom/ifengyu/talk/h/d;
.implements Lcom/ifengyu/talk/h/b;
.implements Lcom/ifengyu/talk/h/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/base/m<",
        "Lcom/ifengyu/intercom/ui/talk/d3/h;",
        ">;",
        "Lcom/ifengyu/talk/h/a;",
        "Lcom/ifengyu/talk/h/c;",
        "Lcom/ifengyu/talk/h/d;",
        "Lcom/ifengyu/talk/h/b;",
        "Lcom/ifengyu/talk/h/f;"
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String; = "j0"


# instance fields
.field private c:J

.field private d:Lcom/shanlitech/et/model/Group;

.field private e:Lcom/ifengyu/talk/http/entity/TempGroup;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shanlitech/et/model/Member;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

.field private final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/shanlitech/et/model/Group;Lcom/ifengyu/talk/http/entity/TempGroup;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/base/m;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 2
    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->c:J

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->f:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->g:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->h:Ljava/util/ArrayList;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->i:Ljava/util/HashMap;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->k:Ljava/util/HashMap;

    .line 8
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    .line 9
    iput-object p3, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->e:Lcom/ifengyu/talk/http/entity/TempGroup;

    return-void
.end method

.method static synthetic A(Lcom/ifengyu/intercom/ui/talk/c3/j0;)Lcom/ifengyu/intercom/ui/base/q;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p0

    return-object p0
.end method

.method private A0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 2
    iget-wide v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->c:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/talk/d3/h;->w()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/talk/d3/h;->m1()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/talk/d3/h;->r0()V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getHistoryEntity()Lcom/ifengyu/talk/models/HistoryMsgModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->c:J

    :cond_2
    return-void
.end method

.method static synthetic B(Lcom/ifengyu/intercom/ui/talk/c3/j0;)Lcom/ifengyu/intercom/ui/base/q;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p0

    return-object p0
.end method

.method private J(Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getSid()J

    move-result-wide v4

    .line 2
    invoke-virtual {p2}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getGid()J

    move-result-wide v2

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/g/b;->a()Lcom/ifengyu/talk/g/a;

    move-result-object p2

    .line 4
    invoke-interface {p2, v4, v5}, Lcom/ifengyu/talk/g/a;->a(J)Lio/reactivex/Observable;

    move-result-object p2

    .line 5
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v7, Lcom/ifengyu/intercom/ui/talk/c3/w;

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/ifengyu/intercom/ui/talk/c3/w;-><init>(Lcom/ifengyu/intercom/ui/talk/c3/j0;JJLcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;)V

    new-instance p1, Lcom/ifengyu/intercom/ui/talk/c3/j0$b;

    invoke-direct {p1, p0}, Lcom/ifengyu/intercom/ui/talk/c3/j0$b;-><init>(Lcom/ifengyu/intercom/ui/talk/c3/j0;)V

    .line 6
    invoke-virtual {p2, v7, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private M(Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getSid()J

    move-result-wide v0

    .line 2
    invoke-virtual {p2}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getGid()J

    move-result-wide v2

    .line 3
    invoke-virtual {p2}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getSpeechUrl()Ljava/lang/String;

    move-result-object p2

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/ifengyu/talk/d;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/liulishuo/okdownload/DownloadTask$Builder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p2, v2, v0}, Lcom/liulishuo/okdownload/DownloadTask$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 6
    invoke-virtual {v3, p2}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setAutoCallbackToUIThread(Z)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->build()Lcom/liulishuo/okdownload/DownloadTask;

    move-result-object p2

    new-instance v0, Lcom/ifengyu/intercom/ui/talk/c3/j0$c;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/j0$c;-><init>(Lcom/ifengyu/intercom/ui/talk/c3/j0;Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;)V

    .line 8
    invoke-virtual {p2, v0}, Lcom/liulishuo/okdownload/DownloadTask;->enqueue(Lcom/liulishuo/okdownload/DownloadListener;)V

    return-void
.end method

.method private synthetic U(JJLcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;Lcom/ifengyu/talk/http/entity/SpeechMsg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->l:Ljava/lang/String;

    const-string v1, "getSpeechMsg success"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p6}, Lcom/ifengyu/talk/http/entity/SpeechMsg;->getBody()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lcom/ifengyu/library/utils/h;->b(Ljava/lang/String;)[B

    move-result-object p6

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ifengyu/talk/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p6, p1, p2}, Lcom/ifengyu/library/utils/j;->j([BLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->v1()V

    .line 6
    invoke-virtual {p0, p5}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->y0(Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;)V

    return-void
.end method

.method private synthetic W(J)Lio/reactivex/ObservableSource;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/database/TalkDatabase;->D()Lcom/ifengyu/talk/database/TalkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/database/TalkDatabase;->C()Lcom/ifengyu/talk/database/a/a;

    move-result-object v1

    iget-wide v4, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->c:J

    const/16 v6, 0x32

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/ifengyu/talk/database/a/a;->a(JJI)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private synthetic a0(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->z0(Ljava/util/List;)V

    return-object p1
.end method

.method private synthetic c0(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 2
    iget-wide v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->c:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->h0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->h:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/ifengyu/intercom/ui/talk/d3/h;->q0(Ljava/util/List;)V

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->v0()V

    return-void
.end method

.method private synthetic g0(Lcom/ifengyu/talk/http/entity/MsgListEntity;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/MsgListEntity;->getData()Ljava/util/ArrayList;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/database/TalkDatabase;->D()Lcom/ifengyu/talk/database/TalkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/database/TalkDatabase;->C()Lcom/ifengyu/talk/database/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ifengyu/talk/database/a/a;->d(Ljava/util/ArrayList;)Ljava/util/List;

    .line 3
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->z0(Ljava/util/List;)V

    return-object p1
.end method

.method private synthetic p0(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/ifengyu/intercom/ui/talk/c3/j0;->l:Ljava/lang/String;

    const-string v0, "queryHistoryMessage success"

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/p/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-wide v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->c:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->h0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->h:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/ifengyu/intercom/ui/talk/d3/h;->q0(Ljava/util/List;)V

    .line 5
    :goto_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->A0()V

    return-void
.end method

.method static synthetic v()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w(Lcom/ifengyu/intercom/ui/talk/c3/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->A0()V

    return-void
.end method

.method private x0(Lcom/ifengyu/talk/models/HistoryMsgModel;)Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;
    .locals 8

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getMsgType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 3
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getBody()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;

    .line 4
    invoke-virtual {p1, v1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setBodyParse(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getMsgTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setMsgTime(J)V

    .line 6
    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getUid()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setAudioUid(J)V

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setAudioState(I)V

    .line 8
    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setAudioDuration(J)V

    .line 9
    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getSid()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setAudioSid(J)V

    .line 10
    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getUid()J

    move-result-wide v2

    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/talk/f/a0;->f()J

    move-result-wide v4

    const/16 v6, 0x66

    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    .line 11
    invoke-virtual {v0, v6}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setType(I)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getUid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ifengyu/library/account/UserCache;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v0, v6}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setType(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x65

    .line 14
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setType(I)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {p1}, Lcom/ifengyu/talk/d;->x(Lcom/ifengyu/talk/models/HistoryMsgModel;)Lcom/ifengyu/talk/models/HistoryMsgModel;

    .line 16
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getMsgTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setMsgTime(J)V

    const/16 v1, 0x67

    .line 17
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setType(I)V

    .line 18
    :goto_0
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setHistoryEntity(Lcom/ifengyu/talk/models/HistoryMsgModel;)V

    return-object v0
.end method

.method static synthetic y(Lcom/ifengyu/intercom/ui/talk/c3/j0;)Lcom/ifengyu/intercom/ui/base/q;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p0

    return-object p0
.end method

.method private z0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/talk/models/HistoryMsgModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/talk/models/HistoryMsgModel;

    .line 3
    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->x0(Lcom/ifengyu/talk/models/HistoryMsgModel;)Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->g:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public B0(Lcom/shanlitech/et/notice/event/ResultEvent;)V
    .locals 0

    return-void
.end method

.method public C(Lcom/shanlitech/et/model/MemberList;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/shanlitech/et/model/MemberList;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v2}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/shanlitech/et/model/MemberList;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->isCurrentGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    invoke-virtual {p1}, Lcom/shanlitech/et/model/MemberList;->getAllMembers()Ljava/util/ArrayList;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shanlitech/et/model/Member;

    .line 5
    invoke-virtual {v0}, Lcom/shanlitech/et/b/c/c;->inGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Member;->getUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->f:Ljava/util/ArrayList;

    new-instance v0, Lcom/ifengyu/talk/e/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getCreator()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/talk/e/a;-><init>(J)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->R()V

    .line 10
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->Y0()V

    :cond_2
    return-void
.end method

.method public D(Lcom/shanlitech/et/notice/event/GroupEvent;)V
    .locals 0

    return-void
.end method

.method public G(Lcom/shanlitech/et/model/GroupList;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/model/GroupList;->getCurrentGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getType()I

    move-result v0

    sget v1, Lcom/shanlitech/et/model/Group;->GROUP_NORMAL:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v2}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    invoke-static {v0, p1}, Lcom/ifengyu/talk/d;->s(Lcom/shanlitech/et/model/Group;Lcom/shanlitech/et/model/Group;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->c(Lcom/shanlitech/et/model/Group;)V

    :cond_0
    return-void
.end method

.method public H0(Lcom/shanlitech/et/notice/event/RequestResultEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequest()Lcom/shanlitech/et/ETStatusCode$Request;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/ETStatusCode$Request;->f:Lcom/shanlitech/et/ETStatusCode$Request;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequestResultCode()Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    move-result-object p1

    sget-object v0, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->b:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    if-eq p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->I0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequest()Lcom/shanlitech/et/ETStatusCode$Request;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/ETStatusCode$Request;->T:Lcom/shanlitech/et/ETStatusCode$Request;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->getRequestResultCode()Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    sget-object p1, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->b:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    :cond_1
    :goto_0
    return-void
.end method

.method public I(Lcom/ifengyu/intercom/ui/talk/d3/h;)V
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

    invoke-virtual {p1}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/talk/f/c0;->addListener(Lcom/ifengyu/talk/h/c;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/d;->g()Lcom/ifengyu/talk/f/d0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/talk/f/d0;->addListener(Lcom/ifengyu/talk/h/d;)V

    .line 5
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/d;->b()Lcom/ifengyu/talk/f/b0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/talk/f/b0;->addListener(Lcom/ifengyu/talk/h/b;)V

    .line 6
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/d;->j()Lcom/ifengyu/talk/f/f0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ifengyu/talk/f/f0;->addListener(Lcom/ifengyu/talk/h/f;)V

    return-void
.end method

.method public K(Lcom/ifengyu/talk/models/OperatorMsgModel;)V
    .locals 0

    return-void
.end method

.method public N(J)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->k:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getMemberList()Lcom/shanlitech/et/model/MemberList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/shanlitech/et/model/MemberList;->getMember(J)Lcom/shanlitech/et/model/Member;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->k:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_1
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/talk/f/a0;->k(Ljava/lang/String;)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method public O()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public Q()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/shanlitech/et/model/Member;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public R()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->isCurrentGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/talk/d3/h;->K0()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getMemberList()Lcom/shanlitech/et/model/MemberList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->C(Lcom/shanlitech/et/model/MemberList;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->join()Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/talk/d3/h;->I0()V

    :goto_0
    return-void
.end method

.method public synthetic V(JJLcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;Lcom/ifengyu/talk/http/entity/SpeechMsg;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->U(JJLcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;Lcom/ifengyu/talk/http/entity/SpeechMsg;)V

    return-void
.end method

.method public V0(Lcom/shanlitech/et/notice/event/GroupEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupEvent;->isCurrentGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupEvent;->getTargetGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->K0()V

    :cond_0
    return-void
.end method

.method public W0(Lcom/shanlitech/et/notice/event/TransferGroupEvent;)V
    .locals 0

    return-void
.end method

.method public synthetic X(J)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->W(J)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/shanlitech/et/notice/event/SpeakEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    nop

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/talk/d3/h;->b()V

    return-void
.end method

.method public synthetic b0(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->a0(Ljava/util/List;)Ljava/util/List;

    return-object p1
.end method

.method public c(Lcom/shanlitech/et/notice/event/SpeakEvent;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v2}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getSid()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getMember()Lcom/shanlitech/et/model/Member;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/b/c/c;->isMe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/talk/d3/h;->f()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getSid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getDuration()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getSid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->q()V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getSid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setAudioState(I)V

    .line 11
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setAudioDuration(J)V

    .line 12
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->q()V

    :cond_4
    :goto_0
    return-void
.end method

.method public d(Lcom/shanlitech/et/notice/event/SpeakEvent;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v2}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_6

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getSid()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getSid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v4, 0x3

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    .line 4
    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getAudioState()I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getAudioDuration()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    .line 6
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    .line 7
    invoke-virtual {v1, v4}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setAudioState(I)V

    goto :goto_0

    .line 8
    :cond_4
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;-><init>()V

    .line 9
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getMember()Lcom/shanlitech/et/model/Member;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/b/c/c;->isMe()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {v1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->l()V

    const/16 v1, 0x66

    .line 11
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setType(I)V

    goto :goto_1

    :cond_5
    const/16 v1, 0x65

    .line 12
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setType(I)V

    .line 13
    :goto_1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/BaseEvent;->getEvenTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setMsgTime(J)V

    .line 14
    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setAudioState(I)V

    .line 15
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getUID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setAudioUid(J)V

    .line 16
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getSid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setAudioSid(J)V

    .line 17
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getSid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->q()V

    :cond_6
    :goto_2
    return-void
.end method

.method public e(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->j:Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getHistoryEntity()Lcom/ifengyu/talk/models/HistoryMsgModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getBodyParse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getSid()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->j:Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setAudioState(I)V

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->Y0()V

    :cond_1
    return-void
.end method

.method public synthetic e0(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->c0(Ljava/util/List;)V

    return-void
.end method

.method public f(Lcom/shanlitech/et/notice/event/SpeakEvent;)V
    .locals 0

    return-void
.end method

.method public f0(Lcom/shanlitech/et/notice/event/SearchResultEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SearchResultEvent;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->k:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SearchResultEvent;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/model/User;->getUid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SearchResultEvent;->getUser()Lcom/shanlitech/et/model/User;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->Y0()V

    :cond_0
    return-void
.end method

.method public h(Lcom/shanlitech/et/notice/event/SpeakEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    nop

    :cond_0
    return-void
.end method

.method public synthetic h0(Lcom/ifengyu/talk/http/entity/MsgListEntity;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->g0(Lcom/ifengyu/talk/http/entity/MsgListEntity;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public i(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->j:Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getHistoryEntity()Lcom/ifengyu/talk/models/HistoryMsgModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getBodyParse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getSid()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->j:Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setAudioState(I)V

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->Y0()V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->j:Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    :cond_1
    return-void
.end method

.method public j0(Lcom/shanlitech/et/model/ContactList;)V
    .locals 0

    return-void
.end method

.method public l(Lcom/shanlitech/et/notice/event/SpeakEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    nop

    :cond_0
    return-void
.end method

.method public m(Lcom/shanlitech/et/notice/event/SpeakEvent;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v2}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getMember()Lcom/shanlitech/et/model/Member;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/b/c/c;->isMe()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->f()V

    :cond_1
    :goto_0
    return-void
.end method

.method public m0(Lcom/shanlitech/et/notice/event/InviteGroupAckEvent;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic n(Lcom/ifengyu/intercom/ui/base/q;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->I(Lcom/ifengyu/intercom/ui/talk/d3/h;)V

    return-void
.end method

.method public onOnlineStatusChange(Lcom/shanlitech/et/notice/event/OnlineStatusEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/OnlineStatusEvent;->getOnlinestatus()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->I0()V

    :cond_0
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

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/c0;->removeListener(Lcom/ifengyu/talk/h/c;)V

    .line 4
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->g()Lcom/ifengyu/talk/f/d0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/d0;->removeListener(Lcom/ifengyu/talk/h/d;)V

    .line 5
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->b()Lcom/ifengyu/talk/f/b0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/b0;->removeListener(Lcom/ifengyu/talk/h/b;)V

    .line 6
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->j()Lcom/ifengyu/talk/f/f0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ifengyu/talk/f/f0;->removeListener(Lcom/ifengyu/talk/h/f;)V

    return-void
.end method

.method public synthetic q0(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->p0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public r0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->u0()V

    return-void
.end method

.method public s0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->u0()V

    return-void
.end method

.method public t(Lcom/ifengyu/talk/models/HistoryMsgModel;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getBodyParse()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getReceiver()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v2}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getMsgType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getBodyParse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getSid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setHistoryEntity(Lcom/ifengyu/talk/models/HistoryMsgModel;)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getSid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getAudioState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 8
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setAudioState(I)V

    .line 9
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->q()V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;-><init>()V

    .line 11
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getMsgTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setMsgTime(J)V

    const/16 v1, 0x67

    .line 12
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setType(I)V

    .line 13
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->setHistoryEntity(Lcom/ifengyu/talk/models/HistoryMsgModel;)V

    .line 14
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->q()V

    :cond_2
    :goto_0
    return-void
.end method

.method public u0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->e:Lcom/ifengyu/talk/http/entity/TempGroup;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGid()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 5
    :goto_0
    new-instance v2, Lcom/ifengyu/intercom/ui/talk/c3/x;

    invoke-direct {v2, p0, v0, v1}, Lcom/ifengyu/intercom/ui/talk/c3/x;-><init>(Lcom/ifengyu/intercom/ui/talk/c3/j0;J)V

    invoke-static {v2}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/c3/z;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/c3/z;-><init>(Lcom/ifengyu/intercom/ui/talk/c3/j0;)V

    .line 7
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 8
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/m;->o(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/c3/v;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/c3/v;-><init>(Lcom/ifengyu/intercom/ui/talk/c3/j0;)V

    sget-object v2, Lcom/ifengyu/intercom/ui/talk/c3/b0;->a:Lcom/ifengyu/intercom/ui/talk/c3/b0;

    .line 9
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public v0()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->e:Lcom/ifengyu/talk/http/entity/TempGroup;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/ifengyu/talk/http/entity/TempGroup;->getGid()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v3, v0

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/n/b;->a()Lcom/ifengyu/intercom/n/a;

    move-result-object v2

    iget-wide v5, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->c:J

    const/16 v7, 0x32

    .line 6
    invoke-interface/range {v2 .. v7}, Lcom/ifengyu/intercom/n/a;->H(JJI)Lio/reactivex/Observable;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/c3/y;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/c3/y;-><init>(Lcom/ifengyu/intercom/ui/talk/c3/j0;)V

    .line 8
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 9
    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/base/m;->o(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/m;

    new-instance v1, Lcom/ifengyu/intercom/ui/talk/c3/a0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/talk/c3/a0;-><init>(Lcom/ifengyu/intercom/ui/talk/c3/j0;)V

    new-instance v2, Lcom/ifengyu/intercom/ui/talk/c3/j0$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/ui/talk/c3/j0$a;-><init>(Lcom/ifengyu/intercom/ui/talk/c3/j0;)V

    .line 10
    invoke-interface {v0, v1, v2}, Lcom/uber/autodispose/m;->b(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public x(Lcom/shanlitech/et/notice/event/CreateGroupLimitAccountsEvent;)V
    .locals 0

    return-void
.end method

.method public y0(Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/n;->d()Lcom/shanlitech/et/core/c/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/n;->g()Z

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getHistoryEntity()Lcom/ifengyu/talk/models/HistoryMsgModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->N()V

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getBodyParse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->N()V

    return-void

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ifengyu/talk/d;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getGid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getSid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->j:Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getHistoryEntity()Lcom/ifengyu/talk/models/HistoryMsgModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getBodyParse()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;

    .line 10
    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getSid()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getSid()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 11
    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getSid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->i(J)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getSid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->i(J)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->y0(Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;)V

    goto :goto_0

    .line 14
    :cond_3
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->j:Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    .line 15
    invoke-static {}, Lcom/shanlitech/et/core/c/n;->d()Lcom/shanlitech/et/core/c/n;

    move-result-object p1

    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getSid()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getPayload()I

    move-result v0

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/shanlitech/et/core/c/n;->f(Ljava/lang/String;JI)Z

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {v1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->U()V

    .line 17
    invoke-virtual {v0}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getSpeechUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->J(Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;)V

    goto :goto_0

    .line 19
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->M(Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;)V

    :goto_0
    return-void
.end method

.method public z(Lcom/shanlitech/et/notice/event/GroupEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupEvent;->getTargetGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v0

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/j0;->d:Lcom/shanlitech/et/model/Group;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/m;->s()Lcom/ifengyu/intercom/ui/base/q;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/d3/h;

    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/talk/d3/h;->I0()V

    :cond_0
    return-void
.end method
