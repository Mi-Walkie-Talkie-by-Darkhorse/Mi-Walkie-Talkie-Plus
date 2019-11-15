.class public Lcom/ifengyu/intercom/ui/adapter/b$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BtEarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/adapter/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/ifengyu/intercom/ui/adapter/b;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/adapter/b;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/b$a;->c:Lcom/ifengyu/intercom/ui/adapter/b;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f10012d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/b$a;->a:Landroid/widget/TextView;

    const v0, 0x7f1002b0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/b$a;->b:Landroid/widget/ImageView;

    return-void
.end method
