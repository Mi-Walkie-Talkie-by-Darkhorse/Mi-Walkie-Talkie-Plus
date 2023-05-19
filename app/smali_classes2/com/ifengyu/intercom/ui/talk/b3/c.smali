.class public Lcom/ifengyu/intercom/ui/talk/b3/c;
.super Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;
.source "CreateCodeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter<",
        "Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;",
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
            "Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;-><init>(Ljava/util/List;)V

    .line 2
    new-instance p2, Lcom/ifengyu/intercom/ui/talk/b3/n/d;

    invoke-direct {p2, p1}, Lcom/ifengyu/intercom/ui/talk/b3/n/d;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->r0(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 3
    new-instance p1, Lcom/ifengyu/intercom/ui/talk/b3/n/c;

    invoke-direct {p1}, Lcom/ifengyu/intercom/ui/talk/b3/n/c;-><init>()V

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
            "Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;",
            ">;I)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/CreateCodeAdapterEntity;->getType()I

    move-result p1

    return p1
.end method
