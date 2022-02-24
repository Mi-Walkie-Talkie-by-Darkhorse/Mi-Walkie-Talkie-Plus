.class Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$b;
.super Ljava/lang/Object;
.source "LiteSettingFragment.java"

# interfaces
.implements Landroidx/lifecycle/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/q<",
        "Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$b;->a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$b;->a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0020

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$b;->a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mItemUpdate:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$b;->a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0021

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$b;->a:Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment;->mItemUpdate:Lcom/ifengyu/library/widget/view/ItemView;

    invoke-virtual {v0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/fragment/LiteSettingFragment$b;->a(Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;)V

    return-void
.end method
