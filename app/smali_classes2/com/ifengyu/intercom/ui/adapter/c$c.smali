.class Lcom/ifengyu/intercom/ui/adapter/c$c;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DiscoveryFragmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Lcom/jude/rollviewpager/RollPagerView;

.field final synthetic b:Lcom/ifengyu/intercom/ui/adapter/c;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/adapter/c;Landroid/view/View;)V
    .locals 5

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/adapter/c$c;->b:Lcom/ifengyu/intercom/ui/adapter/c;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f100325

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jude/rollviewpager/RollPagerView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$c;->a:Lcom/jude/rollviewpager/RollPagerView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$c;->a:Lcom/jude/rollviewpager/RollPagerView;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/jude/rollviewpager/RollPagerView;->setAnimationDurtion(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$c;->a:Lcom/jude/rollviewpager/RollPagerView;

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/view/MyColorPointHintView;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/adapter/c;->a(Lcom/ifengyu/intercom/ui/adapter/c;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "#FF0076FF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "#FFFFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/ifengyu/intercom/ui/widget/view/MyColorPointHintView;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1}, Lcom/jude/rollviewpager/RollPagerView;->setHintView(Lcom/jude/rollviewpager/a;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/adapter/c$c;->a:Lcom/jude/rollviewpager/RollPagerView;

    new-instance v1, Lcom/ifengyu/intercom/ui/adapter/c$c$1;

    invoke-direct {v1, p0, p1}, Lcom/ifengyu/intercom/ui/adapter/c$c$1;-><init>(Lcom/ifengyu/intercom/ui/adapter/c$c;Lcom/ifengyu/intercom/ui/adapter/c;)V

    invoke-virtual {v0, v1}, Lcom/jude/rollviewpager/RollPagerView;->setOnItemClickListener(Lcom/jude/rollviewpager/b;)V

    return-void
.end method
