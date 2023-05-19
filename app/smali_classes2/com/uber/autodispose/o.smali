.class public interface abstract Lcom/uber/autodispose/o;
.super Ljava/lang/Object;
.source "ScopeProvider.java"


# annotations
.annotation build Lcom/uber/autodispose/internal/DoNotMock;
    value = "Use TestScopeProvider instead"
.end annotation


# virtual methods
.method public abstract d()Lio/reactivex/CompletableSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation
.end method
