.class public Lcom/ifengyu/talk/f/b0;
.super Ljava/lang/Object;
.source "ExternalMsgHelper.java"


# static fields
.field private static final b:Ljava/lang/String; = "b0"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ifengyu/talk/h/b;",
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
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/talk/f/b0;->a:Ljava/util/Set;

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->r(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/b0;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getSid()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getGid()J

    move-result-wide v2

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getSpeechUrl()Ljava/lang/String;

    move-result-object p1

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

    invoke-direct {v3, p1, v2, v0}, Lcom/liulishuo/okdownload/DownloadTask$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {v3, p1}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->setAutoCallbackToUIThread(Z)Lcom/liulishuo/okdownload/DownloadTask$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->build()Lcom/liulishuo/okdownload/DownloadTask;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/talk/f/b0$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/talk/f/b0$b;-><init>(Lcom/ifengyu/talk/f/b0;)V

    .line 8
    invoke-virtual {p1, v0}, Lcom/liulishuo/okdownload/DownloadTask;->enqueue(Lcom/liulishuo/okdownload/DownloadListener;)V

    return-void
.end method

.method private c(Lcom/shanlitech/et/notice/event/ExternalMsgEvent;)Lcom/ifengyu/talk/models/HistoryMsgModel;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/ExternalMsgEvent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "quitgroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_1
    const-string v1, "jsdk-speechinfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_2
    const-string v1, "grouptrans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_3
    const-string v1, "entergrouptoken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_4
    const-string v1, "changegroupname"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_5
    const-string v1, "modentergrouptoken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_6
    const-string v1, "modentergroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_7
    const-string v1, "entergroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    :goto_0
    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_0

    move-object p1, v0

    goto/16 :goto_1

    .line 2
    :pswitch_0
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/ExternalMsgEvent;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/talk/d;->w(Ljava/lang/String;)Lcom/ifengyu/talk/models/HistoryMsgModel;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 3
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getBodyParse()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 4
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getBodyParse()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;

    .line 5
    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getGid()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_a

    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getSid()J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-lez v6, :cond_a

    .line 6
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/talk/d;->f()Lcom/ifengyu/talk/f/c0;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getGid()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/ifengyu/talk/f/c0;->c(J)Lcom/shanlitech/et/model/Group;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 7
    invoke-virtual {v2}, Lcom/shanlitech/et/model/Group;->getType()I

    move-result v2

    sget v3, Lcom/shanlitech/et/model/Group;->GROUP_NORMAL:I

    if-ne v2, v3, :cond_a

    .line 8
    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getSpeechUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 9
    invoke-direct {p0, v1}, Lcom/ifengyu/talk/f/b0;->b(Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;)V

    goto :goto_1

    .line 10
    :cond_8
    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getGid()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/ifengyu/talk/message/msgBody/SpeechInfoBody;->getSid()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/ifengyu/talk/f/b0;->p(JJ)V

    goto :goto_1

    .line 11
    :pswitch_1
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/ExternalMsgEvent;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/talk/d;->w(Ljava/lang/String;)Lcom/ifengyu/talk/models/HistoryMsgModel;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 12
    invoke-virtual {v1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getToWord()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 13
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/talk/d;->i()Lcom/ifengyu/talk/f/e0;

    move-result-object v2

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/ExternalMsgEvent;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lcom/ifengyu/talk/f/e0;->I(Lcom/ifengyu/talk/models/HistoryMsgModel;Ljava/lang/String;)V

    :cond_9
    move-object p1, v1

    :cond_a
    :goto_1
    if-eqz p1, :cond_c

    .line 14
    invoke-static {}, Lcom/ifengyu/talk/database/TalkDatabase;->D()Lcom/ifengyu/talk/database/TalkDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/talk/database/TalkDatabase;->C()Lcom/ifengyu/talk/database/a/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/talk/models/HistoryMsgModel;->getId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/ifengyu/talk/database/a/a;->b(J)Lcom/ifengyu/talk/models/HistoryMsgModel;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 15
    sget-object p1, Lcom/ifengyu/talk/f/b0;->b:Ljava/lang/String;

    const-string v1, "DB had saved this External Msg"

    invoke-static {p1, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 16
    :cond_b
    invoke-static {}, Lcom/ifengyu/talk/database/TalkDatabase;->D()Lcom/ifengyu/talk/database/TalkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/database/TalkDatabase;->C()Lcom/ifengyu/talk/database/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ifengyu/talk/database/a/a;->e(Lcom/ifengyu/talk/models/HistoryMsgModel;)Ljava/lang/Long;

    :cond_c
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x30578959 -> :sswitch_7
        -0x23313cd7 -> :sswitch_6
        0x1808870 -> :sswitch_5
        0x20932bda -> :sswitch_4
        0x38c153b2 -> :sswitch_3
        0x4d983389 -> :sswitch_2
        0x5e92d2ed -> :sswitch_1
        0x6a5fed90 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private d(Lcom/shanlitech/et/notice/event/ExternalMsgEvent;)Lcom/ifengyu/talk/models/OperatorMsgModel;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/ExternalMsgEvent;->getData()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/ifengyu/talk/models/OperatorMsgModel;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/talk/models/OperatorMsgModel;

    .line 2
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getOprName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getSuccList()[Lcom/ifengyu/talk/models/OperatorMsgUser;

    move-result-object v0

    const-string v1, "0"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getSuccList()[Lcom/ifengyu/talk/models/OperatorMsgUser;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_3

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getSuccList()[Lcom/ifengyu/talk/models/OperatorMsgUser;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 6
    invoke-virtual {v6}, Lcom/ifengyu/talk/models/OperatorMsgUser;->getAcc()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/ifengyu/talk/models/OperatorMsgUser;->getAcc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 7
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 8
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-array v3, v2, [Lcom/ifengyu/talk/models/OperatorMsgUser;

    .line 9
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/talk/models/OperatorMsgUser;

    invoke-virtual {p1, v0}, Lcom/ifengyu/talk/models/OperatorMsgModel;->setSuccList([Lcom/ifengyu/talk/models/OperatorMsgUser;)V

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getFailList()[Lcom/ifengyu/talk/models/OperatorMsgUser;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getFailList()[Lcom/ifengyu/talk/models/OperatorMsgUser;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_6

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/ifengyu/talk/models/OperatorMsgModel;->getFailList()[Lcom/ifengyu/talk/models/OperatorMsgUser;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    .line 13
    invoke-virtual {v6}, Lcom/ifengyu/talk/models/OperatorMsgUser;->getAcc()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lcom/ifengyu/talk/models/OperatorMsgUser;->getAcc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 14
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 15
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    new-array v1, v2, [Lcom/ifengyu/talk/models/OperatorMsgUser;

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/talk/models/OperatorMsgUser;

    invoke-virtual {p1, v0}, Lcom/ifengyu/talk/models/OperatorMsgModel;->setFailList([Lcom/ifengyu/talk/models/OperatorMsgUser;)V

    :cond_6
    return-object p1
.end method

.method private synthetic e(Lcom/shanlitech/et/notice/event/ExternalMsgEvent;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/talk/f/b0;->d(Lcom/shanlitech/et/notice/event/ExternalMsgEvent;)Lcom/ifengyu/talk/models/OperatorMsgModel;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/ifengyu/talk/models/OperatorMsgModel;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private synthetic g(Lcom/ifengyu/talk/models/OperatorMsgModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/b0;->b:Ljava/lang/String;

    const-string v1, "handleOperatorExternalMsg success"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/talk/f/b0;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/b;

    .line 3
    invoke-interface {v1, p1}, Lcom/ifengyu/talk/h/b;->K(Lcom/ifengyu/talk/models/OperatorMsgModel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic i(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/b0;->b:Ljava/lang/String;

    const-string v1, "handleOperatorExternalMsg fail"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private synthetic j(Lcom/shanlitech/et/notice/event/ExternalMsgEvent;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/talk/f/b0;->c(Lcom/shanlitech/et/notice/event/ExternalMsgEvent;)Lcom/ifengyu/talk/models/HistoryMsgModel;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/ifengyu/talk/models/HistoryMsgModel;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private synthetic l(Lcom/ifengyu/talk/models/HistoryMsgModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/b0;->b:Ljava/lang/String;

    const-string v1, "handleGroupHistoryExternalMsg success"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/talk/f/b0;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/b;

    .line 3
    invoke-interface {v1, p1}, Lcom/ifengyu/talk/h/b;->t(Lcom/ifengyu/talk/models/HistoryMsgModel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic n(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/b0;->b:Ljava/lang/String;

    const-string v1, "handleGroupHistoryExternalMsg fail"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic o(JJLcom/ifengyu/talk/http/entity/SpeechMsg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/b0;->b:Ljava/lang/String;

    const-string v1, "getSpeechMsg success"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p4}, Lcom/ifengyu/talk/http/entity/SpeechMsg;->getBody()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/ifengyu/library/utils/h;->b(Ljava/lang/String;)[B

    move-result-object p4

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ifengyu/talk/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p0, p1}, Lcom/ifengyu/library/utils/j;->j([BLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    return-void
.end method

.method private p(JJ)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/g/b;->a()Lcom/ifengyu/talk/g/a;

    move-result-object v0

    .line 2
    invoke-interface {v0, p3, p4}, Lcom/ifengyu/talk/g/a;->a(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/talk/f/g;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/ifengyu/talk/f/g;-><init>(JJ)V

    new-instance p1, Lcom/ifengyu/talk/f/b0$a;

    invoke-direct {p1, p0}, Lcom/ifengyu/talk/f/b0$a;-><init>(Lcom/ifengyu/talk/f/b0;)V

    .line 4
    invoke-virtual {v0, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/ifengyu/talk/h/b;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/b0;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public synthetic f(Lcom/shanlitech/et/notice/event/ExternalMsgEvent;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/talk/f/b0;->e(Lcom/shanlitech/et/notice/event/ExternalMsgEvent;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method

.method public synthetic h(Lcom/ifengyu/talk/models/OperatorMsgModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/talk/f/b0;->g(Lcom/ifengyu/talk/models/OperatorMsgModel;)V

    return-void
.end method

.method public synthetic k(Lcom/shanlitech/et/notice/event/ExternalMsgEvent;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/talk/f/b0;->j(Lcom/shanlitech/et/notice/event/ExternalMsgEvent;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method

.method public synthetic m(Lcom/ifengyu/talk/models/HistoryMsgModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/talk/f/b0;->l(Lcom/ifengyu/talk/models/HistoryMsgModel;)V

    return-void
.end method

.method public onExternalMsgEvent(Lcom/shanlitech/et/notice/event/ExternalMsgEvent;)V
    .locals 3
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
    sget-object v0, Lcom/ifengyu/talk/f/b0;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExternalMsgEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/ExternalMsgEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/ExternalMsgEvent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/ExternalMsgEvent;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/ExternalMsgEvent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "groupsession"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/ExternalMsgEvent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MODE_OPERATOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/ifengyu/talk/f/b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/talk/f/b;-><init>(Lcom/ifengyu/talk/f/b0;Lcom/shanlitech/et/notice/event/ExternalMsgEvent;)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/talk/f/e;

    invoke-direct {v0, p0}, Lcom/ifengyu/talk/f/e;-><init>(Lcom/ifengyu/talk/f/b0;)V

    sget-object v1, Lcom/ifengyu/talk/f/f;->a:Lcom/ifengyu/talk/f/f;

    .line 6
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Lcom/ifengyu/talk/f/a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/talk/f/a;-><init>(Lcom/ifengyu/talk/f/b0;Lcom/shanlitech/et/notice/event/ExternalMsgEvent;)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/ifengyu/library/b/c;->a()Lio/reactivex/ObservableTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/talk/f/c;

    invoke-direct {v0, p0}, Lcom/ifengyu/talk/f/c;-><init>(Lcom/ifengyu/talk/f/b0;)V

    sget-object v1, Lcom/ifengyu/talk/f/d;->a:Lcom/ifengyu/talk/f/d;

    .line 9
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_2
    :goto_0
    return-void
.end method

.method public onMessageEvent(Lcom/shanlitech/et/notice/event/MessageEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/b0;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/MessageEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/MessageEvent;->getCode()I

    move-result v0

    const/16 v1, -0xa

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/library/event/SimpleEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/ifengyu/library/event/SimpleEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/MessageEvent;->getCode()I

    move-result v0

    const/16 v1, -0x28

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/MessageEvent;->getCode()I

    move-result p1

    const/16 v0, -0x2d

    if-ne p1, v0, :cond_2

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/talk/f/b0;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/talk/h/b;

    .line 6
    invoke-interface {v0}, Lcom/ifengyu/talk/h/b;->b()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public removeListener(Lcom/ifengyu/talk/h/b;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/b0;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
