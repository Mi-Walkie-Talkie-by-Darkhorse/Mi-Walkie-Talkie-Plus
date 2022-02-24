.class Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$b;
.super Ljava/lang/Object;
.source "ConfigFileDetailFragment.java"

# interfaces
.implements Landroidx/lifecycle/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/q<",
        "Ljava/util/List<",
        "Lcom/ifengyu/intercom/lite/models/ChannelModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$b;->a:Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/lite/models/ChannelModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$b;->a:Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;->b(Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;)Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/base/recycler/c;->a(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$b;->a(Ljava/util/List;)V

    return-void
.end method
