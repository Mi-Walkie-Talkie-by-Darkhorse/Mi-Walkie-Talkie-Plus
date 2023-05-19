.class public Lcom/ifengyu/intercom/ui/talk/b3/h;
.super Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;
.source "GroupDetailMemberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter<",
        "Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/util/List;)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;-><init>(Ljava/util/List;)V

    .line 2
    new-instance p2, Lcom/ifengyu/intercom/ui/talk/b3/n/e;

    invoke-direct {p2, p1}, Lcom/ifengyu/intercom/ui/talk/b3/n/e;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->r0(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 3
    new-instance p1, Lcom/ifengyu/intercom/ui/talk/b3/n/f;

    invoke-direct {p1}, Lcom/ifengyu/intercom/ui/talk/b3/n/f;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->r0(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 4
    new-instance p1, Lcom/ifengyu/intercom/ui/talk/b3/n/g;

    invoke-direct {p1}, Lcom/ifengyu/intercom/ui/talk/b3/n/g;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->r0(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void
.end method


# virtual methods
.method protected z0(Ljava/util/List;I)I
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;",
            ">;I)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->getType()I

    move-result p1

    return p1
.end method
