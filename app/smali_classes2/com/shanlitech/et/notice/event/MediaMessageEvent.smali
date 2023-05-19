.class public Lcom/shanlitech/et/notice/event/MediaMessageEvent;
.super Lcom/shanlitech/et/notice/event/BaseEvent;
.source "MediaMessageEvent.java"


# instance fields
.field private msg:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/notice/event/BaseEvent;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shanlitech/et/notice/event/MediaMessageEvent;->msg:Ljava/lang/String;

    return-void
.end method

.method public static post(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/shanlitech/et/notice/event/MediaMessageEvent;

    invoke-direct {v1, p0}, Lcom/shanlitech/et/notice/event/MediaMessageEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/notice/event/MediaMessageEvent;->msg:Ljava/lang/String;

    return-object v0
.end method
