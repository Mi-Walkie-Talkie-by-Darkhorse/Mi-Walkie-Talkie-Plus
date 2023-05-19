.class public Lcom/ifengyu/talk/f/d0;
.super Ljava/lang/Object;
.source "MediaHelper.java"


# static fields
.field private static final b:Ljava/lang/String; = "d0"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ifengyu/talk/h/d;",
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

    iput-object p1, p0, Lcom/ifengyu/talk/f/d0;->a:Ljava/util/Set;

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->r(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/ifengyu/talk/h/d;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/d0;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onHistoryAudioPlayEvent(Lcom/shanlitech/et/notice/event/HistoryAudioPlayEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/d0;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHistoryAudioPlayEvent :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/HistoryAudioPlayEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/HistoryAudioPlayEvent;->getStatus()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/talk/f/d0;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/d;

    .line 4
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/HistoryAudioPlayEvent;->getSID()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/ifengyu/talk/h/d;->i(J)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/HistoryAudioPlayEvent;->getStatus()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ifengyu/talk/f/d0;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/d;

    .line 7
    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/HistoryAudioPlayEvent;->getSID()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/ifengyu/talk/h/d;->e(J)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onSpeakEvent(Lcom/shanlitech/et/notice/event/SpeakEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/talk/f/d0;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSpeakEvent :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/ifengyu/talk/f/d0$a;->a:[I

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/SpeakEvent;->getSpeakType()Lcom/shanlitech/et/notice/event/SpeakEvent$SpeakType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    .line 3
    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/talk/f/d0;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/d;

    .line 4
    invoke-interface {v1, p1}, Lcom/ifengyu/talk/h/d;->h(Lcom/shanlitech/et/notice/event/SpeakEvent;)V

    goto :goto_0

    .line 5
    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/talk/f/d0;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/d;

    .line 6
    invoke-interface {v1, p1}, Lcom/ifengyu/talk/h/d;->a(Lcom/shanlitech/et/notice/event/SpeakEvent;)V

    goto :goto_1

    .line 7
    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/talk/f/d0;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/d;

    .line 8
    invoke-interface {v1, p1}, Lcom/ifengyu/talk/h/d;->c(Lcom/shanlitech/et/notice/event/SpeakEvent;)V

    goto :goto_2

    .line 9
    :pswitch_3
    iget-object v0, p0, Lcom/ifengyu/talk/f/d0;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/d;

    .line 10
    invoke-interface {v1, p1}, Lcom/ifengyu/talk/h/d;->d(Lcom/shanlitech/et/notice/event/SpeakEvent;)V

    goto :goto_3

    .line 11
    :pswitch_4
    iget-object v0, p0, Lcom/ifengyu/talk/f/d0;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/d;

    .line 12
    invoke-interface {v1, p1}, Lcom/ifengyu/talk/h/d;->m(Lcom/shanlitech/et/notice/event/SpeakEvent;)V

    goto :goto_4

    .line 13
    :pswitch_5
    iget-object v0, p0, Lcom/ifengyu/talk/f/d0;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/d;

    .line 14
    invoke-interface {v1, p1}, Lcom/ifengyu/talk/h/d;->f(Lcom/shanlitech/et/notice/event/SpeakEvent;)V

    goto :goto_5

    .line 15
    :pswitch_6
    iget-object v0, p0, Lcom/ifengyu/talk/f/d0;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/talk/h/d;

    .line 16
    invoke-interface {v1, p1}, Lcom/ifengyu/talk/h/d;->l(Lcom/shanlitech/et/notice/event/SpeakEvent;)V

    goto :goto_6

    :cond_0
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeListener(Lcom/ifengyu/talk/h/d;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/ifengyu/talk/f/d0;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
