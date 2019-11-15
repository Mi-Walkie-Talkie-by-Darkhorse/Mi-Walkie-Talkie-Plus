.class Lcom/afollestad/materialdialogs/MaterialDialog$1$1;
.super Ljava/lang/Object;
.source "MaterialDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/MaterialDialog$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/afollestad/materialdialogs/MaterialDialog$1;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/MaterialDialog$1;I)V
    .locals 0

    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1$1;->b:Lcom/afollestad/materialdialogs/MaterialDialog$1;

    iput p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1$1;->b:Lcom/afollestad/materialdialogs/MaterialDialog$1;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1$1;->b:Lcom/afollestad/materialdialogs/MaterialDialog$1;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->Y:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1$1;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    return-void
.end method
