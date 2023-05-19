.class Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupManagerFragment$a;
.super Ljava/lang/Object;
.source "DeviceGroupManagerFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/l/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupManagerFragment;->i3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupManagerFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupManagerFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupManagerFragment$a;->b:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupManagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupManagerFragment$a;->a:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$y;I)V
    .locals 1

    .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    const v0, 0x7f080076

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupManagerFragment$a;->b:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupManagerFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupManagerFragment;->g3(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupManagerFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupManagerFragment$a;->a:I

    if-eq p1, p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupManagerFragment$a;->b:Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupManagerFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupManagerFragment;->h3(Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupManagerFragment;Z)Z

    :cond_0
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$y;ILandroidx/recyclerview/widget/RecyclerView$y;I)V
    .locals 0

    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$y;I)V
    .locals 1

    .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$y;->itemView:Landroid/view/View;

    const v0, 0x7f060028

    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2
    iput p2, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/DeviceGroupManagerFragment$a;->a:I

    return-void
.end method
