.class Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "OffMapAddressSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400f8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;

    invoke-direct {v1, p0, v0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;-><init>(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;I)V
    .locals 3

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;->a(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->d(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "name"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;->b(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->d(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "district"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;->d(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;->a(Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a;->a(Landroid/view/ViewGroup;I)Lcom/ifengyu/intercom/ui/activity/OffMapAddressSearchActivity$a$a;

    move-result-object v0

    return-object v0
.end method
