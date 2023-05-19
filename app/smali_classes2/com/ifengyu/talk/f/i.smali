.class public final synthetic Lcom/ifengyu/talk/f/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/ifengyu/talk/f/e0;

.field public final synthetic b:Lcom/ifengyu/talk/models/HistoryMsgModel;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/talk/f/e0;Lcom/ifengyu/talk/models/HistoryMsgModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/talk/f/i;->a:Lcom/ifengyu/talk/f/e0;

    iput-object p2, p0, Lcom/ifengyu/talk/f/i;->b:Lcom/ifengyu/talk/models/HistoryMsgModel;

    iput-object p3, p0, Lcom/ifengyu/talk/f/i;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/talk/f/i;->a:Lcom/ifengyu/talk/f/e0;

    iget-object v1, p0, Lcom/ifengyu/talk/f/i;->b:Lcom/ifengyu/talk/models/HistoryMsgModel;

    iget-object v2, p0, Lcom/ifengyu/talk/f/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/talk/f/e0;->q(Lcom/ifengyu/talk/models/HistoryMsgModel;Ljava/lang/String;)Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
