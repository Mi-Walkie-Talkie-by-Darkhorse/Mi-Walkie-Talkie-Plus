.class public Lcom/ifengyu/intercom/ui/adapter/m$b;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SelectDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/adapter/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/support/v7/widget/AppCompatCheckBox;

.field final synthetic g:Lcom/ifengyu/intercom/ui/adapter/m;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/adapter/m;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/m$b;->g:Lcom/ifengyu/intercom/ui/adapter/m;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f1002b6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$b;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f1001c1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$b;->b:Landroid/widget/TextView;

    const v0, 0x7f1002b7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$b;->c:Landroid/widget/TextView;

    const v0, 0x7f1002b8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$b;->d:Landroid/widget/TextView;

    const v0, 0x7f1002b9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$b;->e:Landroid/widget/ImageView;

    const v0, 0x7f1002ba

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatCheckBox;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/m$b;->f:Landroid/support/v7/widget/AppCompatCheckBox;

    return-void
.end method
