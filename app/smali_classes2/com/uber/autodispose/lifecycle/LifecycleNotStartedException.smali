.class public Lcom/uber/autodispose/lifecycle/LifecycleNotStartedException;
.super Lcom/uber/autodispose/OutsideScopeException;
.source "LifecycleNotStartedException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Lifecycle hasn\'t started!"

    .line 1
    invoke-direct {p0, v0}, Lcom/uber/autodispose/lifecycle/LifecycleNotStartedException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/uber/autodispose/OutsideScopeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
