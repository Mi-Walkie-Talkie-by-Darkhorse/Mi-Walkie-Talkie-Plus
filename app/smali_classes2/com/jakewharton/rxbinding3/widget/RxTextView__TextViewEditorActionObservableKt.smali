.class final synthetic Lcom/jakewharton/rxbinding3/widget/RxTextView__TextViewEditorActionObservableKt;
.super Ljava/lang/Object;
.source "TextViewEditorActionObservable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a/\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005*\u00020\u00002\u0014\u0008\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroid/widget/TextView;",
        "Lkotlin/Function1;",
        "",
        "",
        "handled",
        "Lio/reactivex/Observable;",
        "editorActions",
        "(Landroid/widget/TextView;Lkotlin/jvm/a/b;)Lio/reactivex/Observable;",
        "rxbinding_release"
    }
    k = 0x5
    mv = {
        0x1,
        0x4,
        0x0
    }
    xs = "com/jakewharton/rxbinding3/widget/RxTextView"
.end annotation


# direct methods
.method public static final editorActions(Landroid/widget/TextView;)Lio/reactivex/Observable;
    .locals 2
    .param p0    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/jakewharton/rxbinding3/widget/RxTextView;->editorActions$default(Landroid/widget/TextView;Lkotlin/jvm/a/b;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final editorActions(Landroid/widget/TextView;Lkotlin/jvm/a/b;)Lio/reactivex/Observable;
    .locals 1
    .param p0    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/a/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Lkotlin/jvm/a/b<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handled"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/jakewharton/rxbinding3/widget/TextViewEditorActionObservable;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding3/widget/TextViewEditorActionObservable;-><init>(Landroid/widget/TextView;Lkotlin/jvm/a/b;)V

    return-object v0
.end method

.method public static bridge synthetic editorActions$default(Landroid/widget/TextView;Lkotlin/jvm/a/b;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 1
    sget-object p1, Lcom/jakewharton/rxbinding3/internal/AlwaysTrue;->INSTANCE:Lcom/jakewharton/rxbinding3/internal/AlwaysTrue;

    :cond_0
    invoke-static {p0, p1}, Lcom/jakewharton/rxbinding3/widget/RxTextView;->editorActions(Landroid/widget/TextView;Lkotlin/jvm/a/b;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method