.class Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl;
.super Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;
.source "SearchViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SearchViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchViewCompatIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public newSearchView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/widget/SearchViewCompatIcs;->newSearchView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setImeOptions(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl;->checkIfLegalArg(Landroid/view/View;)V

    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatIcs;->setImeOptions(Landroid/view/View;I)V

    return-void
.end method

.method public setInputType(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatIcsImpl;->checkIfLegalArg(Landroid/view/View;)V

    invoke-static {p1, p2}, Landroid/support/v4/widget/SearchViewCompatIcs;->setInputType(Landroid/view/View;I)V

    return-void
.end method
