.class Lcom/afollestad/materialdialogs/a$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DefaultRvAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afollestad/materialdialogs/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/widget/CompoundButton;

.field final b:Landroid/widget/TextView;

.field final c:Lcom/afollestad/materialdialogs/a;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/afollestad/materialdialogs/a;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/afollestad/materialdialogs/R$id;->md_control:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/a$a;->a:Landroid/widget/CompoundButton;

    sget v0, Lcom/afollestad/materialdialogs/R$id;->md_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/a$a;->b:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/afollestad/materialdialogs/a$a;->c:Lcom/afollestad/materialdialogs/a;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p2}, Lcom/afollestad/materialdialogs/a;->a(Lcom/afollestad/materialdialogs/a;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->F:Lcom/afollestad/materialdialogs/MaterialDialog$g;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/afollestad/materialdialogs/a$a;->c:Lcom/afollestad/materialdialogs/a;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/a;->b(Lcom/afollestad/materialdialogs/a;)Lcom/afollestad/materialdialogs/a$b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/a$a;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/a$a;->c:Lcom/afollestad/materialdialogs/a;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/a;->a(Lcom/afollestad/materialdialogs/a;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/a$a;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/afollestad/materialdialogs/a$a;->c:Lcom/afollestad/materialdialogs/a;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/a;->a(Lcom/afollestad/materialdialogs/a;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/a$a;->c:Lcom/afollestad/materialdialogs/a;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/a;->a(Lcom/afollestad/materialdialogs/a;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->l:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/a$a;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    move-object v4, v0

    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/a$a;->c:Lcom/afollestad/materialdialogs/a;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/a;->b(Lcom/afollestad/materialdialogs/a;)Lcom/afollestad/materialdialogs/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/afollestad/materialdialogs/a$a;->c:Lcom/afollestad/materialdialogs/a;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/a;->a(Lcom/afollestad/materialdialogs/a;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/a$a;->getAdapterPosition()I

    move-result v3

    const/4 v5, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/afollestad/materialdialogs/a$b;->a(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;Z)Z

    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    iget-object v0, p0, Lcom/afollestad/materialdialogs/a$a;->c:Lcom/afollestad/materialdialogs/a;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/a;->b(Lcom/afollestad/materialdialogs/a;)Lcom/afollestad/materialdialogs/a$b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/a$a;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/a$a;->c:Lcom/afollestad/materialdialogs/a;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/a;->a(Lcom/afollestad/materialdialogs/a;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/a$a;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/afollestad/materialdialogs/a$a;->c:Lcom/afollestad/materialdialogs/a;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/a;->a(Lcom/afollestad/materialdialogs/a;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$a;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/a$a;->c:Lcom/afollestad/materialdialogs/a;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/a;->a(Lcom/afollestad/materialdialogs/a;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->l:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/a$a;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    move-object v4, v0

    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/a$a;->c:Lcom/afollestad/materialdialogs/a;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/a;->b(Lcom/afollestad/materialdialogs/a;)Lcom/afollestad/materialdialogs/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/afollestad/materialdialogs/a$a;->c:Lcom/afollestad/materialdialogs/a;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/a;->a(Lcom/afollestad/materialdialogs/a;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/a$a;->getAdapterPosition()I

    move-result v3

    const/4 v5, 0x1

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/afollestad/materialdialogs/a$b;->a(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
