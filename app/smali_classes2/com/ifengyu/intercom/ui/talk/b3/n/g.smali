.class public Lcom/ifengyu/intercom/ui/talk/b3/n/g;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "GroupDetailOperateRemoveProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseItemProvider<",
        "Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

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
    check-cast p2, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/talk/b3/n/g;->t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;)V

    return-void
.end method

.method public g()I
    .locals 1

    const/16 v0, 0x3eb

    return v0
.end method

.method public h()I
    .locals 1

    const v0, 0x7f0c00e5

    return v0
.end method

.method public t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const p2, 0x7f090275

    const v0, 0x7f080129

    .line 1
    invoke-virtual {p1, p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method
