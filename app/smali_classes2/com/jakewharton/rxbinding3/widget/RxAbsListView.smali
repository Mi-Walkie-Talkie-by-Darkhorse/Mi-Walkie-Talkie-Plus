.class public final Lcom/jakewharton/rxbinding3/widget/RxAbsListView;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "com/jakewharton/rxbinding3/widget/RxAbsListView__AbsListViewScrollEventObservableKt"
    }
    k = 0x4
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# direct methods
.method public static final scrollEvents(Landroid/widget/AbsListView;)Lio/reactivex/Observable;
    .locals 0
    .param p0    # Landroid/widget/AbsListView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AbsListView;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/jakewharton/rxbinding3/widget/AbsListViewScrollEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/jakewharton/rxbinding3/widget/RxAbsListView__AbsListViewScrollEventObservableKt;->scrollEvents(Landroid/widget/AbsListView;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
