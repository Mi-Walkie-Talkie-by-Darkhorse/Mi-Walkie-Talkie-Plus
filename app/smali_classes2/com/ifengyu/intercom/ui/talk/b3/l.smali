.class public Lcom/ifengyu/intercom/ui/talk/b3/l;
.super Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;
.source "TalkMessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter<",
        "Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/ifengyu/intercom/ui/talk/c3/j0;Ljava/util/List;)V
    .locals 0
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/ifengyu/intercom/ui/talk/c3/j0;",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;-><init>(Ljava/util/List;)V

    .line 2
    new-instance p3, Lcom/ifengyu/intercom/ui/talk/b3/n/l;

    invoke-direct {p3, p1}, Lcom/ifengyu/intercom/ui/talk/b3/n/l;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->r0(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 3
    new-instance p3, Lcom/ifengyu/intercom/ui/talk/b3/n/k;

    invoke-direct {p3, p1, p2}, Lcom/ifengyu/intercom/ui/talk/b3/n/k;-><init>(Landroidx/fragment/app/Fragment;Lcom/ifengyu/intercom/ui/talk/c3/j0;)V

    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->r0(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 4
    new-instance p1, Lcom/ifengyu/intercom/ui/talk/b3/n/j;

    invoke-direct {p1}, Lcom/ifengyu/intercom/ui/talk/b3/n/j;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->r0(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 5
    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/i;->g([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f090285
        0x7f090282
        0x7f090274
    .end array-data
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
            "Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;",
            ">;I)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/TalkMessagesAdapterMultipleEntity;->getType()I

    move-result p1

    return p1
.end method
