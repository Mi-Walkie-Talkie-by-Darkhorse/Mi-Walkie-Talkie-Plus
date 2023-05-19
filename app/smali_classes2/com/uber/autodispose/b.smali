.class public final synthetic Lcom/uber/autodispose/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/uber/autodispose/o;


# direct methods
.method public synthetic constructor <init>(Lcom/uber/autodispose/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uber/autodispose/b;->a:Lcom/uber/autodispose/o;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/uber/autodispose/b;->a:Lcom/uber/autodispose/o;

    invoke-static {v0}, Lcom/uber/autodispose/c;->c(Lcom/uber/autodispose/o;)Lio/reactivex/CompletableSource;

    move-result-object v0

    return-object v0
.end method
