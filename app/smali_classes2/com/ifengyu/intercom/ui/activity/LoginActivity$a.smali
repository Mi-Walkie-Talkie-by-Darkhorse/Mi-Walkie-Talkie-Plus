.class Lcom/ifengyu/intercom/ui/activity/LoginActivity$a;
.super Landroid/support/v4/view/PagerAdapter;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/ui/activity/LoginActivity;Lcom/ifengyu/intercom/ui/activity/LoginActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/activity/LoginActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->k(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)[Landroid/view/View;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->k(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)[Landroid/view/View;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->k(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)[Landroid/view/View;

    move-result-object v0

    aget-object v0, v0, p2

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
