.class Lcom/afollestad/materialdialogs/MaterialDialog$1;
.super Ljava/lang/Object;
.source "MaterialDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/MaterialDialog;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->r:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    sget-object v1, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->b:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->r:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    sget-object v1, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->c:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->r:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    sget-object v1, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->b:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->O:I

    if-gez v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->O:I

    :goto_2
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->g:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/afollestad/materialdialogs/MaterialDialog$1$1;

    invoke-direct {v2, p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$1$1;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog$1;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->s:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->s:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->s:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2
.end method
