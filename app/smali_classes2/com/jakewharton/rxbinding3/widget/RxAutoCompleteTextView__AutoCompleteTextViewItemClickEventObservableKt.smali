.class final synthetic Lcom/jakewharton/rxbinding3/widget/RxAutoCompleteTextView__AutoCompleteTextViewItemClickEventObservableKt;
.super Ljava/lang/Object;
.source "AutoCompleteTextViewItemClickEventObservable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0007\u00a8\u0006\u0004"
    }
    d2 = {
        "itemClickEvents",
        "Lio/reactivex/Observable;",
        "Lcom/jakewharton/rxbinding3/widget/AdapterViewItemClickEvent;",
        "Landroid/widget/AutoCompleteTextView;",
        "rxbinding_release"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0xb
    }
    xs = "com/jakewharton/rxbinding3/widget/RxAutoCompleteTextView"
.end annotation


# direct methods
.method public static final itemClickEvents(Landroid/widget/AutoCompleteTextView;)Lio/reactivex/Observable;
    .locals 1
    .param p0    # Landroid/widget/AutoCompleteTextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AutoCompleteTextView;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/jakewharton/rxbinding3/widget/AdapterViewItemClickEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/jakewharton/rxbinding3/widget/AutoCompleteTextViewItemClickEventObservable;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding3/widget/AutoCompleteTextViewItemClickEventObservable;-><init>(Landroid/widget/AutoCompleteTextView;)V

    return-object v0
.end method