.class final Lcom/jakewharton/rxbinding3/widget/AdapterViewItemSelectionObservable;
.super Lcom/jakewharton/rxbinding3/InitialValueObservable;
.source "AdapterViewItemSelectionObservable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxbinding3/widget/AdapterViewItemSelectionObservable$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding3/InitialValueObservable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0010B\u0013\u0012\n\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\n\u001a\u00020\u00028T@\u0014X\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\u000b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding3/widget/AdapterViewItemSelectionObservable;",
        "Lcom/jakewharton/rxbinding3/InitialValueObservable;",
        "",
        "Lio/reactivex/Observer;",
        "observer",
        "Lkotlin/g;",
        "subscribeListener",
        "(Lio/reactivex/Observer;)V",
        "getInitialValue",
        "()Ljava/lang/Integer;",
        "initialValue",
        "Landroid/widget/AdapterView;",
        "view",
        "Landroid/widget/AdapterView;",
        "<init>",
        "(Landroid/widget/AdapterView;)V",
        "Listener",
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
.field private final view:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;)V
    .locals 1
    .param p1    # Landroid/widget/AdapterView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/jakewharton/rxbinding3/InitialValueObservable;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding3/widget/AdapterViewItemSelectionObservable;->view:Landroid/widget/AdapterView;

    return-void
.end method


# virtual methods
.method protected getInitialValue()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/jakewharton/rxbinding3/widget/AdapterViewItemSelectionObservable;->view:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInitialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding3/widget/AdapterViewItemSelectionObservable;->getInitialValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected subscribeListener(Lio/reactivex/Observer;)V
    .locals 2
    .param p1    # Lio/reactivex/Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/jakewharton/rxbinding3/internal/Preconditions;->checkMainThread(Lio/reactivex/Observer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/jakewharton/rxbinding3/widget/AdapterViewItemSelectionObservable$Listener;

    iget-object v1, p0, Lcom/jakewharton/rxbinding3/widget/AdapterViewItemSelectionObservable;->view:Landroid/widget/AdapterView;

    invoke-direct {v0, v1, p1}, Lcom/jakewharton/rxbinding3/widget/AdapterViewItemSelectionObservable$Listener;-><init>(Landroid/widget/AdapterView;Lio/reactivex/Observer;)V

    .line 3
    iget-object v1, p0, Lcom/jakewharton/rxbinding3/widget/AdapterViewItemSelectionObservable;->view:Landroid/widget/AdapterView;

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 4
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
