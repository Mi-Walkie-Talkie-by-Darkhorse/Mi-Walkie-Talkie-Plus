.class final Lcom/jakewharton/rxbinding3/widget/ToolbarItemClickObservable$Listener;
.super Lio/reactivex/android/MainThreadDisposable;
.source "ToolbarItemClickObservable.kt"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding3/widget/ToolbarItemClickObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Listener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u000e\u0010\u000f\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00030\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nR\u0016\u0010\u000c\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u001e\u0010\u000f\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00030\u000e8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding3/widget/ToolbarItemClickObservable$Listener;",
        "Lio/reactivex/android/MainThreadDisposable;",
        "Landroid/widget/Toolbar$OnMenuItemClickListener;",
        "Landroid/view/MenuItem;",
        "item",
        "",
        "onMenuItemClick",
        "(Landroid/view/MenuItem;)Z",
        "Lkotlin/g;",
        "onDispose",
        "()V",
        "Landroid/widget/Toolbar;",
        "view",
        "Landroid/widget/Toolbar;",
        "Lio/reactivex/Observer;",
        "observer",
        "Lio/reactivex/Observer;",
        "<init>",
        "(Landroid/widget/Toolbar;Lio/reactivex/Observer;)V",
        "rxbinding_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final observer:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final view:Landroid/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroid/widget/Toolbar;Lio/reactivex/Observer;)V
    .locals 1
    .param p1    # Landroid/widget/Toolbar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Toolbar;",
            "Lio/reactivex/Observer<",
            "-",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lio/reactivex/android/MainThreadDisposable;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding3/widget/ToolbarItemClickObservable$Listener;->view:Landroid/widget/Toolbar;

    iput-object p2, p0, Lcom/jakewharton/rxbinding3/widget/ToolbarItemClickObservable$Listener;->observer:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method protected onDispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jakewharton/rxbinding3/widget/ToolbarItemClickObservable$Listener;->view:Landroid/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/reactivex/android/MainThreadDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jakewharton/rxbinding3/widget/ToolbarItemClickObservable$Listener;->observer:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method