.class Lcom/ifengyu/intercom/ui/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/MainActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/MainActivity$2;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity$2;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/MainActivity;->viewPager:Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/NoScrollViewPager;->setCurrentItem(IZ)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity$2;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/MainActivity;->a(Lcom/ifengyu/intercom/ui/MainActivity;I)V

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "map_tab_page"

    const-string v1, "mapTabClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "discovery_tab_page"

    const-string v1, "discoveryTabClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "my_tab_page"

    const-string v1, "myTabClick"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity$2;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/MainActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
