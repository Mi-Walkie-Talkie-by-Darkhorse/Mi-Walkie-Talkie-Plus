.class Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$a;
.super Ljava/lang/Object;

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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$a;->a:Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$a;->a:Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;->a(Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$a;->a:Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;

    const v0, 0x7f110191

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;->a(Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$a;->a:Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;

    const v0, 0x7f110192

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;->b(Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment;I)V

    invoke-static {}, Lcom/ifengyu/intercom/lite/utils/j;->a()Lcom/ifengyu/intercom/lite/utils/j;

    move-result-object p1

    sget-object v0, Lcom/ifengyu/intercom/lite/event/LiteEvent;->a:Lcom/ifengyu/intercom/lite/event/LiteEvent;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/lite/utils/j;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/lite/fragment/ConfigFileDetailFragment$a;->a(Ljava/lang/String;)V

    return-void
.end method
