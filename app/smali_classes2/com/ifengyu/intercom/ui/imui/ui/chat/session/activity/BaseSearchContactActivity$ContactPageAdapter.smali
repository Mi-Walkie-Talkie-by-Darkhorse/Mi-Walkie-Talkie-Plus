.class Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$ContactPageAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "BaseSearchContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactPageAdapter"
.end annotation


# instance fields
.field private fragments:[Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;

.field final synthetic this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;Landroid/support/v4/app/FragmentManager;[Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$ContactPageAdapter;->this$0:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$ContactPageAdapter;->fragments:[Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$ContactPageAdapter;->fragments:[Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity$ContactPageAdapter;->fragments:[Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/BaseSearchContactActivity;->access$300()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method
