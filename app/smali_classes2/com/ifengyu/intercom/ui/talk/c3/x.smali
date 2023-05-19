.class public final synthetic Lcom/ifengyu/intercom/ui/talk/c3/x;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/talk/c3/j0;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/talk/c3/j0;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/x;->a:Lcom/ifengyu/intercom/ui/talk/c3/j0;

    iput-wide p2, p0, Lcom/ifengyu/intercom/ui/talk/c3/x;->b:J

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/x;->a:Lcom/ifengyu/intercom/ui/talk/c3/j0;

    iget-wide v1, p0, Lcom/ifengyu/intercom/ui/talk/c3/x;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/talk/c3/j0;->X(J)Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
