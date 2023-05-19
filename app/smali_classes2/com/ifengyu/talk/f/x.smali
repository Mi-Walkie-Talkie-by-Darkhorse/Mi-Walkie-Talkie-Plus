.class public final synthetic Lcom/ifengyu/talk/f/x;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/talk/f/g0;

.field public final synthetic b:Lcom/shanlitech/et/notice/event/GroupSessionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/talk/f/g0;Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/talk/f/x;->a:Lcom/ifengyu/talk/f/g0;

    iput-object p2, p0, Lcom/ifengyu/talk/f/x;->b:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/talk/f/x;->a:Lcom/ifengyu/talk/f/g0;

    iget-object v1, p0, Lcom/ifengyu/talk/f/x;->b:Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/talk/f/g0;->i(Lcom/shanlitech/et/notice/event/GroupSessionEvent;Ljava/lang/Long;)V

    return-void
.end method
