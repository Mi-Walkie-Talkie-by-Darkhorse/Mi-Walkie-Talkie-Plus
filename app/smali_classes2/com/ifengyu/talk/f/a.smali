.class public final synthetic Lcom/ifengyu/talk/f/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/ifengyu/talk/f/b0;

.field public final synthetic b:Lcom/shanlitech/et/notice/event/ExternalMsgEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/talk/f/b0;Lcom/shanlitech/et/notice/event/ExternalMsgEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/talk/f/a;->a:Lcom/ifengyu/talk/f/b0;

    iput-object p2, p0, Lcom/ifengyu/talk/f/a;->b:Lcom/shanlitech/et/notice/event/ExternalMsgEvent;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/talk/f/a;->a:Lcom/ifengyu/talk/f/b0;

    iget-object v1, p0, Lcom/ifengyu/talk/f/a;->b:Lcom/shanlitech/et/notice/event/ExternalMsgEvent;

    invoke-virtual {v0, v1}, Lcom/ifengyu/talk/f/b0;->k(Lcom/shanlitech/et/notice/event/ExternalMsgEvent;)Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
