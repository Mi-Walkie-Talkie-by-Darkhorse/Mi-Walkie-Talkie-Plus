.class Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$5;
.super Ljava/lang/Object;
.source "DolphinCustomFragment.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/o$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->i(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/UserChannel;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$5;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$5;->a:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$5;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/b/v;->a(Ljava/util/List;)I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$5;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    new-instance v2, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    const/4 v3, 0x2

    const v4, 0x7f09004d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v7, v0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/ifengyu/intercom/b/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>(IILjava/lang/String;I)V

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/setting/UserChannel;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$5;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->f(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$5;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$5;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->f(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->b(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$5;->a:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$5;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    new-instance v1, Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$5;->a:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b()I

    move-result v2

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$5;->a:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->c()I

    move-result v3

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$5;->a:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/ifengyu/intercom/ui/setting/UserChannel;-><init>(IILjava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/ui/setting/UserChannel;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$5;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->f(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$5;->a:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->b()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/UserChannel;->a(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$5;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment$5;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->f(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinCustomFragment;->c(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    :cond_0
    return-void
.end method
