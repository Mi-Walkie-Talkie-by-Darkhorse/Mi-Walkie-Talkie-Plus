.class final synthetic Lcom/jakewharton/rxbinding3/widget/RxCompoundButton__CompoundButtonCheckedChangeObservableKt;
.super Ljava/lang/Object;
.source "CompoundButtonCheckedChangeObservable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0007\u00a8\u0006\u0004"
    }
    d2 = {
        "checkedChanges",
        "Lcom/jakewharton/rxbinding3/InitialValueObservable;",
        "",
        "Landroid/widget/CompoundButton;",
        "rxbinding_release"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0xb
    }
    xs = "com/jakewharton/rxbinding3/widget/RxCompoundButton"
.end annotation


# direct methods
.method public static final checkedChanges(Landroid/widget/CompoundButton;)Lcom/jakewharton/rxbinding3/InitialValueObservable;
    .locals 1
    .param p0    # Landroid/widget/CompoundButton;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/CompoundButton;",
            ")",
            "Lcom/jakewharton/rxbinding3/InitialValueObservable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/jakewharton/rxbinding3/widget/CompoundButtonCheckedChangeObservable;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding3/widget/CompoundButtonCheckedChangeObservable;-><init>(Landroid/widget/CompoundButton;)V

    return-object v0
.end method
