.class Landroid/support/v4/widget/SearchViewCompatIcs;
.super Ljava/lang/Object;
.source "SearchViewCompatIcs.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SearchViewCompatIcs$MySearchView;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newSearchView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    new-instance v0, Landroid/support/v4/widget/SearchViewCompatIcs$MySearchView;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/SearchViewCompatIcs$MySearchView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static setImeOptions(Landroid/view/View;I)V
    .locals 0

    check-cast p0, Landroid/widget/SearchView;

    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setImeOptions(I)V

    return-void
.end method

.method public static setInputType(Landroid/view/View;I)V
    .locals 0

    check-cast p0, Landroid/widget/SearchView;

    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setInputType(I)V

    return-void
.end method
