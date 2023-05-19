.class public Lcom/ifengyu/intercom/ui/fragment/tab/j0/c;
.super Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;
.source "RecentTalkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter<",
        "Lcom/ifengyu/talk/models/RecentTalkModel;",
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
            "Lcom/ifengyu/talk/models/RecentTalkModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;-><init>(Ljava/util/List;)V

    .line 2
    new-instance p2, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/f;

    invoke-direct {p2, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/f;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->r0(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 3
    new-instance p2, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/g;

    invoke-direct {p2, p1}, Lcom/ifengyu/intercom/ui/fragment/tab/j0/d/g;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->r0(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

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
            "Lcom/ifengyu/talk/models/RecentTalkModel;",
            ">;I)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/talk/models/RecentTalkModel;

    invoke-virtual {p1}, Lcom/ifengyu/talk/models/RecentTalkModel;->getTalkType()I

    move-result p1

    return p1
.end method
