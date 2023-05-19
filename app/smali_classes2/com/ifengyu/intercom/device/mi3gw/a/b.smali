.class public Lcom/ifengyu/intercom/device/mi3gw/a/b;
.super Lcom/chad/library/adapter/base/i;
.source "DeviceDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/i<",
        "Lcom/ifengyu/talk/http/entity/TempGroup;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private z:Lcom/ifengyu/library/widget/groupAdatar/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ifengyu/library/widget/groupAdatar/a<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;ILjava/util/List;)V
    .locals 0
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "I",
            "Ljava/util/List<",
            "Lcom/ifengyu/talk/http/entity/TempGroup;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/chad/library/adapter/base/i;-><init>(ILjava/util/List;)V

    .line 2
    new-instance p2, Lcom/ifengyu/library/widget/groupAdatar/a;

    invoke-direct {p2, p1}, Lcom/ifengyu/library/widget/groupAdatar/a;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/a/b;->z:Lcom/ifengyu/library/widget/groupAdatar/a;

    return-void
.end method


# virtual methods
.method protected r0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/talk/http/entity/TempGroup;)V
    .locals 6
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0901ee

    .line 1
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$y;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/i;->K()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/high16 v1, 0x41800000    # 16.0f

    .line 3
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v1

    const/4 v3, 0x3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setRadiusAndShadow(IIIF)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v2, v2, v1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;->setRadiusAndShadow(IIF)V

    :goto_0
    const v0, 0x7f0904e5

    .line 5
    invoke-static {p2}, Lcom/ifengyu/talk/d;->d(Lcom/ifengyu/talk/http/entity/TempGroup;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const v0, 0x7f0904c4

    const v1, 0x7f11034f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p2}, Lcom/ifengyu/talk/http/entity/TempGroup;->getUserCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/ifengyu/library/utils/s;->p(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const v0, 0x7f090333

    .line 7
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/a/b;->z:Lcom/ifengyu/library/widget/groupAdatar/a;

    invoke-virtual {p1, v0}, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->setAdapter(Lcom/ifengyu/library/widget/groupAdatar/a;)V

    .line 9
    invoke-static {p2}, Lcom/ifengyu/talk/d;->l(Lcom/ifengyu/talk/http/entity/TempGroup;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->setImagesData([Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic w(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lcom/ifengyu/talk/http/entity/TempGroup;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/device/mi3gw/a/b;->r0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/talk/http/entity/TempGroup;)V

    return-void
.end method
