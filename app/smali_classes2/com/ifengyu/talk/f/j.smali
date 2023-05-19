.class public final synthetic Lcom/ifengyu/talk/f/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic a:Lcom/ifengyu/talk/f/e0;

.field public final synthetic b:Lcom/ifengyu/talk/models/RecentTalkModel;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/talk/f/e0;Lcom/ifengyu/talk/models/RecentTalkModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/talk/f/j;->a:Lcom/ifengyu/talk/f/e0;

    iput-object p2, p0, Lcom/ifengyu/talk/f/j;->b:Lcom/ifengyu/talk/models/RecentTalkModel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/talk/f/j;->a:Lcom/ifengyu/talk/f/e0;

    iget-object v1, p0, Lcom/ifengyu/talk/f/j;->b:Lcom/ifengyu/talk/models/RecentTalkModel;

    check-cast p1, Lcom/ifengyu/talk/models/RecentTalkModel;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/talk/f/e0;->h(Lcom/ifengyu/talk/models/RecentTalkModel;Lcom/ifengyu/talk/models/RecentTalkModel;)Lcom/ifengyu/talk/models/RecentTalkModel;

    return-object p1
.end method
