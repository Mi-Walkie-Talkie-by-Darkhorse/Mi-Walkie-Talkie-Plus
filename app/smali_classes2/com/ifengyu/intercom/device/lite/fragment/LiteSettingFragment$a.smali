.class Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment$a;
.super Ljava/lang/Object;
.source "LiteSettingFragment.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->p3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/ifengyu/intercom/device/lite/event/LiteEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment$a;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/device/lite/event/LiteEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/lite/event/LiteEvent;->UPGRADE_SUCCESS:Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment$a;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0019

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment$a;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->mItemUpdate:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/device/lite/event/LiteEvent;->HAVE_NEW_UPDATE:Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment$a;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0018

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment$a;->a:Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment;->mItemUpdate:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/device/lite/event/LiteEvent;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/lite/fragment/LiteSettingFragment$a;->a(Lcom/ifengyu/intercom/device/lite/event/LiteEvent;)V

    return-void
.end method
