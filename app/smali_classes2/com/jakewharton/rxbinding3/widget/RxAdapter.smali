.class public final Lcom/jakewharton/rxbinding3/widget/RxAdapter;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "com/jakewharton/rxbinding3/widget/RxAdapter__AdapterDataChangeObservableKt"
    }
    k = 0x4
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# direct methods
.method public static final dataChanges(Landroid/widget/Adapter;)Lcom/jakewharton/rxbinding3/InitialValueObservable;
    .locals 0
    .param p0    # Landroid/widget/Adapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/Adapter;",
            ">(TT;)",
            "Lcom/jakewharton/rxbinding3/InitialValueObservable<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/jakewharton/rxbinding3/widget/RxAdapter__AdapterDataChangeObservableKt;->dataChanges(Landroid/widget/Adapter;)Lcom/jakewharton/rxbinding3/InitialValueObservable;

    move-result-object p0

    return-object p0
.end method
