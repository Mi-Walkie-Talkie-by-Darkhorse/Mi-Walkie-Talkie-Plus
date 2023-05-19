.class Lcom/ifengyu/intercom/ui/MainFragment$a;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/MainFragment;->j3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/MainFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/MainFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/MainFragment$a;->a:Lcom/ifengyu/intercom/ui/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainFragment$a;->a:Lcom/ifengyu/intercom/ui/MainFragment;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/ifengyu/intercom/ui/MainFragment;->g3(Lcom/ifengyu/intercom/ui/MainFragment;Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainFragment$a;->a:Lcom/ifengyu/intercom/ui/MainFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/MainFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainFragment$a;->a:Lcom/ifengyu/intercom/ui/MainFragment;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/ifengyu/intercom/ui/MainFragment;->g3(Lcom/ifengyu/intercom/ui/MainFragment;Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    return-void
.end method
