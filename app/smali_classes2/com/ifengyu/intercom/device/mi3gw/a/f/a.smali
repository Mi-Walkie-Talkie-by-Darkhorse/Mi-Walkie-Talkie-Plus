.class public Lcom/ifengyu/intercom/device/mi3gw/a/f/a;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "DeviceGroupDetailMemberNormalProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseItemProvider<",
        "Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/a/f/a;->d:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/a/f/a;->t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;)V

    return-void
.end method

.method public g()I
    .locals 1

    const/16 v0, 0x3e9

    return v0
.end method

.method public h()I
    .locals 1

    const v0, 0x7f0c00e4

    return v0
.end method

.method public t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;)V
    .locals 4
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;->getMember()Lcom/ifengyu/talk/http/entity/TempMember;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/mi3gw/a/f/a;->d:Landroidx/fragment/app/Fragment;

    const v2, 0x7f090274

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/ifengyu/talk/http/entity/TempMember;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/ifengyu/library/c/a;->f(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/ifengyu/talk/http/entity/TempMember;->getNicknameIn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x7f0904e2

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/ifengyu/talk/http/entity/TempMember;->getNicknameIn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/talk/http/entity/TempMember;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :goto_0
    const v0, 0x7f090271

    .line 6
    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;->getMember()Lcom/ifengyu/talk/http/entity/TempMember;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ifengyu/talk/http/entity/TempMember;->getUserType()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method
