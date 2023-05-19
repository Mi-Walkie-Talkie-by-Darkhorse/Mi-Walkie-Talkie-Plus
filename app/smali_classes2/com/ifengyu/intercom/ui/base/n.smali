.class public abstract Lcom/ifengyu/intercom/ui/base/n;
.super Lcom/qmuiteam/qmui/arch/b;
.source "BaseRxFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final A2(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/Lifecycle$Event;",
            ")",
            "Lcom/uber/autodispose/d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/j;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uber/autodispose/android/lifecycle/b;->g(Landroidx/lifecycle/j;Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/android/lifecycle/b;

    move-result-object p1

    invoke-static {p1}, Lcom/uber/autodispose/c;->a(Lcom/uber/autodispose/o;)Lcom/uber/autodispose/d;

    move-result-object p1

    return-object p1
.end method
