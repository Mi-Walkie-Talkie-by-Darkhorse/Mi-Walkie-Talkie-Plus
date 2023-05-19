.class public final synthetic Lcom/ifengyu/intercom/ui/talk/c3/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/talk/c3/c0;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/talk/c3/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/c3/d;->a:Lcom/ifengyu/intercom/ui/talk/c3/c0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/c3/d;->a:Lcom/ifengyu/intercom/ui/talk/c3/c0;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/talk/c3/c0;->X()Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
