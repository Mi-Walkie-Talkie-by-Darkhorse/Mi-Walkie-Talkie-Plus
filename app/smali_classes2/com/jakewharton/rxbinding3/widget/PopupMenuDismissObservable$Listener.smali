.class final Lcom/jakewharton/rxbinding3/widget/PopupMenuDismissObservable$Listener;
.super Lio/reactivex/android/MainThreadDisposable;
.source "PopupMenuDismissObservable.kt"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding3/widget/PopupMenuDismissObservable;
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00050\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0016\u0010\n\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u001e\u0010\r\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00050\u000c8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding3/widget/PopupMenuDismissObservable$Listener;",
        "Lio/reactivex/android/MainThreadDisposable;",
        "Landroid/widget/PopupMenu$OnDismissListener;",
        "Landroid/widget/PopupMenu;",
        "popupMenu",
        "Lkotlin/g;",
        "onDismiss",
        "(Landroid/widget/PopupMenu;)V",
        "onDispose",
        "()V",
        "view",
        "Landroid/widget/PopupMenu;",
        "Lio/reactivex/Observer;",
        "observer",
        "Lio/reactivex/Observer;",
        "<init>",
        "(Landroid/widget/PopupMenu;Lio/reactivex/Observer;)V",
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
            "Lkotlin/g;",
            ">;"
        }
    .end annotation
.end field

.field private final view:Landroid/widget/PopupMenu;


# direct methods
.method public constructor <init>(Landroid/widget/PopupMenu;Lio/reactivex/Observer;)V
    .locals 1
    .param p1    # Landroid/widget/PopupMenu;
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
            "Landroid/widget/PopupMenu;",
            "Lio/reactivex/Observer<",
            "-",
            "Lkotlin/g;",
            ">;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lio/reactivex/android/MainThreadDisposable;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding3/widget/PopupMenuDismissObservable$Listener;->view:Landroid/widget/PopupMenu;

    iput-object p2, p0, Lcom/jakewharton/rxbinding3/widget/PopupMenuDismissObservable$Listener;->observer:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1
    .param p1    # Landroid/widget/PopupMenu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "popupMenu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lio/reactivex/android/MainThreadDisposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/jakewharton/rxbinding3/widget/PopupMenuDismissObservable$Listener;->observer:Lio/reactivex/Observer;

    sget-object v0, Lkotlin/g;->a:Lkotlin/g;

    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jakewharton/rxbinding3/widget/PopupMenuDismissObservable$Listener;->view:Landroid/widget/PopupMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    return-void
.end method
