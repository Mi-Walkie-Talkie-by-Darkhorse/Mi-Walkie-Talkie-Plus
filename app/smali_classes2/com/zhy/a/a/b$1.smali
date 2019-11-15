.class Lcom/zhy/a/a/b$1;
.super Ljava/lang/Object;
.source "MultiItemTypeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhy/a/a/b;->a(Landroid/view/ViewGroup;Lcom/zhy/a/a/a/c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zhy/a/a/a/c;

.field final synthetic b:Lcom/zhy/a/a/b;


# direct methods
.method constructor <init>(Lcom/zhy/a/a/b;Lcom/zhy/a/a/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/zhy/a/a/b$1;->b:Lcom/zhy/a/a/b;

    iput-object p2, p0, Lcom/zhy/a/a/b$1;->a:Lcom/zhy/a/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/zhy/a/a/b$1;->b:Lcom/zhy/a/a/b;

    iget-object v0, v0, Lcom/zhy/a/a/b;->i:Lcom/zhy/a/a/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhy/a/a/b$1;->a:Lcom/zhy/a/a/a/c;

    invoke-virtual {v0}, Lcom/zhy/a/a/a/c;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/zhy/a/a/b$1;->b:Lcom/zhy/a/a/b;

    iget-object v1, v1, Lcom/zhy/a/a/b;->i:Lcom/zhy/a/a/b$a;

    iget-object v2, p0, Lcom/zhy/a/a/b$1;->a:Lcom/zhy/a/a/a/c;

    invoke-interface {v1, p1, v2, v0}, Lcom/zhy/a/a/b$a;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method
