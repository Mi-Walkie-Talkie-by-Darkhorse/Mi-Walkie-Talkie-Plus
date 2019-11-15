.class Lcom/afollestad/materialdialogs/b;
.super Landroid/app/Dialog;
.source "DialogBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field protected a:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

.field private b:Landroid/content/DialogInterface$OnShowListener;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 0

    invoke-super {p0, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method final a(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/b;->a:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/b;->b:Landroid/content/DialogInterface$OnShowListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/b;->b:Landroid/content/DialogInterface$OnShowListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "setContentView() is not supported in MaterialDialog. Specify a custom view in the Builder instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "setContentView() is not supported in MaterialDialog. Specify a custom view in the Builder instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "setContentView() is not supported in MaterialDialog. Specify a custom view in the Builder instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 0

    iput-object p1, p0, Lcom/afollestad/materialdialogs/b;->b:Landroid/content/DialogInterface$OnShowListener;

    return-void
.end method
