.class public final synthetic Lcom/uber/autodispose/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/uber/autodispose/n;


# instance fields
.field public final synthetic a:Lio/reactivex/parallel/ParallelFlowable;

.field public final synthetic b:Lio/reactivex/CompletableSource;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/parallel/ParallelFlowable;Lio/reactivex/CompletableSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uber/autodispose/a;->a:Lio/reactivex/parallel/ParallelFlowable;

    iput-object p2, p0, Lcom/uber/autodispose/a;->b:Lio/reactivex/CompletableSource;

    return-void
.end method
