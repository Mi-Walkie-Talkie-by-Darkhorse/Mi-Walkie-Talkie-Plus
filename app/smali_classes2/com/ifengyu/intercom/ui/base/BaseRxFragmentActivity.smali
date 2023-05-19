.class public abstract Lcom/ifengyu/intercom/ui/base/BaseRxFragmentActivity;
.super Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;
.source "BaseRxFragmentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final x(Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/d;
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
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uber/autodispose/android/lifecycle/b;->e(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/android/lifecycle/b;

    move-result-object p1

    invoke-static {p1}, Lcom/uber/autodispose/c;->a(Lcom/uber/autodispose/o;)Lcom/uber/autodispose/d;

    move-result-object p1

    return-object p1
.end method
