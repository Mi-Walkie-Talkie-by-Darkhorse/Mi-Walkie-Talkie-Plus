.class public Lcom/ifengyu/talk/f/e0;
.super Ljava/lang/Object;
.source "RecentTalkHelper.java"


# static fields
.field private static final e:Ljava/lang/String; = "e0"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ifengyu/talk/h/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/talk/models/RecentTalkModel;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/ifengyu/talk/models/RecentTalkModel;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/shanlitech/et/notice/event/SpeakEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/shanlitech/et/model/Account;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/talk/f/e0;->a:Ljava/util/Set;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/talk/f/e0;->b:Ljava/util/List;

    .line 4
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/talk/f/e0;->c:Landroid/util/LongSparseArray;

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->r(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic B(Lcom/ifengyu/talk/http/entity/MsgListEntity;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/MsgListEntity;->getData()Ljava/util/ArrayList;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getInviterId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getInviteeId()J

    move-result-wide v1

    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/talk/f/a0;->f()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getMsgType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lcom/ifengyu/talk/f/e0;->c:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getGid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/models/RecentTalkModel;

    if-nez v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getUpdateTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    .line 7
    invoke-virtual {v1}, Lcom/ifengyu/talk/models/RecentTalkModel;->getUpdateTime()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/talk/models/RecentTalkModel;->setUpdateTime(J)V

    .line 9
    new-instance v4, Lcom/ifengyu/talk/models/HistoryMsgModel;

    invoke-direct {v4}, Lcom/ifengyu/talk/models/HistoryMsgModel;-><init>()V

    const/4 v5, 0x7

    .line 10
    invoke-virtual {v4, v5}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setMsgType(I)V

    .line 11
    invoke-virtual {v4, v2, v3}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setMsgTime(J)V

    .line 12
    invoke-virtual {v0}, Lcom/ifengyu/talk/http/entity/SystemMsgEntity;->getGid()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setReceiver(J)V

    .line 13
    sget v0, Lcom/ifengyu/talk/R$string;->message_type_you_are_removed_by_owner:I

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setToWord(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, v4}, Lcom/ifengyu/talk/models/RecentTalkModel;->setLastMsgModel(Lcom/ifengyu/talk/models/HistoryMsgModel;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic D(Lcom/ifengyu/talk/http/entity/MsgListEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/ifengyu/talk/f/e0;->e:Ljava/lang/String;

    const-string v0, "querySystemMessageByType success"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/talk/f/e0;->H()V

    return-void
.end method

.method private G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/e0;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/talk/f/e0;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/e;

    .line 3
    iget-object v2, p0, Lcom/ifengyu/talk/f/e0;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/ifengyu/talk/h/e;->g(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private H()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/e0;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/talk/f/e0;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/e;

    .line 3
    iget-object v2, p0, Lcom/ifengyu/talk/f/e0;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/ifengyu/talk/h/e;->j(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private J()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/g/b;->a()Lcom/ifengyu/talk/g/a;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/ifengyu/talk/g/a;->b()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/talk/f/t;

    invoke-direct {v1, p0}, Lcom/ifengyu/talk/f/t;-><init>(Lcom/ifengyu/talk/f/e0;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/talk/f/u;

    invoke-direct {v1, p0}, Lcom/ifengyu/talk/f/u;-><init>(Lcom/ifengyu/talk/f/e0;)V

    new-instance v2, Lcom/ifengyu/talk/f/e0$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/talk/f/e0$a;-><init>(Lcom/ifengyu/talk/f/e0;)V

    .line 5
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private K()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/g/b;->a()Lcom/ifengyu/talk/g/a;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const v3, 0x186a0

    .line 2
    invoke-interface {v0, v1, v2, v3}, Lcom/ifengyu/talk/g/a;->c(III)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/talk/f/h;

    invoke-direct {v1, p0}, Lcom/ifengyu/talk/f/h;-><init>(Lcom/ifengyu/talk/f/e0;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/talk/f/q;

    invoke-direct {v1, p0}, Lcom/ifengyu/talk/f/q;-><init>(Lcom/ifengyu/talk/f/e0;)V

    new-instance v2, Lcom/ifengyu/talk/f/e0$b;

    invoke-direct {v2, p0}, Lcom/ifengyu/talk/f/e0$b;-><init>(Lcom/ifengyu/talk/f/e0;)V

    .line 5
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private L(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/talk/models/RecentTalkModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/e0;->c:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/talk/models/RecentTalkModel;

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroupId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/talk/f/c0;->c(J)Lcom/shanlitech/et/model/Group;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lcom/ifengyu/talk/models/RecentTalkModel;->setGroup(Lcom/shanlitech/et/model/Group;)V

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/talk/models/RecentTalkModel;->getLastMsgJsonStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/ifengyu/talk/models/RecentTalkModel;->getLastMsgJsonStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/talk/d;->w(Ljava/lang/String;)Lcom/ifengyu/talk/models/HistoryMsgModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/talk/models/RecentTalkModel;->setLastMsgModel(Lcom/ifengyu/talk/models/HistoryMsgModel;)V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/ifengyu/talk/f/e0;->c:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroupId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private M(Lcom/ifengyu/talk/models/RecentTalkModel;Lcom/shanlitech/et/model/Group;)V
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->setGroup(Lcom/shanlitech/et/model/Group;)V

    .line 2
    invoke-static {p2}, Lcom/ifengyu/talk/d;->e(Lcom/shanlitech/et/model/Group;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/talk/models/RecentTalkModel;->setGroupName(Ljava/lang/String;)V

    .line 3
    invoke-static {p2}, Lcom/ifengyu/talk/d;->c(Lcom/shanlitech/et/model/Group;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {p0, v0}, Lcom/ifengyu/talk/f/e0;->e([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/talk/models/RecentTalkModel;->setGroupAvatar(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/shanlitech/et/model/Group;->getMemberList()Lcom/shanlitech/et/model/MemberList;

    move-result-object p1

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p2}, Lcom/shanlitech/et/model/Group;->requestMemberList()Z

    :cond_0
    return-void
.end method

.method private N(Lcom/ifengyu/talk/models/HistoryMsgModel;Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getReceiver()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/talk/f/e0;->d(J)Lcom/ifengyu/talk/models/RecentTalkModel;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroupId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/talk/f/c0;->c(J)Lcom/shanlitech/et/model/Group;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/ifengyu/talk/f/e0;->M(Lcom/ifengyu/talk/models/RecentTalkModel;Lcom/shanlitech/et/model/Group;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getMsgTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/talk/models/RecentTalkModel;->setUpdateTime(J)V

    .line 5
    invoke-virtual {v0, p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->setLastMsgJsonStr(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/ifengyu/talk/models/RecentTalkModel;->setLastMsgModel(Lcom/ifengyu/talk/models/HistoryMsgModel;)V

    .line 7
    invoke-static {}, Lcom/ifengyu/talk/database/TalkDatabase;->D()Lcom/ifengyu/talk/database/TalkDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/database/TalkDatabase;->F()Lcom/ifengyu/talk/database/a/c;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/ifengyu/talk/database/a/c;->d(Lcom/ifengyu/talk/models/RecentTalkModel;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/e0;->e:Ljava/lang/String;

    return-object v0
.end method

.method private d(J)Lcom/ifengyu/talk/models/RecentTalkModel;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/e0;->c:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/talk/models/RecentTalkModel;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/talk/models/RecentTalkModel;

    invoke-direct {v0}, Lcom/ifengyu/talk/models/RecentTalkModel;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/ifengyu/talk/f/e0;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcom/ifengyu/talk/f/e0;->c:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/talk/models/RecentTalkModel;->setGroupId(Ljava/lang/Long;)V

    return-object v0
.end method

.method private e([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_3

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 5
    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v2, v0, :cond_1

    const-string v3, "\u5206\u9694"

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const-string p1, ""

    return-object p1
.end method

.method public static synthetic f(Lcom/ifengyu/talk/f/e0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/talk/f/e0;->L(Ljava/util/List;)V

    return-void
.end method

.method private synthetic g(Lcom/ifengyu/talk/models/RecentTalkModel;Lcom/ifengyu/talk/models/RecentTalkModel;)Lcom/ifengyu/talk/models/RecentTalkModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/database/TalkDatabase;->D()Lcom/ifengyu/talk/database/TalkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/database/TalkDatabase;->F()Lcom/ifengyu/talk/database/a/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroupId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/ifengyu/talk/database/a/c;->a(J)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/talk/f/e0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/ifengyu/talk/f/e0;->c:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroupId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    return-object p2
.end method

.method private synthetic i(Lcom/ifengyu/talk/models/RecentTalkModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/ifengyu/talk/f/e0;->e:Ljava/lang/String;

    const-string v0, "deleteErrorRecentTalkModel success"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/talk/f/e0;->H()V

    return-void
.end method

.method static synthetic k(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/e0;->e:Ljava/lang/String;

    const-string v1, "deleteErrorRecentTalkModel failed"

    invoke-static {v0, v1, p0}, Lcom/ifengyu/library/utils/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic l()Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/database/TalkDatabase;->D()Lcom/ifengyu/talk/database/TalkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/database/TalkDatabase;->F()Lcom/ifengyu/talk/database/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/ifengyu/talk/database/a/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic m(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/e0;->e:Ljava/lang/String;

    const-string v1, "onLoadAddRecentFromDBSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/talk/f/e0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/ifengyu/talk/f/e0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-direct {p0}, Lcom/ifengyu/talk/f/e0;->G()V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/talk/f/e0;->J()V

    return-void
.end method

.method static synthetic o(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/e0;->e:Ljava/lang/String;

    const-string v1, "onLoadAddRecentFromDBFail"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private synthetic p(Lcom/ifengyu/talk/models/HistoryMsgModel;Ljava/lang/String;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/talk/f/e0;->N(Lcom/ifengyu/talk/models/HistoryMsgModel;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private synthetic r(Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/ifengyu/talk/f/e0;->e:Ljava/lang/String;

    const-string v0, "onOtherExternalMsgEvent success"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/talk/f/e0;->H()V

    return-void
.end method

.method static synthetic t(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/e0;->e:Ljava/lang/String;

    const-string v1, "onOtherExternalMsgEvent fail"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic u()Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/database/TalkDatabase;->D()Lcom/ifengyu/talk/database/TalkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/database/TalkDatabase;->C()Lcom/ifengyu/talk/database/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/ifengyu/talk/database/a/a;->c()Lcom/ifengyu/talk/models/HistoryMsgModel;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic v(JLcom/ifengyu/talk/models/HistoryMsgModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/talk/f/e0;->d(J)Lcom/ifengyu/talk/models/RecentTalkModel;

    move-result-object p1

    .line 2
    invoke-virtual {p3}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getMsgTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ifengyu/talk/models/RecentTalkModel;->setUpdateTime(J)V

    .line 3
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/talk/models/RecentTalkModel;->setLastMsgJsonStr(Ljava/lang/String;)V

    .line 4
    invoke-static {p3}, Lcom/ifengyu/talk/d;->x(Lcom/ifengyu/talk/models/HistoryMsgModel;)Lcom/ifengyu/talk/models/HistoryMsgModel;

    invoke-virtual {p1, p3}, Lcom/ifengyu/talk/models/RecentTalkModel;->setLastMsgModel(Lcom/ifengyu/talk/models/HistoryMsgModel;)V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/talk/f/e0;->H()V

    return-void
.end method

.method private synthetic x(Lcom/ifengyu/talk/http/entity/LastMsgForGroups;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/talk/http/entity/LastMsgForGroups;->getData()Ljava/util/ArrayList;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/models/HistoryMsgModel;

    .line 3
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getReceiver()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/ifengyu/talk/f/c0;->c(J)Lcom/shanlitech/et/model/Group;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getReceiver()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/ifengyu/talk/f/e0;->d(J)Lcom/ifengyu/talk/models/RecentTalkModel;

    move-result-object v3

    .line 5
    invoke-direct {p0, v3, v2}, Lcom/ifengyu/talk/f/e0;->M(Lcom/ifengyu/talk/models/RecentTalkModel;Lcom/shanlitech/et/model/Group;)V

    .line 6
    invoke-virtual {v1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getMsgTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ifengyu/talk/models/RecentTalkModel;->setUpdateTime(J)V

    .line 7
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/ifengyu/talk/models/RecentTalkModel;->setLastMsgJsonStr(Ljava/lang/String;)V

    .line 8
    invoke-static {v1}, Lcom/ifengyu/talk/d;->x(Lcom/ifengyu/talk/models/HistoryMsgModel;)Lcom/ifengyu/talk/models/HistoryMsgModel;

    .line 9
    invoke-virtual {v3, v1}, Lcom/ifengyu/talk/models/RecentTalkModel;->setLastMsgModel(Lcom/ifengyu/talk/models/HistoryMsgModel;)V

    .line 10
    invoke-static {}, Lcom/ifengyu/talk/database/TalkDatabase;->D()Lcom/ifengyu/talk/database/TalkDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/talk/database/TalkDatabase;->F()Lcom/ifengyu/talk/database/a/c;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/ifengyu/talk/database/a/c;->d(Lcom/ifengyu/talk/models/RecentTalkModel;)Ljava/lang/Long;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private synthetic z(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/ifengyu/talk/f/e0;->e:Ljava/lang/String;

    const-string v0, "getLastMsgForEveryGroup success"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/talk/f/e0;->H()V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/talk/f/e0;->K()V

    return-void
.end method


# virtual methods
.method public synthetic A(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/talk/f/e0;->z(Ljava/util/ArrayList;)V

    return-void
.end method

.method public synthetic C(Lcom/ifengyu/talk/http/entity/MsgListEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/talk/f/e0;->B(Lcom/ifengyu/talk/http/entity/MsgListEntity;)V

    return-void
.end method

.method public synthetic E(Lcom/ifengyu/talk/http/entity/MsgListEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/talk/f/e0;->D(Lcom/ifengyu/talk/http/entity/MsgListEntity;)V

    return-void
.end method

.method public F()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/m;->a:Lcom/ifengyu/talk/f/m;

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/talk/f/n;

    invoke-direct {v1, p0}, Lcom/ifengyu/talk/f/n;-><init>(Lcom/ifengyu/talk/f/e0;)V

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/talk/f/k;

    invoke-direct {v1, p0}, Lcom/ifengyu/talk/f/k;-><init>(Lcom/ifengyu/talk/f/e0;)V

    sget-object v2, Lcom/ifengyu/talk/f/p;->a:Lcom/ifengyu/talk/f/p;

    .line 4
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public I(Lcom/ifengyu/talk/models/HistoryMsgModel;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ifengyu/talk/f/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/ifengyu/talk/f/i;-><init>(Lcom/ifengyu/talk/f/e0;Lcom/ifengyu/talk/models/HistoryMsgModel;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/talk/f/v;

    invoke-direct {p2, p0}, Lcom/ifengyu/talk/f/v;-><init>(Lcom/ifengyu/talk/f/e0;)V

    sget-object v0, Lcom/ifengyu/talk/f/s;->a:Lcom/ifengyu/talk/f/s;

    .line 3
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public addListener(Lcom/ifengyu/talk/h/e;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/e0;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/e0;->c:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/talk/models/RecentTalkModel;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/ifengyu/talk/f/j;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/talk/f/j;-><init>(Lcom/ifengyu/talk/f/e0;Lcom/ifengyu/talk/models/RecentTalkModel;)V

    .line 3
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/talk/f/l;

    invoke-direct {p2, p0}, Lcom/ifengyu/talk/f/l;-><init>(Lcom/ifengyu/talk/f/e0;)V

    sget-object v0, Lcom/ifengyu/talk/f/o;->a:Lcom/ifengyu/talk/f/o;

    .line 5
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public c()Ljava/util/List;
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
    iget-object v0, p0, Lcom/ifengyu/talk/f/e0;->b:Ljava/util/List;

    return-object v0
.end method

.method public synthetic h(Lcom/ifengyu/talk/models/RecentTalkModel;Lcom/ifengyu/talk/models/RecentTalkModel;)Lcom/ifengyu/talk/models/RecentTalkModel;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/talk/f/e0;->g(Lcom/ifengyu/talk/models/RecentTalkModel;Lcom/ifengyu/talk/models/RecentTalkModel;)Lcom/ifengyu/talk/models/RecentTalkModel;

    return-object p2
.end method

.method public synthetic j(Lcom/ifengyu/talk/models/RecentTalkModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/talk/f/e0;->i(Lcom/ifengyu/talk/models/RecentTalkModel;)V

    return-void
.end method

.method public synthetic n(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/talk/f/e0;->m(Ljava/util/List;)V

    return-void
.end method

.method public onGroupEvent(Lcom/shanlitech/et/model/Group;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 22
    sget-object v0, Lcom/ifengyu/talk/f/e0;->e:Ljava/lang/String;

    const-string v1, "onGroupEvent"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v0, p0, Lcom/ifengyu/talk/f/e0;->c:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/talk/models/RecentTalkModel;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Lcom/ifengyu/talk/models/RecentTalkModel;->getGroupAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    invoke-direct {p0, v0, p1}, Lcom/ifengyu/talk/f/e0;->M(Lcom/ifengyu/talk/models/RecentTalkModel;Lcom/shanlitech/et/model/Group;)V

    .line 26
    invoke-direct {p0}, Lcom/ifengyu/talk/f/e0;->H()V

    .line 27
    invoke-static {}, Lcom/ifengyu/talk/database/TalkDatabase;->D()Lcom/ifengyu/talk/database/TalkDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/database/TalkDatabase;->F()Lcom/ifengyu/talk/database/a/c;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/ifengyu/talk/database/a/c;->d(Lcom/ifengyu/talk/models/RecentTalkModel;)Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method public onGroupEvent(Lcom/shanlitech/et/notice/event/GroupEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/e0;->e:Ljava/lang/String;

    const-string v1, "onGroupEvent"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupEvent;->getTargetGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupEvent;->getType()Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/shanlitech/et/notice/event/GroupEvent$EventType;->CURRENT:Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    if-ne p1, v0, :cond_5

    .line 4
    iget-object p1, p0, Lcom/ifengyu/talk/f/e0;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/ifengyu/talk/f/e0;->b:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/talk/models/RecentTalkModel;

    invoke-virtual {p1}, Lcom/ifengyu/talk/models/RecentTalkModel;->getTalkType()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 5
    iget-object p1, p0, Lcom/ifengyu/talk/f/e0;->b:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/talk/models/RecentTalkModel;

    .line 6
    invoke-virtual {p1, v2}, Lcom/ifengyu/talk/models/RecentTalkModel;->setTalkType(I)V

    .line 7
    invoke-direct {p0}, Lcom/ifengyu/talk/f/e0;->H()V

    .line 8
    invoke-static {}, Lcom/ifengyu/talk/database/TalkDatabase;->D()Lcom/ifengyu/talk/database/TalkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/database/TalkDatabase;->F()Lcom/ifengyu/talk/database/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ifengyu/talk/database/a/c;->d(Lcom/ifengyu/talk/models/RecentTalkModel;)Ljava/lang/Long;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupEvent;->getTargetGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getType()I

    move-result v0

    sget v3, Lcom/shanlitech/et/model/Group;->GROUP_NORMAL:I

    if-eq v0, v3, :cond_1

    return-void

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupEvent;->getTargetGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupEvent;->getType()Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    move-result-object v3

    sget-object v4, Lcom/shanlitech/et/notice/event/GroupEvent$EventType;->CURRENT:Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    if-ne v3, v4, :cond_3

    .line 12
    iget-object v3, p0, Lcom/ifengyu/talk/f/e0;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/ifengyu/talk/f/e0;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ifengyu/talk/models/RecentTalkModel;

    invoke-virtual {v3}, Lcom/ifengyu/talk/models/RecentTalkModel;->getTalkType()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 13
    iget-object v3, p0, Lcom/ifengyu/talk/f/e0;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ifengyu/talk/models/RecentTalkModel;

    invoke-virtual {v3, v2}, Lcom/ifengyu/talk/models/RecentTalkModel;->setTalkType(I)V

    .line 14
    :cond_2
    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/ifengyu/talk/f/e0;->d(J)Lcom/ifengyu/talk/models/RecentTalkModel;

    move-result-object v2

    .line 15
    invoke-direct {p0, v2, v0}, Lcom/ifengyu/talk/f/e0;->M(Lcom/ifengyu/talk/models/RecentTalkModel;Lcom/shanlitech/et/model/Group;)V

    .line 16
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/BaseEvent;->getEvenTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/ifengyu/talk/models/RecentTalkModel;->setUpdateTime(J)V

    .line 17
    invoke-virtual {v2, v1}, Lcom/ifengyu/talk/models/RecentTalkModel;->setTalkType(I)V

    .line 18
    invoke-direct {p0}, Lcom/ifengyu/talk/f/e0;->H()V

    .line 19
    invoke-static {}, Lcom/ifengyu/talk/database/TalkDatabase;->D()Lcom/ifengyu/talk/database/TalkDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/database/TalkDatabase;->F()Lcom/ifengyu/talk/database/a/c;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/ifengyu/talk/database/a/c;->d(Lcom/ifengyu/talk/models/RecentTalkModel;)Ljava/lang/Long;

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupEvent;->getType()Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/shanlitech/et/notice/event/GroupEvent$EventType;->ADD:Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/GroupEvent;->getType()Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    sget-object p1, Lcom/shanlitech/et/notice/event/GroupEvent$EventType;->LEAVE:Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    :cond_5
    :goto_0
    return-void
.end method

.method public onMemberListEvent(Lcom/shanlitech/et/model/MemberList;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/e0;->e:Ljava/lang/String;

    const-string v1, "onMemberListEvent"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/model/MemberList;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/MemberList;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getType()I

    move-result v0

    sget v1, Lcom/shanlitech/et/model/Group;->GROUP_NORMAL:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/talk/f/e0;->c:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/shanlitech/et/model/MemberList;->getGid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/talk/models/RecentTalkModel;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/shanlitech/et/model/MemberList;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/talk/f/e0;->M(Lcom/ifengyu/talk/models/RecentTalkModel;Lcom/shanlitech/et/model/Group;)V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/talk/f/e0;->H()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSpeakEvent(Lcom/shanlitech/et/notice/event/SpeakEvent;)V
    .locals 7
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
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->getType()I

    move-result v0

    sget v1, Lcom/shanlitech/et/model/Group;->GROUP_NORMAL:I

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getGID()J

    move-result-wide v0

    .line 3
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getSpeakType()Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    move-result-object v2

    sget-object v3, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;->MEMBER_STARTED:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    if-ne v2, v3, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shanlitech/et/model/Group;->isCurrentGroup()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5
    iput-object p1, p0, Lcom/ifengyu/talk/f/e0;->d:Lcom/shanlitech/et/notice/event/SpeakEvent;

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/ifengyu/talk/f/e0;->d(J)Lcom/ifengyu/talk/models/RecentTalkModel;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/talk/f/e0;->M(Lcom/ifengyu/talk/models/RecentTalkModel;Lcom/shanlitech/et/model/Group;)V

    .line 8
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/BaseEvent;->getEvenTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/talk/models/RecentTalkModel;->setUpdateTime(J)V

    .line 9
    new-instance v1, Lcom/ifengyu/talk/models/HistoryMsgModel;

    invoke-direct {v1}, Lcom/ifengyu/talk/models/HistoryMsgModel;-><init>()V

    const v2, 0xf69b5

    .line 10
    invoke-virtual {v1, v2}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setMsgType(I)V

    .line 11
    new-instance v2, Lcom/ifengyu/talk/message/msgBody/SpeechActionBody;

    invoke-direct {v2}, Lcom/ifengyu/talk/message/msgBody/SpeechActionBody;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getUID()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/ifengyu/talk/message/msgBody/SpeechActionBody;->setUid(J)V

    .line 13
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getMember()Lcom/shanlitech/et/model/Member;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/talk/d;->h(Lcom/shanlitech/et/model/Member;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ifengyu/talk/message/msgBody/SpeechActionBody;->setName(Ljava/lang/String;)V

    .line 14
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setBody(Ljava/lang/String;)V

    .line 15
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/talk/models/RecentTalkModel;->setLastMsgJsonStr(Ljava/lang/String;)V

    .line 16
    invoke-static {v1}, Lcom/ifengyu/talk/d;->x(Lcom/ifengyu/talk/models/HistoryMsgModel;)Lcom/ifengyu/talk/models/HistoryMsgModel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/talk/models/RecentTalkModel;->setLastMsgModel(Lcom/ifengyu/talk/models/HistoryMsgModel;)V

    .line 17
    invoke-direct {p0}, Lcom/ifengyu/talk/f/e0;->H()V

    goto/16 :goto_0

    .line 18
    :cond_1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getSpeakType()Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    move-result-object v2

    sget-object v3, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;->MEMBER_STOPED:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3

    .line 19
    iput-object v4, p0, Lcom/ifengyu/talk/f/e0;->d:Lcom/shanlitech/et/notice/event/SpeakEvent;

    .line 20
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 21
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Group;->isCurrentGroup()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 22
    sget-object p1, Lcom/ifengyu/talk/f/w;->a:Lcom/ifengyu/talk/f/w;

    invoke-static {p1}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 23
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v2, Lcom/ifengyu/talk/f/r;

    invoke-direct {v2, p0, v0, v1}, Lcom/ifengyu/talk/f/r;-><init>(Lcom/ifengyu/talk/f/e0;J)V

    sget-object v0, Lcom/ifengyu/talk/f/z;->a:Lcom/ifengyu/talk/f/z;

    .line 24
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 25
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/ifengyu/talk/f/e0;->d(J)Lcom/ifengyu/talk/models/RecentTalkModel;

    move-result-object v0

    .line 26
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/talk/f/e0;->M(Lcom/ifengyu/talk/models/RecentTalkModel;Lcom/shanlitech/et/model/Group;)V

    .line 27
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/BaseEvent;->getEvenTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/talk/models/RecentTalkModel;->setUpdateTime(J)V

    .line 28
    new-instance v1, Lcom/ifengyu/talk/models/HistoryMsgModel;

    invoke-direct {v1}, Lcom/ifengyu/talk/models/HistoryMsgModel;-><init>()V

    const v2, 0xf69b6

    .line 29
    invoke-virtual {v1, v2}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setMsgType(I)V

    .line 30
    new-instance v2, Lcom/ifengyu/talk/message/msgBody/SpeechActionBody;

    invoke-direct {v2}, Lcom/ifengyu/talk/message/msgBody/SpeechActionBody;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getUID()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/ifengyu/talk/message/msgBody/SpeechActionBody;->setUid(J)V

    .line 32
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getMember()Lcom/shanlitech/et/model/Member;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/talk/d;->h(Lcom/shanlitech/et/model/Member;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ifengyu/talk/message/msgBody/SpeechActionBody;->setName(Ljava/lang/String;)V

    .line 33
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->setBody(Ljava/lang/String;)V

    .line 34
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/talk/models/RecentTalkModel;->setLastMsgJsonStr(Ljava/lang/String;)V

    .line 35
    invoke-static {v1}, Lcom/ifengyu/talk/d;->x(Lcom/ifengyu/talk/models/HistoryMsgModel;)Lcom/ifengyu/talk/models/HistoryMsgModel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/talk/models/RecentTalkModel;->setLastMsgModel(Lcom/ifengyu/talk/models/HistoryMsgModel;)V

    .line 36
    invoke-static {}, Lcom/ifengyu/talk/database/TalkDatabase;->D()Lcom/ifengyu/talk/database/TalkDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/talk/database/TalkDatabase;->F()Lcom/ifengyu/talk/database/a/c;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/ifengyu/talk/database/a/c;->d(Lcom/ifengyu/talk/models/RecentTalkModel;)Ljava/lang/Long;

    .line 37
    invoke-direct {p0}, Lcom/ifengyu/talk/f/e0;->H()V

    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getSpeakType()Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    move-result-object p1

    sget-object v0, Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;->STOPED:Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    if-ne p1, v0, :cond_4

    .line 39
    iput-object v4, p0, Lcom/ifengyu/talk/f/e0;->d:Lcom/shanlitech/et/notice/event/SpeakEvent;

    :cond_4
    :goto_0
    return-void
.end method

.method public onlineStatusChangeEvent(Lcom/shanlitech/et/notice/event/OnlineStatusEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/talk/f/e0;->d:Lcom/shanlitech/et/notice/event/SpeakEvent;

    return-void
.end method

.method public synthetic q(Lcom/ifengyu/talk/models/HistoryMsgModel;Ljava/lang/String;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/talk/f/e0;->p(Lcom/ifengyu/talk/models/HistoryMsgModel;Ljava/lang/String;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lcom/ifengyu/talk/h/e;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/e0;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public synthetic s(Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/talk/f/e0;->r(Ljava/lang/Long;)V

    return-void
.end method

.method public synthetic w(JLcom/ifengyu/talk/models/HistoryMsgModel;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/talk/f/e0;->v(JLcom/ifengyu/talk/models/HistoryMsgModel;)V

    return-void
.end method

.method public synthetic y(Lcom/ifengyu/talk/http/entity/LastMsgForGroups;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/talk/f/e0;->x(Lcom/ifengyu/talk/http/entity/LastMsgForGroups;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
