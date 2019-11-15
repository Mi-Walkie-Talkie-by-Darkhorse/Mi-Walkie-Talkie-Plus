.class Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "OffMapAddressSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f100320

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;->b:Landroid/widget/TextView;

    const v0, 0x7f100321

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;->c:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;->c:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->d(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;->getAdapterPosition()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v4, "lat"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->d(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;->getAdapterPosition()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v4, "lng"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v3

    const-string v0, "locationArr"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->finish()V

    return-void
.end method
