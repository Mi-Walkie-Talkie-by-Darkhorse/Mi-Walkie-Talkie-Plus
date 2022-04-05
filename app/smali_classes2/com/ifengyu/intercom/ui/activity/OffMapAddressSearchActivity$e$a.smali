.class Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e$a;
.super Landroidx/recyclerview/widget/RecyclerView$y;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field final synthetic c:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e$a;->c:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$y;-><init>(Landroid/view/View;)V

    const p1, 0x7f09005a

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e$a;->a:Landroid/widget/TextView;

    const p1, 0x7f090059

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e$a;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e$a;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e$a;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e$a;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e$a;->b:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e$a;->c:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->d(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "lat"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e$a;->c:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->d(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$y;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "lng"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "locationArr"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e$a;->c:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e$a;->c:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$e;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
